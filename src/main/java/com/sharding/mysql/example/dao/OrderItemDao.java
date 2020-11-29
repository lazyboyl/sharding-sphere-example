package com.sharding.mysql.example.dao;

import com.sharding.mysql.example.entity.OrderItem;
import tk.mybatis.mapper.common.Mapper;

/**
 * @author linzef
 * @since 2020-11-29
 * 类描述： 订单明细的dao
 */
public interface OrderItemDao extends Mapper<OrderItem> {
}
