package com.aoyu;
import com.Object.User;
import com.util.DatabaseOperation;
import com.util.GetFormData;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;


@WebServlet("/login")
public class Login extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {


        //获取登录表单数据
        String[] loginFormData = GetFormData.getTwoData(req,"loginName","loginPassword");

        System.out.println("登录姓名"+loginFormData[0]);
        System.out.println("登录密码"+loginFormData[1]);

        //验证用户名和密码是否正确
        User user = DatabaseOperation.selectOneUserData("t_user_login","userName",loginFormData[0]);

        if (user.getUserName() == null){

            req.setAttribute("loginResult","用户不存在");

            req.getRequestDispatcher("jspfiles/Login.jsp").forward(req,resp);

        }else{

            if (loginFormData[1].equals(user.getUserPassword())){

                String rememberValue = req.getParameter("remember");

                Cookie c_userName = new Cookie("username", user.getUserName());
                Cookie c_userPassword = new Cookie("userpassword",user.getUserPassword());
                Cookie c_rememberValue = new Cookie("rememberValue",rememberValue);

                if ("1".equals(rememberValue)){

                    c_userName.setMaxAge(60*60*24*7);
                    c_userPassword.setMaxAge(60*60*24*7);
                    c_rememberValue.setMaxAge(60*60*24*7);

                    resp.addCookie(c_userName);
                    resp.addCookie(c_userPassword);
                    resp.addCookie(c_rememberValue);

                }else {

                    c_userName.setMaxAge(0);
                    c_userPassword.setMaxAge(0);
                    c_rememberValue.setMaxAge(0);

                    resp.addCookie(c_userName);
                    resp.addCookie(c_userPassword);
                    resp.addCookie(c_rememberValue);

                }

                req.setAttribute("userName",user.getUserName());

                req.getRequestDispatcher("jspfiles/Home2.jsp").forward(req,resp);


            }else {

                req.setAttribute("loginResult","用户名或密码错误");

                System.out.println(user.getUserPassword());

                req.getRequestDispatcher("jspfiles/Login.jsp").forward(req,resp);

            }

        }

    }
}
