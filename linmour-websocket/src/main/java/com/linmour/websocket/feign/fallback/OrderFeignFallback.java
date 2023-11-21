package com.linmour.websocket.feign.fallback;

import com.linmour.order.pojo.Dto.CreateOrderDto;
import com.linmour.websocket.feign.OrderFeign;
import com.linmour.websocket.pojo.Result;

import java.util.concurrent.CompletableFuture;

public class OrderFeignFallback implements OrderFeign  {

    @Override
    public Result getOrderInfo(Long tableId) {
        return null;
    }

    @Override
    public CompletableFuture<Result> createOrder(CreateOrderDto createOrderDto) {
        return null;
    }
}
