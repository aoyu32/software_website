package com.util;

import com.Object.Soft;
import com.Object.SoftDetail;
import com.Object.User;

import java.sql.*;
import java.util.ArrayList;

public class DatabaseOperation {

    /**
     * 连接Mysql数据库
     * @return 数据库连接对象
     * @throws Exception 所有异常
     */
    private static Connection connectionMysql(String databaseName) throws Exception {

        String MysqlURL = "jdbc:mysql://localhost:3306/"+ databaseName + "?useUnicode=true&characterEncoding=UTF-8";
        String MysqlUserName = "root";
        String MysqlPassword = "aoyu";

        //连接数据库
        Class.forName("com.mysql.cj.jdbc.Driver");
        Connection connection = DriverManager.getConnection(MysqlURL,MysqlUserName,MysqlPassword);

        return connection;

    }

    /**
     * 插入数据
     * @param MysqlTableName 要插入的表
     * @param insertUserName 插入的用户姓名
     * @param insertPassword 插入的密码
     * @param insertEmail 插入的邮箱
     * @return 返回插入是否成功
     * @throws Exception 抛出所有异常
     */
    public static boolean insertData(String MysqlTableName,String insertUserName,String insertEmail,String insertPassword) {

        boolean flag = false;

        try {
            //获取数据库连接对象
            Connection connection = connectionMysql("aoyuresourcebase");

            String insertSql = "insert into "+MysqlTableName+"(username,userEmail,userPassword) values(?,?,?)";
            PreparedStatement exeSql = connection.prepareStatement(insertSql);

            exeSql.setString(1,insertUserName);
            exeSql.setString(2,insertEmail);
            exeSql.setString(3,insertPassword);

            int exeResult = exeSql.executeUpdate();

            if(exeResult != 0){

                flag = true;

            }else {
                flag = false;
            }
        } catch (Exception e) {
            e.printStackTrace();
        }

        return flag;

    }

    /**
     * 查询单条数据
     * @param MysqlTableName 要查询的表名
     * @param selectColumnName 要查询的字段
     * @param selectValueName 查询的值
     * @return 返回user对象
     */
    public static User selectOneUserData(String MysqlTableName,String selectColumnName,String selectValueName){

        User user = new User();

        try {
            //获取数据库连接对象
            Connection connection = connectionMysql("aoyuresourcebase");

            String selectSql = "select * from "+MysqlTableName+" where "+ selectColumnName +"=?";

            PreparedStatement exeSql = connection.prepareStatement(selectSql);

            exeSql.setString(1,selectValueName);

            ResultSet rs = exeSql.executeQuery();

            while (rs.next()) {

                user.setId(rs.getInt("userId"));
                user.setUserName(rs.getString("userName"));
                user.setUserPassword(rs.getString("userPassword"));
                user.setUserEmail(rs.getString("userEmail"));

            }

            if (rs.next()){

                rs.close();
                exeSql.close();
                connection.close();

            }

        } catch (Exception e) {
            e.printStackTrace();
        }

        return user;


    }

    public static void updateUserData(String MysqlTableName,String updateColumnName,String updateName,String updateValue){

        try {
            //获取数据库连接对象
            Connection connection = connectionMysql("aoyuresourcebase");

            String selectSql = "update "+ MysqlTableName + " set " + updateColumnName +"=" + updateValue + " where "+ "userEmail=?";

            System.out.println(selectSql);

            PreparedStatement exeSql = connection.prepareStatement(selectSql);

            exeSql.setString(1,updateName);

            int rs = exeSql.executeUpdate();

            if (rs != 0){

                System.out.println("success");

            }
        } catch (Exception e) {
            throw new RuntimeException(e);
        }

    }

    /**
     * 查询t_soft表中所有数据
     * @param MysqlTableName 表名
     * @return 返回User对象集合
     */
    public static ArrayList<Soft> selectSoftAllData(String MysqlTableName){

        Soft soft;

        ArrayList<Soft> softList = new ArrayList<>();

        try {
            Connection connection = connectionMysql("aoyuresourcebase");

            String selectSql = "select * from "+MysqlTableName;

            PreparedStatement exeSql = connection.prepareStatement(selectSql);

            ResultSet rs = exeSql.executeQuery();

            while (rs.next()) {

                soft = new Soft();

                soft.setSoftId(rs.getInt("softId"));
                soft.setSoftName(rs.getString("softName"));
                soft.setSoftCategory(rs.getString("softCategory"));
                soft.setSoftIntroduce(rs.getString("softIntroduce"));
                soft.setSoftDownload(rs.getInt("softDownload"));
                soft.setSoftIcon(rs.getString("softIcon"));
                soft.setSoftAddress(rs.getString("softAddress"));
                soft.setSoftContents(rs.getString("softContents"));

                softList.add(soft);
            }

            if (rs.next()){

                rs.close();
                exeSql.close();
                connection.close();

            }
        } catch (Exception e) {
            throw new RuntimeException(e);
        }

        return softList;

    }

    /**
     * 模糊查询soft信息
     * @param MysqlTableName 表名
     * @param selectColumnName1 字段1
     * @param selectColumnName2 字段2
     * @param selectValueName 要查询的值
     * @return soft对象集合
     */
    public static ArrayList<Soft> selectOneSoftData(String MysqlTableName , String selectColumnName1,String selectColumnName2,String selectValueName){

        ArrayList<Soft> searchSoftList = new ArrayList<>();

        Soft soft;

        if (selectValueName.equals("")){

            return searchSoftList;

        }else {

            try {
                Connection connection = connectionMysql("aoyuresourcebase");

                String selectSql = "select * from " + MysqlTableName + " where "+ selectColumnName1 +" like ?" + " or "
                        + selectColumnName2 + " like ?";

                PreparedStatement exeSql = connection.prepareStatement(selectSql);

                exeSql.setString(1,selectValueName + "%");
                exeSql.setString(2,"%" + selectValueName + "%");

                ResultSet rs = exeSql.executeQuery();

                while (rs.next()) {

                    soft = new Soft();

                    soft.setSoftId(rs.getInt("softId"));
                    soft.setSoftName(rs.getString("softName"));
                    soft.setSoftCategory(rs.getString("softCategory"));
                    soft.setSoftIntroduce(rs.getString("softIntroduce"));
                    soft.setSoftDownload(rs.getInt("softDownload"));
                    soft.setSoftIcon(rs.getString("softIcon"));
                    soft.setSoftAddress(rs.getString("softAddress"));
                    soft.setSoftContents(rs.getString("softContents"));

                    searchSoftList.add(soft);

                }

                if (rs.next()){

                    rs.close();
                    exeSql.close();
                    connection.close();

                }
            } catch (Exception e) {
                throw new RuntimeException(e);
            }

            return searchSoftList;

        }

        }

        public static SoftDetail selectSoftDetailData(String MysqlTableName,String selectColumnName,String selectValueName) {

            SoftDetail softDetails = new SoftDetail();;

            try {
                Connection connection = connectionMysql("aoyuresourcebase");

                String selectSql = "select * from " + MysqlTableName + " where " + selectColumnName + "=?";

                PreparedStatement exeSql = connection.prepareStatement(selectSql);

                exeSql.setString(1,selectValueName);

                ResultSet rs = exeSql.executeQuery();

                while (rs.next()) {

                    softDetails.setSoftName(rs.getString("softName"));
                    softDetails.setSoftCrack(rs.getString("softCrack"));
                    softDetails.setSoftSystem(rs.getString("softSystem"));
                    softDetails.setSoftVersion(rs.getString("softVersion"));
                    softDetails.setSoftSize(rs.getString("softSize"));
                    softDetails.setSoftImg(rs.getString("softImg"));
                    softDetails.setSoftOverview(rs.getString("softOverview"));
                    softDetails.setSoftComments1(rs.getInt("softComments1"));
                    softDetails.setSoftComments2(rs.getInt("softComments2"));
                    softDetails.setSoftDownload(rs.getString("softDownload"));

                }

                if (rs.next()) {

                    rs.close();
                    exeSql.close();
                    connection.close();

                }

            } catch (Exception e) {
                throw new RuntimeException(e);
            }


            return softDetails;
        }

        public static void updateSoftComments(String updateColumnName,int updateCommentsNumValue,String updateSoftName){

            boolean flag = false;

            try {
                Connection connection = connectionMysql("aoyuresourcebase");

                String updateSql = "update t_soft_info set " + updateColumnName + "=" + updateCommentsNumValue + " where softName=?";

                System.out.println(updateSql);

                PreparedStatement exeSql = connection.prepareStatement(updateSql);

                exeSql.setString(1,updateSoftName);

                int rs = exeSql.executeUpdate();

                if (rs != 0){

                    flag = true;

                }
            } catch (Exception e) {
                throw new RuntimeException(e);
            }


        }

        public static String selectSoftOneColumnData(String selectColumnName,String selectValue){

            String selectResult = "";



            try {
                Connection connection = connectionMysql("aoyuresourcebase");

                String selectSql = "select "+ selectColumnName + " from t_soft where softName=?" ;


                PreparedStatement exeSql = connection.prepareStatement(selectSql);

                exeSql.setString(1,selectValue);

                ResultSet rs = exeSql.executeQuery();

                if (selectColumnName.equals("softAddress")){

                    while (rs.next()){

                        selectResult = rs.getString("softAddress");

                    }

                }
                if (selectColumnName.equals("softDownload")){

                    while (rs.next()){

                        selectResult = String.valueOf(rs.getInt("softDownload"));

                    }

                }


            } catch (Exception e) {
                throw new RuntimeException(e);
            }

            return selectResult;

        }

        //更新下载次数
        public static void updateSoftOneCul(int softDownloadNum,String updateColumnName,String updateValueName){

            try {
                Connection connection = connectionMysql("aoyuresourcebase");

                String selectSql = "update t_soft set " + updateColumnName + "=" + softDownloadNum + " where softName=?" ;


                PreparedStatement exeSql = connection.prepareStatement(selectSql);

                exeSql.setString(1,updateValueName);

                int rs = exeSql.executeUpdate();

                if (rs != 0){

                    System.out.println("update success");

                }
            } catch (Exception e) {
                throw new RuntimeException(e);
            }


        }

        public static void insertUserMessage(String messageUserName,String messageText){

            try {
                Connection connection = connectionMysql("aoyuresourcebase");

                String insertSql = "insert into t_user_feedback(messageUserName,messageText) values(?,?)";

                PreparedStatement exeSql = connection.prepareStatement(insertSql);

                exeSql.setString(1,messageUserName);
                exeSql.setString(2,messageText);

                int rs = exeSql.executeUpdate();

                if (rs != 0){

                    System.out.println("insert success");

                }
            } catch (Exception e) {
                throw new RuntimeException(e);
            }


        }

    public static void insertUserContribute(String contributeUserName,String contributeName,String contributeType,String contributeText){

        try {
            Connection connection = connectionMysql("aoyuresourcebase");

            String insertSql = "insert into t_user_contribute(contributeUserName,contributeName,contributeType,contributeText) values(?,?,?,?)";

            PreparedStatement exeSql = connection.prepareStatement(insertSql);

            exeSql.setString(1,contributeUserName);
            exeSql.setString(2,contributeName);
            exeSql.setString(3,contributeType);
            exeSql.setString(4,contributeText);

            int rs = exeSql.executeUpdate();

            if (rs != 0){

                System.out.println("insert success");

            }
        } catch (Exception e) {
            throw new RuntimeException(e);
        }


    }


}
