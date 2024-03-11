package com.project.demo.controller;

import com.alibaba.fastjson.JSON;
import com.project.demo.entity.ExperimentalReport;
import com.project.demo.service.ExperimentalReportService;
import com.project.demo.controller.base.BaseController;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpHeaders;
import org.springframework.web.bind.annotation.*;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.*;
import java.util.HashMap;
import java.util.Map;


/**
 * 实验报告：(ExperimentalReport)表控制层
 */
@RestController
@RequestMapping("/experimental_report")
public class ExperimentalReportController extends BaseController<ExperimentalReport, ExperimentalReportService> {

    @Autowired
    private ExperimentalReportService experimentalReportService;

    /**
     * 实验报告对象
     */
    @Autowired
    public ExperimentalReportController(ExperimentalReportService service) {
        setService(service);
    }


    @PostMapping("/add")
    public Map<String, Object> add(HttpServletRequest request) throws IOException {
        Map<String, Object> paramMap = service.readBody(request.getReader());
        this.addMap(paramMap);
        return success(1);
    }

    @GetMapping("/exportPDF")
    public void exportPDF(@RequestParam("id") String id, HttpServletResponse response) throws IOException {
//        String paramMap =  request.getParameter("experimental_report_id");
        String fileName = "test"+System.currentTimeMillis()+".pdf";
//        String filePath = System.getProperty("user.dir") + "\\src\\main\\resources\\static\\";
//        File targetDir = new File(filePath+fileName);
//        System.out.println(filePath);
//        targetDir.createNewFile();
//        FileOutputStream outputStream = new FileOutputStream(targetDir);
        OutputStream out = null;
        try {
            ByteArrayOutputStream baos = new ByteArrayOutputStream();// 构建字节输出流
            experimentalReportService.exportPDF(baos, id);
            byte[] bytes = baos.toByteArray();
            response.setHeader(HttpHeaders.CONTENT_DISPOSITION, "attachment;filename=" + fileName);
            response.setHeader(HttpHeaders.CONTENT_LENGTH, String.valueOf(bytes.length));
            response.setHeader(HttpHeaders.CONTENT_TYPE, "application/pdf");
            response.setCharacterEncoding("UTF-8"); // 设置文件流编码格式 不然中文会乱码
            out = response.getOutputStream();
            out.write(bytes);
            out.flush();
            out.close();
//            outputStream.write(bytes);
//            outputStream.close();
        } catch (Exception e) {
            // 重置response
            response.reset();
            response.setContentType("application/json");
            response.setCharacterEncoding("utf-8");
            Map<String, String> map = new HashMap<>();
            map.put("status", "failure");
            map.put("message", "下载文件失败" + e.getMessage());
            response.getWriter().println(JSON.toJSONString(map));
        }
    }

    /**
     * 内容相似度比对
     */
    @GetMapping("/similarity")
    public Map<String, Object> similarity(@RequestParam("targetId") String targetId, @RequestParam("resourcesId") String resourcesId){
        double result = 0L;
        try {
            result = experimentalReportService.similarity(targetId, resourcesId);
        }catch (Exception e){
            return error(30000, "对比失败请重试！");
        }
        return  success(String.valueOf(result));
    }

}
