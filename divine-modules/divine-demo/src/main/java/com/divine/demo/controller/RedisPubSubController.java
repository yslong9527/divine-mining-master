package com.divine.demo.controller;

import com.divine.common.core.domain.Result;
import com.divine.common.redis.utils.RedisUtils;
import lombok.RequiredArgsConstructor;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

/**
 * Redis发布订阅 演示案例
 */
@RequiredArgsConstructor
@RestController
@RequestMapping("/demo/redis/pubsub")
public class RedisPubSubController {

    /**
     * 发布消息
     *
     * @param key   通道Key
     * @param value 发送内容
     * @return
     */
    @GetMapping("/pub")
    public Result<String> pub(String key, String value) {
        RedisUtils.publish(key, value, consumer -> {
            System.out.println("发布通道 => " + key + ", 发送值 => " + value);
        });
        return Result.success("操作成功");
    }

    /**
     * 发布消息
     *
     * @param key 通道Key
     * @return
     */
    @GetMapping("/sub")
    public Result<String> sub(String key) {
        RedisUtils.subscribe(key, String.class, msg -> {
            System.out.println("订阅通道 => " + key + ", 接收值 => " + msg);
        });
        return Result.success("操作成功");
    }

}
