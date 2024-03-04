package com.aoyu;

import com.Object.User;
import com.util.DatabaseOperation;
import com.util.GetFormData;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet("/register")
public class Register extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

        //1.设置编码、输出类
        req.setCharacterEncoding("utf-8");
        resp.setContentType("text/html;charset=UTF-8");


        //获取状态码
        String status = req.getParameter("status");

        if (status.equals("1")){

            //验证用户名是否存在
            checkNameOrEmail(req,resp,"username");

        }else{

            //验证邮箱是否存在
            checkNameOrEmail(req,resp,"email");

        }

        if (status.equals("0")){

            //提交的注册表单信息符号规则，将数据插入到数据库
            //获取注册表单的各项数据
            String[] registerData = GetFormData.getThreeData(req,"registerName","registerEmail","registerPassword");

            //插入数据
            boolean registerResult = DatabaseOperation.insertData("t_user_login",registerData[0],registerData[1],registerData[2]);

            if (registerResult){

                req.setAttribute("registerResult","注册成功，请登录");

                req.getRequestDispatcher("jspfiles/Login.jsp").forward(req,resp);

            }else{

                req.setAttribute("registerResult","注册失败，请重新注册");

                req.getRequestDispatcher("jspfiles/Login.jsp").forward(req,resp);

            }

        }

    }

    /**
     * 验证用户名或邮箱是否存在的方法
     * @param req 请求对象
     * @param resp 响应对象
     * @param inputName 要验证用户名还是邮箱
     * @throws IOException 抛所有异常
     */
    public void checkNameOrEmail(HttpServletRequest req,HttpServletResponse resp,String inputName) throws IOException {

        if(inputName.equals("username")){

            String inputUserName = req.getParameter(inputName);

            System.out.println(inputUserName);

            User user = DatabaseOperation.selectOneUserData("t_user_login","userName",inputUserName);

            System.out.println("用户名："+user);

            if (user.getUserName() != null){

                System.out.println("true");

                resp.getWriter().write("true");

            }else{

                System.out.println("false");
                resp.getWriter().write("false");

            }
        }

        if (inputName.equals("email")){

            String inputUserEmail = req.getParameter(inputName);

            System.out.println(inputUserEmail);

            User user = DatabaseOperation.selectOneUserData("t_user_login","userEmail",inputUserEmail);

            System.out.println("邮箱："+user);

            if (user.getUserEmail() != null){



                System.out.println("true");
                resp.getWriter().write("true");

            }else{

                System.out.println("false");
                resp.getWriter().write("false");

            }

        }

    }
}
