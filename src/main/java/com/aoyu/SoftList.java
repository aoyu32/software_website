package com.aoyu;

import com.Object.Soft;
import com.alibaba.fastjson.JSON;
import com.util.DatabaseOperation;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.ArrayList;

@WebServlet("/softInfo")
public class SoftList extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        doPost(req,resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

        ArrayList<Soft> softList = DatabaseOperation.selectSoftAllData("t_soft");

        String softInfo = JSON.toJSONString(softList);

        System.out.println("post");
        System.out.println(softInfo);

        resp.setContentType("text/json;charset=utf-8");

        resp.getWriter().write(softInfo);

    }
}
