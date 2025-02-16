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
 *健康干预：(HealthIntervention)表实体类
 *
 */
@TableName("`health_intervention`")
@Data
@EqualsAndHashCode(callSuper = false)
public class HealthIntervention implements Serializable {

    //HealthIntervention编号
    @TableId(value = "health_intervention_id", type = IdType.AUTO)
    private Integer health_intervention_id;
    // 用户名
    @TableField(value = "user_name")
    private Integer user_name;
    // 人群类别
    @TableField(value = "population_category")
    private String population_category;
    // 干预周期
    @TableField(value = "intervention_cycle")
    private String intervention_cycle;
    // 异常指标
    @TableField(value = "abnormal_index")
    private String abnormal_index;
    // 干预方案
    @TableField(value = "intervention_program")
    private String intervention_program;


    // 更新时间
    @TableField(value = "update_time")
    private Timestamp update_time;

    // 创建时间
    @TableField(value = "create_time")
    private Timestamp create_time;

}
