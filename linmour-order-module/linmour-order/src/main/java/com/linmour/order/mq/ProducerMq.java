package com.linmour.order.mq;


import com.linmour.security.dtos.Result;
import org.apache.rocketmq.client.producer.SendResult;
import org.apache.rocketmq.client.producer.SendStatus;
import org.apache.rocketmq.spring.core.RocketMQTemplate;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.messaging.support.MessageBuilder;
import org.springframework.stereotype.Component;

import javax.annotation.Resource;
import java.util.Map;

import static com.linmour.security.constant.MqConstant.*;


@Component
public class ProducerMq {

    @Value("${rocketmq.producer.send-message-timeout}")
    private Integer messageTimeOut;

    // 直接注入使用，用于发送消息到broker服务器
    @Resource
    private RocketMQTemplate rocketMQTemplate;

    /**
     * 延时取消订单
     * 发送延时消息（上面的发送同步消息，delayLevel的值就为0，因为不延时）
     * 在start版本中 延时消息一共分为18个等级分别为：1s 5s 10s 30s 1m 2m 3m 4m 5m 6m 7m 8m 9m 10m 20m 30m 1h 2h
     */

    public Boolean orderPayTimeOut(String msgBody, int delayLevel){
                                                                                                                        // 超时时间    延时等级
        return isSuccess(rocketMQTemplate.syncSend(ORDER_PAY_TIMEOUT_TOPIC, MessageBuilder.withPayload(msgBody).build(),messageTimeOut,delayLevel));
    }



    /**
     * 发送同步消息（阻塞当前线程，等待broker响应发送结果，这样不太容易丢失消息）
     * （msgBody也可以是对象，sendResult为返回的发送结果）
     */
    public Boolean orderCreationCompleted(Result msgBody) {
        return isSuccess(rocketMQTemplate.syncSend(ORDER_CREATION_COMPLETED_TOPIC, MessageBuilder.withPayload(msgBody).build(),messageTimeOut));
    }


    public Boolean checkout(String msgBody) {
        return isSuccess(rocketMQTemplate.syncSend(CHECKOUT_TOPIC, MessageBuilder.withPayload(msgBody).build(),messageTimeOut));
    }

    public Boolean error(Map<String,Object> msgBody){
        return isSuccess(rocketMQTemplate.syncSend(ERROR_TOPIC,MessageBuilder.withPayload(msgBody).build(),messageTimeOut));
    }

    private static Boolean isSuccess(SendResult result) {
        if (result.getSendStatus() == SendStatus.SEND_OK) {
            // 消息发送成功的处理逻辑
            System.out.println("消息发送成功，消息ID: " + result.getMsgId());
            return true;
        } else {
            // 消息发送失败的处理逻辑
            System.out.println("消息发送失败，错误信息: " + result.getSendStatus().name());
            return false;
        }
    }

}
