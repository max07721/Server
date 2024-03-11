package com.project.demo.util;

import com.itextpdf.text.BaseColor;
import com.itextpdf.text.Element;
import com.itextpdf.text.Font;
import com.itextpdf.text.Paragraph;
import com.itextpdf.text.pdf.BaseFont;
import com.itextpdf.text.pdf.PdfPCell;
import com.itextpdf.text.pdf.PdfPTable;
import com.project.demo.entity.ExperimentalReport;

import java.lang.reflect.Field;
import java.lang.reflect.Method;
import java.util.List;

public class PDFUtils {

    static BaseFont baseFont = null;

    static {
        try {
            baseFont = BaseFont.createFont("STSong-Light", "UniGB-UCS2-H", BaseFont.NOT_EMBEDDED);
        } catch (Exception e) {
            // TODO: handle exception
            e.printStackTrace();
        }
    }

    /**
     * PDF大标题字体
     */
    public static Font PDFTITLEFONT = new Font(baseFont, 16, Font.BOLD);

    /**
     * PDF小标题字体
     */
    public static Font PDFTITLEFONT1 = new Font(baseFont, 13, Font.NORMAL);

    /**
     * 表格宽度百分比
     */
    public static Integer WIDTHPERCENTAGE = 96;

    /**
     * 表格标题字体
     */
    public static Font TITLEFONT = new Font(baseFont, 12, Font.NORMAL);

    /**
     * 翻页加载表头
     */
    public static Integer HEADERROWS = 1;

    /**
     * 翻页不加载表头
     */
    public static Integer NOHEADERROWS = 0;

    /**
     * 表格内容字体
     */
    public static Font CONTENTFONT = new Font(baseFont, 9, Font.NORMAL);

    /**
     * PDF表格样式
     */
    private static PdfPCell cell = new PdfPCell();

    /**
     * 获取表格
     */
    public static PdfPCell getCell() {
        // 水平居中
        cell.setHorizontalAlignment(Element.ALIGN_LEFT);
        // 垂直居中
        cell.setVerticalAlignment(Element.ALIGN_MIDDLE);
        // 边距
        cell.setPadding(1);
        // 行高
        cell.setMinimumHeight(22);
//        cell.setBorderColor(BaseColor.BLACK);
        // 不换行
//        cell.setNoWrap(true);
        // 颜色淡化
        // cell.setBorderColor(Color.decode("#EBEEF5"));
        cell.setPadding(3);
        cell.disableBorderSide(15);
        return cell;
    }

    /**
     * 获取表格并赋值
     */
    public static PdfPCell getCell(Paragraph content) {
        cell = getCell();
        // 设置内容
        cell.setPhrase(content);
        return cell;
    }

    /**
     * 生成pdf*
     *
     * @param table
     * @param cell
     */
    public static void setTableStyle(PdfPTable table, PdfPCell cell) {
//			设置表格样式
        table.setLockedWidth(true);
        table.setTotalWidth(500);
        table.setHorizontalAlignment(Element.ALIGN_LEFT);
//			设置单元格样式
        cell.setMinimumHeight(35);
        cell.setHorizontalAlignment(Element.ALIGN_CENTER);
        cell.setVerticalAlignment(Element.ALIGN_MIDDLE);
        cell.setBackgroundColor(BaseColor.WHITE);
        cell.setBorder(0);
//        cell.setBorderWidthTop(0.1f);
//        cell.setBorderWidthBottom(0.1f);
//        cell.setBorderWidthLeft(0.1f);
//        cell.setBorderWidthRight(0.1f);
//        cell.setBorderColorBottom(BaseColor.BLACK);
//        cell.setBorderColorLeft(BaseColor.BLACK);
//        cell.setBorderColorRight(BaseColor.BLACK);
//        cell.setBorderColorTop(BaseColor.BLACK);
        cell.setPadding(3);
    }

    public static PdfPTable getPDFTable(int[] tableWidth, String[] titles, List<Object> contents, int headerRows) throws Exception {
        // 创建表格对象
        // 列数
        PdfPTable table = new PdfPTable(titles.length);

        // 表格宽度百分比
        table.setWidthPercentage(WIDTHPERCENTAGE);

        table.setSpacingBefore(20);

        table.setSpacingAfter(20);

        // 列宽百分比
        if (tableWidth != null) {
            table.setWidths(tableWidth);
        }

        // 翻页加载表头
        if (headerRows == HEADERROWS) {
            table.setHeaderRows(HEADERROWS);

        }

        // 标题集合
        String[] pdfTitles = titles;
        if (pdfTitles != null && pdfTitles.length > 0) {
            // 标题
            for (String pdfTitle : pdfTitles) {
                PdfPCell title = getCell(new Paragraph(pdfTitle, TITLEFONT));
                table.addCell(title);
            }
        }
        // 内容集合
        if (contents != null && contents.size() > 0) {
            Field[] fields = contents.getClass().getDeclaredFields();
            String[] fieldNames = new String[fields.length];
            for (int i = 0; i < fields.length; i++) {
                fieldNames[i] = fields[i].getName();
            }
        }

        // 内容集合
        if (contents != null && contents.size() > 0) {
            for (Object obj : contents) {
                Field[] fields = obj.getClass().getDeclaredFields();
                String[] fieldNames = new String[fields.length];
                for (int i = 0; i < fields.length; i++) {
                    fieldNames[i] = fields[i].getName();
                    String firstLetter = fieldNames[i].substring(0, 1).toUpperCase();
                    String getter = "get" + firstLetter + fieldNames[i].substring(1);
                    Method method = obj.getClass().getMethod(getter, new Class[]{});
                    Object value = method.invoke(obj, new Object[]{});
                    PdfPCell content = getCell(new Paragraph(String.valueOf(value), CONTENTFONT));
                    table.addCell(content);
                }
                // 撑行数，否则最后一行会消失
                table.addCell("");
                table.completeRow();
            }
        }
        return table;
    }

    /**
     * 根据ExperimentalReport生成pdf*
     *
     * @param tableWidth
     * @param titles
     * @param contents
     * @param headerRows
     * @return
     * @throws Exception
     */
    public static PdfPTable getPDFTableByObjec(int[] tableWidth, String[] titles, ExperimentalReport contents, int headerRows) throws Exception {
        // 创建表格对象
        // 列数
        PdfPTable table = new PdfPTable(6);

        // 表格宽度百分比
        table.setWidthPercentage(WIDTHPERCENTAGE);

        table.setSpacingBefore(20);

        table.setSpacingAfter(20);

        // 列宽百分比
        if (tableWidth != null) {
            table.setWidths(tableWidth);
        }

        // 翻页加载表头
        if (headerRows == HEADERROWS) {
            table.setHeaderRows(HEADERROWS);

        }
        // 标题集合
        String[] pdfTitles = titles;
        if (pdfTitles != null && pdfTitles.length > 0 && contents != null) {
            for (int i = 1; i < 11; i++) {
                switch (i) {
                    case 1: //第一行  "课程名称", "学生姓名", "教师姓名",
                        PdfPCell title = getCell(new Paragraph(pdfTitles[0], TITLEFONT));
                        table.addCell(title);
                        PdfPCell content = getCell(new Paragraph(String.valueOf(contents.getCourse_name()), CONTENTFONT));
                        table.addCell(content);
                        PdfPCell title1 = getCell(new Paragraph(pdfTitles[1], TITLEFONT));
                        table.addCell(title1);
                        PdfPCell content1 = getCell(new Paragraph(String.valueOf(contents.getStudent_name()), CONTENTFONT));
                        table.addCell(content1);
                        PdfPCell title2 = getCell(new Paragraph(pdfTitles[2], TITLEFONT));
                        table.addCell(title2);
                        PdfPCell content2 = getCell(new Paragraph(String.valueOf(contents.getTeachers_name()), CONTENTFONT));
                        table.addCell(content2);
                        break;
                    case 2: // 第二行"实验时间","实验地点","实验成绩",
                        PdfPCell title3 = getCell(new Paragraph(pdfTitles[3], TITLEFONT));
                        table.addCell(title3);
                        PdfPCell content3 = getCell(new Paragraph(String.valueOf(contents.getExperimental_time()), CONTENTFONT));
                        table.addCell(content3);
                        PdfPCell title4 = getCell(new Paragraph(pdfTitles[4], TITLEFONT));
                        table.addCell(title4);
                        PdfPCell content4 = getCell(new Paragraph(String.valueOf(contents.getExperimental_location()), CONTENTFONT));
                        table.addCell(content4);
                        PdfPCell title5 = getCell(new Paragraph(pdfTitles[5], TITLEFONT));
                        table.addCell(title5);
                        PdfPCell content5 = getCell(new Paragraph(String.valueOf(contents.getExperimental_results()), CONTENTFONT));
                        table.addCell(content5);
                        break;
                    case 3: // "一、实验题目",
                        PdfPCell title6 = getCell(new Paragraph(pdfTitles[6], TITLEFONT));
                        title6.setColspan(6);
                        table.addCell(title6);
                        break;
                    case 4:
                        PdfPCell content6 = getCell(new Paragraph(String.valueOf(contents.getExperimental_topic()), CONTENTFONT));
                        content6.setMinimumHeight(66);
                        content6.setColspan(6);
                        content6.setVerticalAlignment(Element.ALIGN_TOP);
                        table.addCell(content6);
                        break;
                    case 5:  // "二、实验内容",
                        PdfPCell title7 = getCell(new Paragraph(pdfTitles[7], TITLEFONT));
                        title7.setColspan(6);
                        table.addCell(title7);
                        break;
                    case 6:
                        PdfPCell content7 = getCell(new Paragraph(String.valueOf(contents.getExperimental_content()), CONTENTFONT));
                        content7.setMinimumHeight(66);
                        content7.setColspan(6);
                        content7.setVerticalAlignment(Element.ALIGN_TOP);
                        table.addCell(content7);
                        break;
                    case 7: // "三、实验解答",
                        PdfPCell title8 = getCell(new Paragraph(pdfTitles[8], TITLEFONT));
                        title8.setColspan(6);
                        table.addCell(title8);
                        break;
                    case 8:
                        PdfPCell content8 = getCell(new Paragraph(String.valueOf(contents.getExperimental_content()), CONTENTFONT));
                        content8.setMinimumHeight(66);
                        content8.setColspan(6);
                        content8.setVerticalAlignment(Element.ALIGN_TOP);
                        table.addCell(content8);
                        break;
                    case 9: // "四、批阅评语"
                        PdfPCell title9 = getCell(new Paragraph(pdfTitles[9], TITLEFONT));
                        title9.setColspan(6);
                        table.addCell(title9);
                        break;
                    case 10:
                        PdfPCell content9 = getCell(new Paragraph(String.valueOf(contents.getReview_comments()), CONTENTFONT));
                        content9.setMinimumHeight(66);
                        content9.setColspan(6);
                        content9.setVerticalAlignment(Element.ALIGN_TOP);
                        table.addCell(content9);
                        break;
                    default:
                        break;
                }
                // 撑行数，否则最后一行会消失
//                table.addCell("");
                table.completeRow();
            }
        }
        return table;
    }

    /**
     * @param content 段落内容
     * @param top     上边距
     * @param bottom  下边距
     * @param align   居中
     * @param type    标题类别
     * @return
     * @throws Exception
     */
    public static Paragraph getPDFParagraph(String content, int top, int bottom, int align, int type) throws Exception {
        Paragraph paragraph = null;
        if (type == 1) {
            paragraph = new Paragraph(content, PDFTITLEFONT);
        } else {
            paragraph = new Paragraph(content, PDFTITLEFONT1);
        }
        paragraph.setSpacingAfter(top);
        paragraph.setSpacingBefore(bottom);
        paragraph.setAlignment(align);
        return paragraph;
    }
}