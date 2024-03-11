package com.project.demo.service;

import com.project.demo.entity.ExperimentalReport;
import com.project.demo.service.base.BaseService;
import com.project.demo.util.PDFUtils;
import com.project.demo.util.SimilarityTwoUtils;
import org.springframework.stereotype.Service;
import com.itextpdf.text.Document;
import com.itextpdf.text.Element;
import com.itextpdf.text.PageSize;
import com.itextpdf.text.pdf.PdfPTable;
import com.itextpdf.text.pdf.PdfWriter;

import java.io.OutputStream;
import java.util.*;


/**
 * 实验报告：(ExperimentalReport)表服务接口
 */
@Service
public class ExperimentalReportService extends BaseService<ExperimentalReport> {

    private static final String BEGIN_STR = "<p>";
    private static final String AFTER_STR = "</p>";

    public void exportPDF(OutputStream baos, String experimental_report_id) {
        // 实例化文档对象
        Document document = new Document(PageSize.A4, 10, 10, 10, 10);
        try {
            // 创建 PdfWriter 对象 文件的输出路径+文件的实际名称
            PdfWriter.getInstance(document, baos);
            // writer.setPageEvent(new PDFMaker());
            document.open();// 打开文档
            // 标题
            String[] title = {"课程名称", "学生姓名", "教师姓名", "实验时间","实验地点","实验成绩","一、实验题目",  "二、实验内容",  "三、实验解答", "四、批阅评语"};
            // 列宽
            int tableWidth[] = {10, 10, 10, 10, 10, 10};
            Map<String, String> query = new HashMap<>(16);
            query.put("experimental_report_id", experimental_report_id);
            ExperimentalReport experimentalReport = this.findOne(query);
            // 创建一个段落
            document.add(PDFUtils.getPDFParagraph("实验报告",0, 20, Element.ALIGN_CENTER, 1));
            if (!Objects.isNull(experimentalReport)) {
                // 获取PDFTable
                PdfPTable table = PDFUtils.getPDFTableByObjec(tableWidth, title, experimentalReport, 0);
                // 添加进文档
                document.add(table);
            }

        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            try {
                // 关闭文档
                if (document != null) {
                    document.close();
                }
                if (document != null) {
                    baos.flush();
                    baos.close();
                }
            } catch (Exception e) {
                e.printStackTrace();
            }
        }

    }

    public double similarity(String targetId, String resourcesId) {
        // 获取第一个对象
        Map<String, String> targetQuery = new HashMap<>(16);
        targetQuery.put("experimental_report_id", targetId);
        ExperimentalReport targetExperimentalReport = this.findOne(targetQuery);
        // 获取第二个对象
        Map<String, String> resourcesQuery = new HashMap<>(16);
        resourcesQuery.put("experimental_report_id", resourcesId);
        ExperimentalReport resourcesExperimentalReport = this.findOne(resourcesQuery);
        if(null != targetExperimentalReport && null != resourcesExperimentalReport){
            // 获取每个对象的文本内容
            String targetExperimentalSolution = targetExperimentalReport.getExperimental_solution();
            String resourcesExperimentalSolution = resourcesExperimentalReport.getExperimental_solution();
            // 删减 HTML 标签
            targetExperimentalSolution = getSubString(targetExperimentalSolution);
            resourcesExperimentalSolution = getSubString(resourcesExperimentalSolution);
            // 计算相似度
            SimilarityTwoUtils mySimHash_1 = new SimilarityTwoUtils(targetExperimentalSolution, 64);
            SimilarityTwoUtils mySimHash_2 = new SimilarityTwoUtils(resourcesExperimentalSolution, 64);
            return mySimHash_1.getSimilar(mySimHash_2);
        }
        return 0L;
    }

    /**
     * 截取标签 <p> </p>
     */
    private String getSubString(String str){
        boolean targetBeginContains = str.contains(BEGIN_STR);
        boolean targetAfterContains = str.contains(AFTER_STR);
        if(targetBeginContains){
            str = str.substring(3,str.length());
        }
        if(targetAfterContains){
            int length = str.length();
            str = str.substring(0,length-4);
        }
        return str;
    };
}
