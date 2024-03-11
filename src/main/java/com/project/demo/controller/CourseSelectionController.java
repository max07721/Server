package com.project.demo.controller;

import com.project.demo.entity.CourseSelection;
import com.project.demo.service.CourseSelectionService;
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
 * 选课信息：(CourseSelection)表控制层
 *
 */
@RestController
@RequestMapping("/course_selection")
public class CourseSelectionController extends BaseController<CourseSelection, CourseSelectionService> {

    /**
     * 选课信息对象
     */
    @Autowired
    public CourseSelectionController(CourseSelectionService service) {
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
