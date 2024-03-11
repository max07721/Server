package com.project.demo.controller;

import com.project.demo.entity.ExperimentalInformation;
import com.project.demo.service.ExperimentalInformationService;
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
 * 实验信息：(ExperimentalInformation)表控制层
 *
 */
@RestController
@RequestMapping("/experimental_information")
public class ExperimentalInformationController extends BaseController<ExperimentalInformation, ExperimentalInformationService> {

    /**
     * 实验信息对象
     */
    @Autowired
    public ExperimentalInformationController(ExperimentalInformationService service) {
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
