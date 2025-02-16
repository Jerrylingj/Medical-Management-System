package com.project.demo.entity;

import com.alibaba.fastjson.annotation.JSONField;
import com.baomidou.mybatisplus.annotation.IdType;
import com.baomidou.mybatisplus.annotation.TableField;
import com.baomidou.mybatisplus.annotation.TableId;
import com.baomidou.mybatisplus.annotation.TableName;
import lombok.*;

import java.io.Serializable;
import java.sql.Timestamp;


/**
 *体检结果：(PhysicalExaminationResults)表实体类
 *
 */
@TableName("`physical_examination_results`")
@Data
@EqualsAndHashCode(callSuper = false)
public class PhysicalExaminationResults implements Serializable {

    //PhysicalExaminationResults编号
    @TableId(value = "physical_examination_results_id", type = IdType.AUTO)
    private Integer physical_examination_results_id;
    // 订单号
    @TableField(value = "order_number")
    private String order_number;
    // 套餐编号
    @TableField(value = "package_number")
    private String package_number;
    // 套餐名称
    @TableField(value = "package_name")
    private String package_name;
    // 用户名
    @TableField(value = "user_name")
    private Integer user_name;
    // 报告
    @TableField(value = "report")
    private String report;
    // 结果分析
    @TableField(value = "result_analysis")
    private String result_analysis;


    // 更新时间
    @TableField(value = "update_time")
    private Timestamp update_time;

    // 创建时间
    @TableField(value = "create_time")
    private Timestamp create_time;

}
