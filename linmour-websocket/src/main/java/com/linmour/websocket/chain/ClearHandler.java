package com.linmour.websocket.chain;

import com.alibaba.fastjson.JSONObject;
import com.linmour.websocket.feign.OrderFeign;
import com.linmour.websocket.ws.AppWebSocketServer;
import org.apache.commons.lang3.StringUtils;

import java.io.IOException;
import java.util.List;
import java.util.concurrent.ConcurrentHashMap;

//处理前端订单已完成，把订单标志位置为false
public class ClearHandler extends Handler{

    @Override
    public void handleRequest(ConcurrentHashMap<String, List<AppWebSocketServer>> webSocketMap,
                              JSONObject jsonObject, ConcurrentHashMap<String,
                              List<JSONObject>> recordMap,
                              AppWebSocketServer webSocke,
                              OrderFeign orderFeign) throws IOException {
        if (jsonObject.containsKey("clear")) {
            if (StringUtils.isNotBlank(webSocke.getTableId()) && webSocketMap.containsKey(webSocke.getTableId())) {
                List<AppWebSocketServer> serverList = webSocketMap.get(webSocke.getTableId());
                //遍历所有对象，把订单都改为未提交，为了下一次点餐
                serverList.forEach(m -> m.getCreateOrder().set(false));

            }
        } else {
            // 无法处理，传递给下一个处理器
            if (nextHandler != null) {
                nextHandler.handleRequest(webSocketMap,jsonObject,recordMap,webSocke,orderFeign);
            }
        }
    }
}
