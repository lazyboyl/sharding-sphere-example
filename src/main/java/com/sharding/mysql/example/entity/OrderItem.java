package com.sharding.mysql.example.entity;

import javax.persistence.Column;
import javax.persistence.Id;
import javax.persistence.Table;
import java.util.Date;

/**
 * @author linzef
 * @since 2020-11-29
 * 类描述： 订单明细
 */
@Table(name = "t_order_item")
public class OrderItem {

    /**
     * 订单明细流水ID
     */
    @Id
    @Column(name = "order_item_id")
    private Integer orderItemId;

    /**
     * 订单流水ID
     */
    @Column(name = "order_id")
    private Integer orderId;


    /**
     * 用户流水ID
     */
    @Column(name = "user_Id")
    private Integer userId;

    /**
     * 卖家流水ID
     */
    @Column(name = "seller_id")
    private Integer sellerId;

    /**
     * 订单创建时间
     */
    @Column(name = "create_time")
    private Date createTime;

    public Date getCreateTime() {
        return createTime;
    }

    public void setCreateTime(Date createTime) {
        this.createTime = createTime;
    }

    public Integer getOrderItemId() {
        return orderItemId;
    }

    public void setOrderItemId(Integer orderItemId) {
        this.orderItemId = orderItemId;
    }

    public Integer getOrderId() {
        return orderId;
    }

    public void setOrderId(Integer orderId) {
        this.orderId = orderId;
    }

    public Integer getUserId() {
        return userId;
    }

    public void setUserId(Integer userId) {
        this.userId = userId;
    }

    public Integer getSellerId() {
        return sellerId;
    }

    public void setSellerId(Integer sellerId) {
        this.sellerId = sellerId;
    }
}
