package com.sharding.mysql.example.dao;

import com.sharding.mysql.example.entity.Order;
import org.apache.ibatis.annotations.Param;
import tk.mybatis.mapper.common.Mapper;

import java.util.List;

/**
 * @author linzef
 * @since 2020-11-29
 * 类描述： 订单的dao
 */
public interface OrderDao extends Mapper<Order> {

    /**
     * 功能描述： 根据用户ID来查订单数据
     *
     * @param userId 用户ID
     * @return 返回查询结果
     */
    List<Order> queryMyOrder(@Param("userId") Integer userId);

}
