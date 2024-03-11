package com.project.demo.entity;

import java.sql.Date;
import java.sql.Timestamp;
import com.project.demo.entity.base.BaseEntity;
import java.io.Serializable;
import lombok.*;
import javax.persistence.*;


/**
 * 学生签到：(StudentCheckIn)表实体类
 *
 */
@Setter
@Getter
@Entity(name = "StudentCheckIn")
public class StudentCheckIn implements Serializable {

    // StudentCheckIn编号
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "student_check_in_id")
    private Integer student_check_in_id;

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
    // 提交时间
    @Basic
    private Timestamp submission_time;
    // 确认到场
    @Basic
    private String confirm_attendance;



    // 审核状态
    @Basic
    private String examine_state;











    // 更新时间
    @Basic
    private Timestamp update_time;

    // 创建时间
    @Basic
    private Timestamp create_time;

}
