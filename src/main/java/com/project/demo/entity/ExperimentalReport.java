package com.project.demo.entity;

import java.sql.Date;
import java.sql.Timestamp;
import com.project.demo.entity.base.BaseEntity;
import java.io.Serializable;
import lombok.*;
import javax.persistence.*;


/**
 * 实验报告：(ExperimentalReport)表实体类
 *
 */
@Setter
@Getter
@Entity(name = "ExperimentalReport")
public class ExperimentalReport implements Serializable {

    // ExperimentalReport编号
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "experimental_report_id")
    private Integer experimental_report_id;

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
    // 实验时间
    @Basic
    private Timestamp experimental_time;
    // 实验解答
    @Basic
    private String experimental_solution;
    // 批阅评语
    @Basic
    private String review_comments;
    // 实验成绩
    @Basic
    private Integer experimental_results;














    // 更新时间
    @Basic
    private Timestamp update_time;

    // 创建时间
    @Basic
    private Timestamp create_time;

}
