package com.aoyu;

import com.Object.User;
import com.util.DatabaseOperation;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.net.URLDecoder;

@WebServlet("/resetpwd")
public class ResetPassword extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

        //编码设置
        req.setCharacterEncoding("utf-8");

        //获取用户名
        String checkUserName = req.getParameter("checkusername");

        //获取请求类型
        String status = req.getParameter("status");



        if (status.equals("username")){

            //转码
            String checkUserName2 = URLDecoder.decode(checkUserName, "UTF-8");

            System.out.println(checkUserName2);

            User user = DatabaseOperation.selectOneUserData("t_user_login", "userName", checkUserName2);

            System.out.println(user);

            if (user.getUserName() != null){

                resp.getWriter().write("true");

            }else {

                resp.getWriter().write("false");

            }
        }
        if (status.equals("useremail")){

            //转码
            String checkUserName2 = URLDecoder.decode(checkUserName, "UTF-8");

            System.out.println(checkUserName2);

            User user = DatabaseOperation.selectOneUserData("t_user_login", "userName", checkUserName2);

            System.out.println(user);

            //获取用户输入的email
            String userEmail = req.getParameter("checkuseremail");

            //转码
            String userEmail2 = URLDecoder.decode(userEmail, "UTF-8");

            User user2 = DatabaseOperation.selectOneUserData("t_user_login", "userEmail", userEmail2);

            if (user.getUserEmail().equals(user2.getUserEmail())){

                resp.getWriter().write("true");

            }else {

                resp.getWriter().write("false");

            }

        }

        if (status.equals("setPassword")){

            String newPassword = req.getParameter("newPassword");

            String userEmail = req.getParameter("userEmail");

            DatabaseOperation.updateUserData("t_user_login","userPassword",userEmail,newPassword);

            req.setAttribute("resetResult","重置密码成功,请登录！");

            req.getRequestDispatcher("jspfiles/Login.jsp").forward(req,resp);

        }




    }
}
