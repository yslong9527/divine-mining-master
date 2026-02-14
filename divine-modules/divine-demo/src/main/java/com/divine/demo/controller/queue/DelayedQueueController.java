package com.divine.demo.controller.queue;

import com.divine.common.core.domain.Result;
import com.divine.common.redis.utils.QueueUtils;
import io.swagger.v3.oas.annotations.Operation;
import io.swagger.v3.oas.annotations.media.Schema;
import io.swagger.v3.oas.annotations.tags.Tag;
import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import java.util.concurrent.TimeUnit;

/**
 * 延迟队列 演示案例
 * <p>
 * 轻量级队列 重量级数据量 请使用 MQ
 * 例如: 创建订单30分钟后过期处理
 * <p>
 * 集群测试通过 同一个数据只会被消费一次 做好事务补偿
 * 集群测试流程 两台集群分别开启订阅 在其中一台发送数据 观察接收消息的规律
 *
 * @author Lion Li
 * @version 3.6.0
 */
@Tag(name = "延迟队列 演示案例")
@Slf4j
@RequiredArgsConstructor
@RestController
@RequestMapping("/demo/queue/delayed")
public class DelayedQueueController {

    @Operation(summary = "订阅队列")
    @GetMapping("/subscribe")
    public Result<String> subscribe(@Schema(description = "队列名") String queueName) {
        log.info("通道: {} 监听中......", queueName);
        // 项目初始化设置一次即可
        QueueUtils.subscribeBlockingQueue(queueName, (String orderNo) -> {
            // 观察接收时间
            log.info("通道: {}, 收到数据: {}", queueName, orderNo);
        }, true);
        return Result.success("操作成功");
    }

    @Operation(summary = "添加队列数据")
    @GetMapping("/add")
    public Result<String> add(@Schema(description = "队列名") String queueName,
                            @Schema(description = "订单号") String orderNo,
                            @Schema(description = "延迟时间(秒)") Long time) {
        QueueUtils.addDelayedQueueObject(queueName, orderNo, time, TimeUnit.SECONDS);
        // 观察发送时间
        log.info("通道: {} , 发送数据: {}", queueName, orderNo);
        return Result.success("操作成功");
    }

    @Operation(summary = "删除队列数据")
    @GetMapping("/remove")
    public Result<String> remove(@Schema(description = "队列名") String queueName,
                               @Schema(description = "订单号") String orderNo) {
        if (QueueUtils.removeDelayedQueueObject(queueName, orderNo)) {
            log.info("通道: {} , 删除数据: {}", queueName, orderNo);
        } else {
            return Result.fail("操作失败");
        }
        return Result.success("操作成功");
    }

    @Operation(summary = "销毁队列")
    @GetMapping("/destroy")
    public Result<String> destroy(@Schema(description = "队列名") String queueName) {
        // 用完了一定要销毁 否则会一直存在
        QueueUtils.destroyDelayedQueue(queueName);
        return Result.success("操作成功");
    }

}
