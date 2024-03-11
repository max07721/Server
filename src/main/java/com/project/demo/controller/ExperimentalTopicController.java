package com.project.demo.controller;

import com.project.demo.entity.ExperimentalTopic;
import com.project.demo.service.ExperimentalTopicService;
import com.project.demo.controller.base.BaseController;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.web.bind.annotation.*;

import javax.persistence.Query;
import javax.servlet.http.HttpServletRequest;
import java.io.IOException;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.*;


/**
 * 实验题目：(ExperimentalTopic)表控制层
 *
 */
@RestController
@RequestMapping("/experimental_topic")
public class ExperimentalTopicController extends BaseController<ExperimentalTopic, ExperimentalTopicService> {

    /**
     * 实验题目对象
     */
    @Autowired
    public ExperimentalTopicController(ExperimentalTopicService service) {
        setService(service);
    }


    @PostMapping("/add")
    @Transactional
    public Map<String, Object> add(HttpServletRequest request) throws IOException {
        Map<String,Object> paramMap = service.readBody(request.getReader());
        this.addMap(paramMap);
        return success(1);
    }

}
