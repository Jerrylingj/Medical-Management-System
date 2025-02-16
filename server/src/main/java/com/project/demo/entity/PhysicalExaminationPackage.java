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
 *体检套餐：(PhysicalExaminationPackage)表实体类
 *
 */
@TableName("`physical_examination_package`")
@Data
@EqualsAndHashCode(callSuper = false)
public class PhysicalExaminationPackage implements Serializable {

    //PhysicalExaminationPackage编号
    @TableId(value = "physical_examination_package_id", type = IdType.AUTO)
    private Integer physical_examination_package_id;
    // 套餐编号
    @TableField(value = "package_number")
    private String package_number;
    // 套餐名称
    @TableField(value = "package_name")
    private String package_name;
    // 封面
    @TableField(value = "cover")
    private String cover;
    // 价格
    @TableField(value = "price")
    private Integer price;
    // 检测项
    @TableField(value = "test_item")
    private String test_item;
    // 注意事项
    @TableField(value = "matters_needing_attention")
    private String matters_needing_attention;
    // 详情
    @TableField(value = "details")
    private String details;
    // 点击数
    @TableField(value = "hits")
    private Integer hits;
    // 点赞数
    @TableField(value = "praise_len")
    private Integer praise_len;


    // 更新时间
    @TableField(value = "update_time")
    private Timestamp update_time;

    // 创建时间
    @TableField(value = "create_time")
    private Timestamp create_time;

}
