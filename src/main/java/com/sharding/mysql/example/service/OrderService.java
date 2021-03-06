package com.sharding.mysql.example.service;

import com.github.pagehelper.PageHelper;
import com.sharding.mysql.example.dao.OrderDao;
import com.sharding.mysql.example.dao.OrderItemDao;
import com.sharding.mysql.example.entity.Order;
import com.sharding.mysql.example.entity.OrderItem;
import com.sharding.mysql.example.util.PageUtil;
import com.sharding.mysql.example.util.SnowflakeIdWorker;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.HashMap;
import java.util.List;
import java.util.Random;

/**
 * @author linzef
 * @since 2020-11-29
 * 类描述： 订单的service
 */
@Service
@Transactional(rollbackFor = {Exception.class})
public class OrderService {

    @Autowired
    private OrderDao orderDao;

    @Autowired
    private OrderItemDao orderItemDao;

    private Random random = new Random();

    /**
     * 功能描述： 查询用户的订单
     *
     * @param userId 用户信息
     * @return 返回查询结果
     */
    public List<Order> queryMyOrder(Integer userId) {
        PageHelper.startPage(2, 1, "t.order_id desc");
        HashMap<String, Object> res = PageUtil.getResult(orderDao.queryMyOrder(userId));
        return (List) res.get("rows");
    }

    /**
     * 功能描述： 创建订单
     *
     * @param order 订单信息
     * @return 返回创建结果
     */
    public Order createOrder(Order order) {
        Long userId = order.getUserId();
        Long userIdMod = userId % 4;
        SnowflakeIdWorker snowflakeIdWorker = new SnowflakeIdWorker(4, Integer.parseInt(userIdMod + ""), 1, 1);
        Long orderId = snowflakeIdWorker.nextId();
        order.setOrderId(orderId);
        orderDao.insertSelective(order);
        for (OrderItem orderItem : order.getOrderItemList()) {
            orderItem.setOrderId(order.getOrderId());
            orderItem.setOrderItemId(snowflakeIdWorker.nextId());
            orderItemDao.insertSelective(orderItem);
        }
        return order;
    }

}
