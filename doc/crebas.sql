/*==============================================================*/
/* DBMS name:      MySQL 5.0                                    */
/* Created on:     2020/11/29 12:47:25                          */
/*==============================================================*/


drop table if exists t_order0;

drop table if exists t_order_item0;

drop table if exists t_order_no_to_order0;

drop table if exists t_seller_to_order_item0;

drop table if exists t_user_to_order0;

/*==============================================================*/
/* Table: t_order                                               */
/*==============================================================*/
create table t_order0
(
   order_id             int not null comment '订单流水ID',
   user_id              int comment '用户流水ID',
   order_no             varchar(100) comment '订单编号',
   create_time          date comment '创建时间',
   primary key (order_id)
);

alter table t_order0 comment '订单表';

/*==============================================================*/
/* Table: t_order_item                                          */
/*==============================================================*/
create table t_order_item0
(
   order_item_id        int not null comment '订单明细流水ID',
   user_id              int comment '用户流水ID',
   order_id             int comment '订单流水ID',
   seller_id            int comment '商家流水ID',
   create_time          date comment '创建时间',
   primary key (order_item_id)
);

alter table t_order_item0 comment '订单明细';

/*==============================================================*/
/* Table: t_order_no_to_order                                   */
/*==============================================================*/
create table t_order_no_to_order0
(
   order_no             varchar(100) comment '订单流水号',
   order_id             int comment '订单流水ID'
);

alter table t_order_no_to_order0 comment '订单编号和订单的映射';

/*==============================================================*/
/* Table: t_seller_to_order_item                                */
/*==============================================================*/
create table t_seller_to_order_item0
(
   seller_id            int comment '卖家流水ID',
   order_id             int comment '订单流水ID'
);

alter table t_seller_to_order_item0 comment '卖家与订单的映射';

/*==============================================================*/
/* Table: t_user_to_order                                       */
/*==============================================================*/
create table t_user_to_order0
(
   user_id              int comment '用户流水ID',
   order_id             int comment '订单流水ID'
);

alter table t_user_to_order0 comment '用户与订单的映射';




drop table if exists t_order1;

drop table if exists t_order_item1;

drop table if exists t_order_no_to_order1;

drop table if exists t_seller_to_order_item1;

drop table if exists t_user_to_order1;

/*==============================================================*/
/* Table: t_order                                               */
/*==============================================================*/
create table t_order1
(
   order_id             int not null comment '订单流水ID',
   user_id              int comment '用户流水ID',
   order_no             varchar(100) comment '订单编号',
   create_time          date comment '创建时间',
   primary key (order_id)
);

alter table t_order1 comment '订单表';

/*==============================================================*/
/* Table: t_order_item                                          */
/*==============================================================*/
create table t_order_item1
(
   order_item_id        int not null comment '订单明细流水ID',
   user_id              int comment '用户流水ID',
   order_id             int comment '订单流水ID',
   seller_id            int comment '商家流水ID',
   create_time          date comment '创建时间',
   primary key (order_item_id)
);

alter table t_order_item1 comment '订单明细';

/*==============================================================*/
/* Table: t_order_no_to_order                                   */
/*==============================================================*/
create table t_order_no_to_order1
(
   order_no             varchar(100) comment '订单流水号',
   order_id             int comment '订单流水ID'
);

alter table t_order_no_to_order1 comment '订单编号和订单的映射';

/*==============================================================*/
/* Table: t_seller_to_order_item                                */
/*==============================================================*/
create table t_seller_to_order_item1
(
   seller_id            int comment '卖家流水ID',
   order_id             int comment '订单流水ID'
);

alter table t_seller_to_order_item1 comment '卖家与订单的映射';

/*==============================================================*/
/* Table: t_user_to_order                                       */
/*==============================================================*/
create table t_user_to_order1
(
   user_id              int comment '用户流水ID',
   order_id             int comment '订单流水ID'
);

alter table t_user_to_order1 comment '用户与订单的映射';


drop table if exists t_order2;

drop table if exists t_order_item2;

drop table if exists t_order_no_to_order2;

drop table if exists t_seller_to_order_item2;

drop table if exists t_user_to_order2;

/*==============================================================*/
/* Table: t_order                                               */
/*==============================================================*/
create table t_order2
(
   order_id             int not null comment '订单流水ID',
   user_id              int comment '用户流水ID',
   order_no             varchar(100) comment '订单编号',
   create_time          date comment '创建时间',
   primary key (order_id)
);

alter table t_order2 comment '订单表';

/*==============================================================*/
/* Table: t_order_item                                          */
/*==============================================================*/
create table t_order_item2
(
   order_item_id        int not null comment '订单明细流水ID',
   user_id              int comment '用户流水ID',
   order_id             int comment '订单流水ID',
   seller_id            int comment '商家流水ID',
   create_time          date comment '创建时间',
   primary key (order_item_id)
);

alter table t_order_item2 comment '订单明细';

/*==============================================================*/
/* Table: t_order_no_to_order                                   */
/*==============================================================*/
create table t_order_no_to_order2
(
   order_no             varchar(100) comment '订单流水号',
   order_id             int comment '订单流水ID'
);

alter table t_order_no_to_order2 comment '订单编号和订单的映射';

/*==============================================================*/
/* Table: t_seller_to_order_item                                */
/*==============================================================*/
create table t_seller_to_order_item2
(
   seller_id            int comment '卖家流水ID',
   order_id             int comment '订单流水ID'
);

alter table t_seller_to_order_item2 comment '卖家与订单的映射';

/*==============================================================*/
/* Table: t_user_to_order                                       */
/*==============================================================*/
create table t_user_to_order2
(
   user_id              int comment '用户流水ID',
   order_id             int comment '订单流水ID'
);

alter table t_user_to_order2 comment '用户与订单的映射';