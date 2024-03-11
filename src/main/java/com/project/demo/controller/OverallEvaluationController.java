package com.project.demo.controller;

import com.project.demo.entity.OverallEvaluation;
import com.project.demo.service.OverallEvaluationService;
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
 * 整体评价：(OverallEvaluation)表控制层
 *
 */
@RestController
@RequestMapping("/overall_evaluation")
public class OverallEvaluationController extends BaseController<OverallEvaluation, OverallEvaluationService> {

    /**
     * 整体评价对象
     */
    @Autowired
    public OverallEvaluationController(OverallEvaluationService service) {
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
