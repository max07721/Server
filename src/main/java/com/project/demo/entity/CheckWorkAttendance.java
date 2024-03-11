package com.project.demo.entity;

import java.sql.Date;
import java.sql.Timestamp;
import com.project.demo.entity.base.BaseEntity;
import java.io.Serializable;
import lombok.*;
import javax.persistence.*;


/**
 * 考勤记录：(CheckWorkAttendance)表实体类
 *
 */
@Setter
@Getter
@Entity(name = "CheckWorkAttendance")
public class CheckWorkAttendance implements Serializable {

    // CheckWorkAttendance编号
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "check_work_attendance_id")
    private Integer check_work_attendance_id;

    // 教师账号
    @Basic
    private Integer teacher_account;
    // 教师姓名
    @Basic
    private String teachers_name;
    // 课程名称
    @Basic
    private String course_name;
    // 学生账号
    @Basic
    private Integer student_account;
    // 学生姓名
    @Basic
    private String student_name;
    // 上课时间
    @Basic
    private Timestamp class_time;
    // 考勤情况
    @Basic
    private String attendance_situation;














    // 更新时间
    @Basic
    private Timestamp update_time;

    // 创建时间
    @Basic
    private Timestamp create_time;

}
