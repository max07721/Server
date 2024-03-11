package com.project.demo.controller;

import com.project.demo.entity.AnswerRecord;
import com.project.demo.service.AnswerRecordService;
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
 * 解答记录：(AnswerRecord)表控制层
 *
 */
@RestController
@RequestMapping("/answer_record")
public class AnswerRecordController extends BaseController<AnswerRecord, AnswerRecordService> {

    /**
     * 解答记录对象
     */
    @Autowired
    public AnswerRecordController(AnswerRecordService service) {
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
