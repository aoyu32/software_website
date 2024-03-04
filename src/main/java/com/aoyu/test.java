package com.aoyu;

import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.ServletOutputStream;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.FileInputStream;
import java.io.IOException;

@WebServlet("/test")
public class test extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

        doPost(req,resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {


        String filename = req.getParameter("filename");

        ServletContext servletContext = this.getServletContext();

        String realPath = servletContext.getRealPath("imagefiles/"+ filename);

        System.out.println(realPath);

        FileInputStream fileInputStream = new FileInputStream(realPath);

        String mimeType = servletContext.getMimeType(filename);

        resp.setHeader("content-type",mimeType);

        resp.setHeader("content-disposition","attachment;filename="+filename);

        ServletOutputStream outputStream = resp.getOutputStream();

        byte[] buff = new byte[2048];

        int len = 0;

        while ((len = fileInputStream.read(buff)) != -1){

            outputStream.write(buff,0,len);

        }




    }
}
