package com.project.demo.entity;

import java.sql.Date;
import java.sql.Timestamp;
import com.project.demo.entity.base.BaseEntity;
import java.io.Serializable;
import lombok.*;
import javax.persistence.*;


/**
 * 课程名称：(CourseName)表实体类
 *
 */
@Setter
@Getter
@Entity(name = "CourseName")
public class CourseName implements Serializable {

    // CourseName编号
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "course_name_id")
    private Integer course_name_id;

    // 课程名称
    @Basic
    private String course_name;














    // 更新时间
    @Basic
    private Timestamp update_time;

    // 创建时间
    @Basic
    private Timestamp create_time;

}
