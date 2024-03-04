package com.aoyu;

import javax.mail.*;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;
import java.util.Properties;

/**
 * @BelongsProject: AoYuResourceLibrary
 * @BelongsPackage: com.aoyu
 * @Author: AoYu
 * @CreateTime: 2023-05-14  19:08
 * @Description: TODO
 * @Version: 1.0
 */

public class MailSend {

    private static final String USER_MAIL = "339983216@qq.com";
    private static final String PASSWORD = "pytrvqfmwkqucbbg";

    public static void main(String[] args) throws Exception {
        sendMail("3256515381@qq.com","你好","test邮件");
        System.out.println("send success");
    }

    public static boolean sendMail(String toHow,String text ,String title) throws Exception{
        final Properties props = new Properties();
        props.put("mail.smtp.auth", "true");
//            注意发送邮件的方法中，发送给谁的，发送给对应的app，※
//            要改成对应的app。扣扣的改成qq的，网易的要改成网易的。※
//            props.put("mail.smtp.host", "smtp.qq.com");
        props.put("mail.smtp.host", "smtp.qq.com");
        // 发件人的账号
        props.put("mail.user", USER_MAIL);
        //发件人的密码
        props.put("mail.password", PASSWORD);
        // 构建授权信息，用于进行SMTP进行身份验证
        Authenticator authenticator = new Authenticator() {
            @Override
            protected PasswordAuthentication getPasswordAuthentication() {
                // 用户名、密码
                String userName = props.getProperty("mail.user");
                String password = props.getProperty("mail.password");
                return new PasswordAuthentication(userName, password);
            }
        };
        // 使用环境属性和授权信息，创建邮件会话
        Session mailSession = Session.getInstance(props, authenticator);
        // 创建邮件消息
        MimeMessage message = new MimeMessage(mailSession);
        // 设置发件人
        String username = props.getProperty("mail.user");
        InternetAddress form = new InternetAddress(username);
        message.setFrom(form);
        // 设置收件人
        InternetAddress toAddress = new InternetAddress(toHow);
        message.setRecipient(Message.RecipientType.TO, toAddress);
        // 设置邮件标题
        message.setSubject(title);
        // 设置邮件的内容体
        message.setContent(text, "text/html;charset=UTF-8");
        // 发送邮件
        Transport.send(message);
        return true;
    }
}
