package com.project.demo.entity;

import java.sql.Date;
import java.sql.Timestamp;
import com.project.demo.entity.base.BaseEntity;
import java.io.Serializable;
import lombok.*;
import javax.persistence.*;


/**
 * 选课信息：(CourseSelection)表实体类
 *
 */
@Setter
@Getter
@Entity(name = "CourseSelection")
public class CourseSelection implements Serializable {

    // CourseSelection编号
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "course_selection_id")
    private Integer course_selection_id;

    // 教师账号
    @Basic
    private Integer teacher_account;
    // 教师姓名
    @Basic
    private String teachers_name;
    // 课程名称
    @Basic
    private String course_name;
    // 实验安排
    @Basic
    private String experimental_arrangement;
    // 学生学号
    @Basic
    private String student_id;
    // 学生账号
    @Basic
    private Integer student_account;
    // 学生姓名
    @Basic
    private String student_name;



    // 审核状态
    @Basic
    private String examine_state;








    // 审核回复
    @Basic
    private String examine_reply;



    // 更新时间
    @Basic
    private Timestamp update_time;

    // 创建时间
    @Basic
    private Timestamp create_time;

}
