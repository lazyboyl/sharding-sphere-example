package com.sharding.mysql.example;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import tk.mybatis.spring.annotation.MapperScan;

/**
 * @author linzef
 * @since 2020-11-29
 * 类描述： 启动类
 */
@SpringBootApplication
@MapperScan("com.sharding.mysql.example.dao")
public class ShardingSphereExampleApplication {

    public static void main(String[] args) {
        SpringApplication.run(ShardingSphereExampleApplication.class, args);
    }

}
