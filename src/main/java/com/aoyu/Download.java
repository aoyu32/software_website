package com.aoyu;

import com.util.DatabaseOperation;
import org.apache.commons.io.IOUtils;

import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.*;
import java.net.URLDecoder;

@WebServlet("/download")
public class Download extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

        doPost(req,resp);

    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

        req.setCharacterEncoding("utf-8");

        //获取软件名称
        String downloadSoftName = req.getParameter("downloadSoftName");

        //中文编码
        String downloadSoftName2 = URLDecoder.decode(downloadSoftName, "UTF-8");

        System.out.println(downloadSoftName2);

        //查询软件地址
        String softAddress = DatabaseOperation.selectSoftOneColumnData("softAddress",downloadSoftName2);

        System.out.println(softAddress);


        //获取项目路径
        ServletContext servletContext = this.getServletContext();

        String realPath = servletContext.getRealPath("softsourcefiles/"+ softAddress);

        System.out.println(realPath);


        //数据输入输出流
        File file = new File(realPath);

        InputStream inputFile = new FileInputStream(file);

        OutputStream outputFile = resp.getOutputStream();


        //设置响应数据大小
        resp.setContentLength((int) file.length());

        //获取文件类型
        String mimeType = servletContext.getMimeType(softAddress);

        System.out.println(mimeType);

        //设置响应头的文件类型
        resp.setHeader("content-type", mimeType);

        //设置响应头，浏览器将文件保存到本地
        resp.addHeader("content-Disposition", "attachment;filename=" + softAddress);

        //读写数据
        IOUtils.copy(inputFile,outputFile);

        outputFile.close();
        inputFile.close();

        softDownloadNumber(downloadSoftName2);

    }

    //处理下载次数
    public static void softDownloadNumber(String downloadSoftName){

        String softDownloadNumber = DatabaseOperation.selectSoftOneColumnData("softDownload",downloadSoftName);

        System.out.println(softDownloadNumber);

        int downloadNumber = Integer.parseInt(softDownloadNumber);

        //下载次数加1
        downloadNumber += 1;

        //更新数据库中下载次数
        DatabaseOperation.updateSoftOneCul(downloadNumber,"softDownload",downloadSoftName);


    }
}
