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
   order_id             bigint not null comment '������ˮID',
   user_id              bigint comment '�û���ˮID',
   order_no             varchar(100) comment '�������',
   create_time          date comment '����ʱ��',
   primary key (order_id)
);

alter table t_order0 comment '������';

/*==============================================================*/
/* Table: t_order_item                                          */
/*==============================================================*/
create table t_order_item0
(
   order_item_id        bigint not null comment '������ϸ��ˮID',
   user_id              bigint comment '�û���ˮID',
   order_id             bigint comment '������ˮID',
   seller_id            bigint comment '�̼���ˮID',
   create_time          date comment '����ʱ��',
   primary key (order_item_id)
);

alter table t_order_item0 comment '������ϸ';

/*==============================================================*/
/* Table: t_order_no_to_order                                   */
/*==============================================================*/
create table t_order_no_to_order0
(
   order_no             varchar(100) comment '������ˮ��',
   order_id             bigint comment '������ˮID'
);

alter table t_order_no_to_order0 comment '������źͶ�����ӳ��';

/*==============================================================*/
/* Table: t_seller_to_order_item                                */
/*==============================================================*/
create table t_seller_to_order_item0
(
   seller_id            bigint comment '������ˮID',
   order_id             bigint comment '������ˮID'
);

alter table t_seller_to_order_item0 comment '�����붩����ӳ��';

/*==============================================================*/
/* Table: t_user_to_order                                       */
/*==============================================================*/
create table t_user_to_order0
(
   user_id              bigint comment '�û���ˮID',
   order_id             bigint comment '������ˮID'
);

alter table t_user_to_order0 comment '�û��붩����ӳ��';




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
   order_id             bigint not null comment '������ˮID',
   user_id              bigint comment '�û���ˮID',
   order_no             varchar(100) comment '�������',
   create_time          date comment '����ʱ��',
   primary key (order_id)
);

alter table t_order1 comment '������';

/*==============================================================*/
/* Table: t_order_item                                          */
/*==============================================================*/
create table t_order_item1
(
   order_item_id        bigint not null comment '������ϸ��ˮID',
   user_id              bigint comment '�û���ˮID',
   order_id             bigint comment '������ˮID',
   seller_id            bigint comment '�̼���ˮID',
   create_time          date comment '����ʱ��',
   primary key (order_item_id)
);

alter table t_order_item1 comment '������ϸ';

/*==============================================================*/
/* Table: t_order_no_to_order                                   */
/*==============================================================*/
create table t_order_no_to_order1
(
   order_no             varchar(100) comment '������ˮ��',
   order_id             bigint comment '������ˮID'
);

alter table t_order_no_to_order1 comment '������źͶ�����ӳ��';

/*==============================================================*/
/* Table: t_seller_to_order_item                                */
/*==============================================================*/
create table t_seller_to_order_item1
(
   seller_id            bigint comment '������ˮID',
   order_id             bigint comment '������ˮID'
);

alter table t_seller_to_order_item1 comment '�����붩����ӳ��';

/*==============================================================*/
/* Table: t_user_to_order                                       */
/*==============================================================*/
create table t_user_to_order1
(
   user_id              bigint comment '�û���ˮID',
   order_id             bigint comment '������ˮID'
);

alter table t_user_to_order1 comment '�û��붩����ӳ��';


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
   order_id             bigint not null comment '������ˮID',
   user_id              bigint comment '�û���ˮID',
   order_no             varchar(100) comment '�������',
   create_time          date comment '����ʱ��',
   primary key (order_id)
);

alter table t_order2 comment '������';

/*==============================================================*/
/* Table: t_order_item                                          */
/*==============================================================*/
create table t_order_item2
(
   order_item_id        bigint not null comment '������ϸ��ˮID',
   user_id              bigint comment '�û���ˮID',
   order_id             bigint comment '������ˮID',
   seller_id            bigint comment '�̼���ˮID',
   create_time          date comment '����ʱ��',
   primary key (order_item_id)
);

alter table t_order_item2 comment '������ϸ';

/*==============================================================*/
/* Table: t_order_no_to_order                                   */
/*==============================================================*/
create table t_order_no_to_order2
(
   order_no             varchar(100) comment '������ˮ��',
   order_id             bigint comment '������ˮID'
);

alter table t_order_no_to_order2 comment '������źͶ�����ӳ��';

/*==============================================================*/
/* Table: t_seller_to_order_item                                */
/*==============================================================*/
create table t_seller_to_order_item2
(
   seller_id            bigint comment '������ˮID',
   order_id             bigint comment '������ˮID'
);

alter table t_seller_to_order_item2 comment '�����붩����ӳ��';

/*==============================================================*/
/* Table: t_user_to_order                                       */
/*==============================================================*/
create table t_user_to_order2
(
   user_id              bigint comment '�û���ˮID',
   order_id             bigint comment '������ˮID'
);

alter table t_user_to_order2 comment '�û��붩����ӳ��';




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
   order_id             bigint not null comment '������ˮID',
   user_id              bigint comment '�û���ˮID',
   order_no             varchar(100) comment '�������',
   create_time          date comment '����ʱ��',
   primary key (order_id)
);

alter table t_order3 comment '������';

/*==============================================================*/
/* Table: t_order_item                                          */
/*==============================================================*/
create table t_order_item3
(
   order_item_id        bigint not null comment '������ϸ��ˮID',
   user_id              bigint comment '�û���ˮID',
   order_id             bigint comment '������ˮID',
   seller_id            bigint comment '�̼���ˮID',
   create_time          date comment '����ʱ��',
   primary key (order_item_id)
);

alter table t_order_item3 comment '������ϸ';

/*==============================================================*/
/* Table: t_order_no_to_order                                   */
/*==============================================================*/
create table t_order_no_to_order3
(
   order_no             varchar(100) comment '������ˮ��',
   order_id             bigint comment '������ˮID'
);

alter table t_order_no_to_order3 comment '������źͶ�����ӳ��';

/*==============================================================*/
/* Table: t_seller_to_order_item                                */
/*==============================================================*/
create table t_seller_to_order_item3
(
   seller_id            bigint comment '������ˮID',
   order_id             bigint comment '������ˮID'
);

alter table t_seller_to_order_item3 comment '�����붩����ӳ��';

/*==============================================================*/
/* Table: t_user_to_order                                       */
/*==============================================================*/
create table t_user_to_order3
(
   user_id              bigint comment '�û���ˮID',
   order_id             bigint comment '������ˮID'
);

alter table t_user_to_order3 comment '�û��붩����ӳ��';