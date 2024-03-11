package com.project.demo.entity;

import java.sql.Date;
import java.sql.Timestamp;
import com.project.demo.entity.base.BaseEntity;
import java.io.Serializable;
import lombok.*;
import javax.persistence.*;


/**
 * 实验题目：(ExperimentalTopic)表实体类
 *
 */
@Setter
@Getter
@Entity(name = "ExperimentalTopic")
public class ExperimentalTopic implements Serializable {

    // ExperimentalTopic编号
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "experimental_topic_id")
    private Integer experimental_topic_id;

    // 课程名称
    @Basic
    private String course_name;
    // 实验题目
    @Basic
    private String experimental_topic;














    // 更新时间
    @Basic
    private Timestamp update_time;

    // 创建时间
    @Basic
    private Timestamp create_time;

}
