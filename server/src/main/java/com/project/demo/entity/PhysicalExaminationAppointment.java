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
 *体检预约：(PhysicalExaminationAppointment)表实体类
 *
 */
@TableName("`physical_examination_appointment`")
@Data
@EqualsAndHashCode(callSuper = false)
public class PhysicalExaminationAppointment implements Serializable {

    //PhysicalExaminationAppointment编号
    @TableId(value = "physical_examination_appointment_id", type = IdType.AUTO)
    private Integer physical_examination_appointment_id;
    // 订单号
    @TableField(value = "order_number")
    private String order_number;
    // 套餐编号
    @TableField(value = "package_number")
    private String package_number;
    // 套餐名称
    @TableField(value = "package_name")
    private String package_name;
    // 价格
    @TableField(value = "price")
    private String price;
    // 预约人数
    @TableField(value = "number_of_appointments")
    private Integer number_of_appointments;
    // 总价格
    @TableField(value = "total_price")
    private String total_price;
    // 用户名
    @TableField(value = "user_name")
    private Integer user_name;
    // 联系电话
    @TableField(value = "contact_number")
    private String contact_number;
    // 预约体检日期
    @TableField(value = "appointment_date_of_physical_examination")
    private Timestamp appointment_date_of_physical_examination;
    // 审核状态
    @TableField(value = "examine_state")
    private String examine_state;
    // 支付状态
    @TableField(value = "pay_state")
    private String pay_state;

    // 支付类型: 微信、支付宝、网银
    @TableField(value = "pay_type")
    private String pay_type;
    // 审核回复
    @TableField(value = "examine_reply")
    private String examine_reply;


    // 更新时间
    @TableField(value = "update_time")
    private Timestamp update_time;

    // 创建时间
    @TableField(value = "create_time")
    private Timestamp create_time;

}
