package com.sharding.mysql.example.entity;

import javax.persistence.Column;
import javax.persistence.Id;
import javax.persistence.Table;
import javax.persistence.Transient;
import java.util.Date;
import java.util.List;

/**
 * @author linzef
 * @since 2020-11-29
 * 类描述： 订单表
 */
@Table(name = "t_order")
public class Order {

    /**
     * 订单流水ID
     */
    @Id
    @Column(name = "order_id")
    private Integer orderId;

    /**
     * 用户流水ID
     */
    @Column(name = "user_Id")
    private Integer userId;

    /**
     * 订单编号
     */
    @Column(name = "order_no")
    private String orderNo;


    /**
     * 订单创建时间
     */
    @Column(name = "create_time")
    private Date createTime;

    /**
     * 订单流水明细
     */
    @Transient
    private List<OrderItem> orderItemList;

    public List<OrderItem> getOrderItemList() {
        return orderItemList;
    }

    public void setOrderItemList(List<OrderItem> orderItemList) {
        this.orderItemList = orderItemList;
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

    public String getOrderNo() {
        return orderNo;
    }

    public void setOrderNo(String orderNo) {
        this.orderNo = orderNo;
    }

    public Date getCreateTime() {
        return createTime;
    }

    public void setCreateTime(Date createTime) {
        this.createTime = createTime;
    }
}
