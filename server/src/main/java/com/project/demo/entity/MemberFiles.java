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
 *会员档案：(MemberFiles)表实体类
 *
 */
@TableName("`member_files`")
@Data
@EqualsAndHashCode(callSuper = false)
public class MemberFiles implements Serializable {

    //MemberFiles编号
    @TableId(value = "member_files_id", type = IdType.AUTO)
    private Integer member_files_id;
    // 用户
    @TableField(value = "user")
    private Integer user;
    // 姓名
    @TableField(value = "full_name")
    private String full_name;
    // 性别
    @TableField(value = "gender")
    private String gender;
    // 出生日期
    @TableField(value = "date_of_birth")
    private Timestamp date_of_birth;
    // 身高
    @TableField(value = "height")
    private String height;
    // 体重
    @TableField(value = "weight")
    private String weight;
    // 遗传病史
    @TableField(value = "genetic_history")
    private String genetic_history;
    // 疾病史
    @TableField(value = "disease_history")
    private String disease_history;


    // 更新时间
    @TableField(value = "update_time")
    private Timestamp update_time;

    // 创建时间
    @TableField(value = "create_time")
    private Timestamp create_time;

}
