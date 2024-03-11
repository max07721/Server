package com.project.demo.entity;

import java.sql.Date;
import java.sql.Timestamp;
import com.project.demo.entity.base.BaseEntity;
import java.io.Serializable;
import lombok.*;
import javax.persistence.*;


/**
 * 实验信息：(ExperimentalInformation)表实体类
 *
 */
@Setter
@Getter
@Entity(name = "ExperimentalInformation")
public class ExperimentalInformation implements Serializable {

    // ExperimentalInformation编号
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "experimental_information_id")
    private Integer experimental_information_id;

    // 教师账号
    @Basic
    private Integer teacher_account;
    // 教师姓名
    @Basic
    private String teachers_name;
    // 学生账号
    @Basic
    private Integer student_account;
    // 学生姓名
    @Basic
    private String student_name;
    // 课程名称
    @Basic
    private String course_name;
    // 实验题目
    @Basic
    private String experimental_topic;
    // 实验地点
    @Basic
    private String experimental_location;
    // 实验内容
    @Basic
    private String experimental_content;














    // 更新时间
    @Basic
    private Timestamp update_time;

    // 创建时间
    @Basic
    private Timestamp create_time;

}
