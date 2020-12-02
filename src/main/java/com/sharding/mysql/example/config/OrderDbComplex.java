package com.sharding.mysql.example.config;

import com.sharding.mysql.example.util.StringUtils;
import org.apache.shardingsphere.sharding.api.sharding.complex.ComplexKeysShardingAlgorithm;
import org.apache.shardingsphere.sharding.api.sharding.complex.ComplexKeysShardingValue;

import java.util.*;

/**
 * @author linzf
 * @since 2020/12/2
 * 类描述：
 */
public class OrderDbComplex implements ComplexKeysShardingAlgorithm<Long> {

    private Properties props = new Properties();


    @Override
    public Collection<String> doSharding(Collection collection, ComplexKeysShardingValue complexKeysShardingValue) {
        List<String> shardingList = new ArrayList();
        // 获取当前的表名
        String logicTableName = complexKeysShardingValue.getLogicTableName();
        // 获取请求参数
        Map<String, List> columnNameAndShardingValuesMap = complexKeysShardingValue.getColumnNameAndShardingValuesMap();
        List orderIdList = columnNameAndShardingValuesMap.get("order_id");
        List userIdList = columnNameAndShardingValuesMap.get("user_id");
        Long order_id = orderIdList != null ? StringUtils.getObjLong(orderIdList.get(0)) : 0L;
        Long user_id = userIdList != null ? StringUtils.getObjLong(userIdList.get(0)) : 0L;
        if (order_id == 0L && user_id == 0L) {
            return collection;
        }
        Long modVal = 0L;
        if (order_id > 0L) {
            modVal = order_id % 2;
        }
        if (user_id > 0L) {
            modVal = user_id % 2;
        }
        for (Iterator<String> iter = collection.iterator(); iter.hasNext(); ) {
            String str = iter.next();
            if (("db" + modVal).equals(str)) {
                shardingList.add(str);
            }
        }
        return shardingList;
    }

    @Override
    public void init() {
        System.out.println("--------------------");
    }

    @Override
    public String getType() {
        return "OrderDbComplex";
    }

    @Override
    public Properties getProps() {
        return this.props;
    }

    @Override
    public void setProps(Properties props) {
        this.props = props;
    }
}
