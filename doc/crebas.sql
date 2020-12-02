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
   order_id             bigint not null comment '订单流水ID',
   user_id              bigint comment '用户流水ID',
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
   order_item_id        bigint not null comment '订单明细流水ID',
   user_id              bigint comment '用户流水ID',
   order_id             bigint comment '订单流水ID',
   seller_id            bigint comment '商家流水ID',
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
   order_id             bigint comment '订单流水ID'
);

alter table t_order_no_to_order0 comment '订单编号和订单的映射';

/*==============================================================*/
/* Table: t_seller_to_order_item                                */
/*==============================================================*/
create table t_seller_to_order_item0
(
   seller_id            bigint comment '卖家流水ID',
   order_id             bigint comment '订单流水ID'
);

alter table t_seller_to_order_item0 comment '卖家与订单的映射';

/*==============================================================*/
/* Table: t_user_to_order                                       */
/*==============================================================*/
create table t_user_to_order0
(
   user_id              bigint comment '用户流水ID',
   order_id             bigint comment '订单流水ID'
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
   order_id             bigint not null comment '订单流水ID',
   user_id              bigint comment '用户流水ID',
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
   order_item_id        bigint not null comment '订单明细流水ID',
   user_id              bigint comment '用户流水ID',
   order_id             bigint comment '订单流水ID',
   seller_id            bigint comment '商家流水ID',
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
   order_id             bigint comment '订单流水ID'
);

alter table t_order_no_to_order1 comment '订单编号和订单的映射';

/*==============================================================*/
/* Table: t_seller_to_order_item                                */
/*==============================================================*/
create table t_seller_to_order_item1
(
   seller_id            bigint comment '卖家流水ID',
   order_id             bigint comment '订单流水ID'
);

alter table t_seller_to_order_item1 comment '卖家与订单的映射';

/*==============================================================*/
/* Table: t_user_to_order                                       */
/*==============================================================*/
create table t_user_to_order1
(
   user_id              bigint comment '用户流水ID',
   order_id             bigint comment '订单流水ID'
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
   order_id             bigint not null comment '订单流水ID',
   user_id              bigint comment '用户流水ID',
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
   order_item_id        bigint not null comment '订单明细流水ID',
   user_id              bigint comment '用户流水ID',
   order_id             bigint comment '订单流水ID',
   seller_id            bigint comment '商家流水ID',
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
   order_id             bigint comment '订单流水ID'
);

alter table t_order_no_to_order2 comment '订单编号和订单的映射';

/*==============================================================*/
/* Table: t_seller_to_order_item                                */
/*==============================================================*/
create table t_seller_to_order_item2
(
   seller_id            bigint comment '卖家流水ID',
   order_id             bigint comment '订单流水ID'
);

alter table t_seller_to_order_item2 comment '卖家与订单的映射';

/*==============================================================*/
/* Table: t_user_to_order                                       */
/*==============================================================*/
create table t_user_to_order2
(
   user_id              bigint comment '用户流水ID',
   order_id             bigint comment '订单流水ID'
);

alter table t_user_to_order2 comment '用户与订单的映射';




drop table if exists t_order3;

drop table if exists t_order_item3;

drop table if exists t_order_no_to_order3;

drop table if exists t_seller_to_order_item3;

drop table if exists t_user_to_order3;

/*==============================================================*/
/* Table: t_order                                               */
/*==============================================================*/
create table t_order3
(
   order_id             bigint not null comment '订单流水ID',
   user_id              bigint comment '用户流水ID',
   order_no             varchar(100) comment '订单编号',
   create_time          date comment '创建时间',
   primary key (order_id)
);

alter table t_order3 comment '订单表';

/*==============================================================*/
/* Table: t_order_item                                          */
/*==============================================================*/
create table t_order_item3
(
   order_item_id        bigint not null comment '订单明细流水ID',
   user_id              bigint comment '用户流水ID',
   order_id             bigint comment '订单流水ID',
   seller_id            bigint comment '商家流水ID',
   create_time          date comment '创建时间',
   primary key (order_item_id)
);

alter table t_order_item3 comment '订单明细';

/*==============================================================*/
/* Table: t_order_no_to_order                                   */
/*==============================================================*/
create table t_order_no_to_order3
(
   order_no             varchar(100) comment '订单流水号',
   order_id             bigint comment '订单流水ID'
);

alter table t_order_no_to_order3 comment '订单编号和订单的映射';

/*==============================================================*/
/* Table: t_seller_to_order_item                                */
/*==============================================================*/
create table t_seller_to_order_item3
(
   seller_id            bigint comment '卖家流水ID',
   order_id             bigint comment '订单流水ID'
);

alter table t_seller_to_order_item3 comment '卖家与订单的映射';

/*==============================================================*/
/* Table: t_user_to_order                                       */
/*==============================================================*/
create table t_user_to_order3
(
   user_id              bigint comment '用户流水ID',
   order_id             bigint comment '订单流水ID'
);

alter table t_user_to_order3 comment '用户与订单的映射';