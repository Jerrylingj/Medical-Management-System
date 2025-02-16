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
 *健康评估：(HealthAssessment)表实体类
 *
 */
@TableName("`health_assessment`")
@Data
@EqualsAndHashCode(callSuper = false)
public class HealthAssessment implements Serializable {

    //HealthAssessment编号
    @TableId(value = "health_assessment_id", type = IdType.AUTO)
    private Integer health_assessment_id;
    // 用户
    @TableField(value = "user")
    private Integer user;
    // 姓名
    @TableField(value = "full_name")
    private String full_name;
    // 评估类型
    @TableField(value = "evaluation_type")
    private String evaluation_type;
    // 测评时间
    @TableField(value = "evaluation_time")
    private Timestamp evaluation_time;
    // 测评报告
    @TableField(value = "evaluation_report")
    private String evaluation_report;
    // 测评结果
    @TableField(value = "evaluation_results")
    private String evaluation_results;


    // 更新时间
    @TableField(value = "update_time")
    private Timestamp update_time;

    // 创建时间
    @TableField(value = "create_time")
    private Timestamp create_time;

}
