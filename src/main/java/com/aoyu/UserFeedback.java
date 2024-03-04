package com.aoyu;

import com.util.DatabaseOperation;
import com.util.GetFormData;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.net.URLDecoder;

@WebServlet("/userfeedback")
public class UserFeedback extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

        System.out.println("post");

        req.setCharacterEncoding("utf-8");

        String status = req.getParameter("status");
        String userName = req.getParameter("userName");


        if (status.equals("messageData")){

            String messageData = req.getParameter("inputData");


            String messageData2 = URLDecoder.decode(messageData, "UTF-8");

            System.out.println(messageData2);
            System.out.println(userName);
            DatabaseOperation.insertUserMessage(userName,messageData2);


        }
        if (status.equals("contributeData")){

            System.out.println("fjaksl");
            String[] contributeArr = GetFormData.getThreeData(req, "dataOfName", "dataOfRadio", "dataOfText");

            //中文编码
            String dataOfName = URLDecoder.decode(contributeArr[0], "UTF-8");
            String dataOfRadio = contributeArr[1];
            String dataOfText = URLDecoder.decode(contributeArr[2], "UTF-8");

            System.out.println(dataOfName);
            System.out.println(dataOfRadio);
            System.out.println(dataOfText);

            DatabaseOperation.insertUserContribute(userName,dataOfName,dataOfRadio,dataOfText);

        }

    }
}
