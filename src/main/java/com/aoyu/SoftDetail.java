package com.aoyu;

import com.alibaba.fastjson.JSON;
import com.util.DatabaseOperation;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.net.URLDecoder;
import java.nio.charset.StandardCharsets;

@WebServlet("/detail")
public class SoftDetail extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

        System.out.println("get");

        req.setCharacterEncoding("utf-8");

        //解决中文乱码
        String softName = req.getParameter("softName");

        String softIcon = req.getParameter("softIcon");

        req.setAttribute("softName", getTranscoding(softName));

        req.setAttribute("softIcon",getTranscoding(softIcon));

        req.getRequestDispatcher("jspfiles/Detail.jsp").forward(req,resp);

    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

        req.setCharacterEncoding("utf-8");

        String status = req.getParameter("status");

        System.out.println(status);

        if (status.equals("softInformation")){

            System.out.println("post");

            String softName1 = req.getParameter("softname");

            System.out.println("前台数据："+softName1);

            String softDetailName = new String(softName1.getBytes("ISO8859_1"), StandardCharsets.UTF_8);

            System.out.println(softDetailName);

            //查询softDetail数据
            com.Object.SoftDetail softDetail = DatabaseOperation.selectSoftDetailData("t_soft_info", "softName", softDetailName);

            String softDetailInfo = JSON.toJSONString(softDetail);

            System.out.println(softDetailInfo);

            resp.setContentType("text/json;charset=utf-8");

            resp.getWriter().write(softDetailInfo);

        }

        if (status.equals("commentsValue")){

            String commentsValue = req.getParameter("commentvalue");

            String softName = req.getParameter("softName");

            String softName2 = URLDecoder.decode(softName, "UTF-8");

            int commentsNum = Integer.parseInt(req.getParameter("commentsNum"));

            commentsNum++;

            System.out.println(softName2);

            System.out.println("comments数："+commentsNum);

            System.out.println("点赞type:"+commentsValue);

            if (commentsValue.equals("good")) {

                DatabaseOperation.updateSoftComments("softComments1",commentsNum,softName2);

            }
            if (commentsValue.equals("bad")){

                DatabaseOperation.updateSoftComments("softComments2",commentsNum,softName2);

            }

            com.Object.SoftDetail softComments = DatabaseOperation.selectSoftDetailData("t_soft_info", "softName", softName2);

            int[] commentsQueryNum = new int[2];

            commentsQueryNum[0] = softComments.getSoftComments1();
            commentsQueryNum[1] = softComments.getSoftComments2();

            String softCommentNum = JSON.toJSONString(commentsQueryNum);

            System.out.println(softCommentNum);

            resp.setContentType("text/json;charset=utf-8");

            resp.getWriter().write(softCommentNum);

        }



    }

    public static String getTranscoding(String name){

        byte[] bytes = name.getBytes(StandardCharsets.ISO_8859_1);

        name = new String(bytes,StandardCharsets.UTF_8);

        return name;

    }
}
