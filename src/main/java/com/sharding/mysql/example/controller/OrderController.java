package com.sharding.mysql.example.controller;

import com.sharding.mysql.example.entity.Order;
import com.sharding.mysql.example.service.OrderService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RestController;

import java.util.List;

@RestController
public class OrderController {

    @Autowired
    private OrderService orderService;


    /**
     * 功能描述： 查询用户的订单
     *
     * @param userId 用户信息
     * @return 返回查询结果
     */
    @PostMapping("queryMyOrder")
    public List<Order> queryMyOrder(Integer userId){
        return orderService.queryMyOrder(userId);
    }

    /**
     * 功能描述： 创建订单
     * @param order 订单信息
     * @return 返回创建结果
     */
    @PostMapping("createOrder")
    public Order createOrder(@RequestBody Order order){
        return orderService.createOrder(order);
    }

}
