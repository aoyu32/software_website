package com.aoyu;

import com.Object.Soft;
import com.alibaba.fastjson.JSON;
import com.util.DatabaseOperation;
import com.util.GetFormData;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.net.URLDecoder;
import java.net.URLEncoder;
import java.util.ArrayList;

@WebServlet("/search")
public class SearchSoft extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
    doPost(req,resp);

    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

        //设置请求数据编码格式（防止中文乱码）
        req.setCharacterEncoding("UTF-8");

        //获取要搜索的请求数据
        String searchValue = GetFormData.getOneData(req,"inputValue");

        String searchValue2 = URLDecoder.decode(searchValue, "UTF-8");

        System.out.println(searchValue2);

        //查询要搜索的数据
        ArrayList<Soft> searchSoftList = DatabaseOperation.selectOneSoftData("t_soft","softName","softCategory",searchValue2);

        System.out.println(searchSoftList);

        //将查询结果通过json返回给前台

        String softSearchInfo = JSON.toJSONString(searchSoftList);

        System.out.println(softSearchInfo);

        resp.setContentType("text/json;charset=utf-8");

        resp.getWriter().write(softSearchInfo);


    }
}
