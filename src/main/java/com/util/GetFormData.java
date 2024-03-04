package com.util;

import javax.servlet.http.HttpServletRequest;

public class GetFormData {

    /**
     * 获取一个表单返回数据
     * @param request 请求域对象
     * @param formName 要获取的表单数据的name值
     */
    public static String getOneData(HttpServletRequest request,String formName){

        //返回一个表单数据
        return request.getParameter(formName);

    }

    /**
     * 获取两个表单数据
     * @param request 请求域对象
     * @param formName1 要获取的表单数据的name值1
     * @param formName2 要获取的表单数据的name值2
     * @return 返回一个存储表单数据的数组
     */
    public static String[] getTwoData(HttpServletRequest request,String formName1,String formName2){

        String[] data = new String[2];

        data[0] = request.getParameter(formName1);
        data[1] = request.getParameter(formName2);

        //返回一个存储表单数据的数组
        return data;
    }

    /**
     * 获取两个表单数据
     * @param request 请求域对象
     * @param formName1 要获取的表单数据的name值1
     * @param formName2 要获取的表单数据的name值2
     * @param formName3 要获取的表单数据的name值3
     * @return 返回一个存储表单数据的数组
     */
    public static String[] getThreeData(HttpServletRequest request,String formName1,String formName2,String formName3){

        String[] data = new String[3];

        data[0] = request.getParameter(formName1);
        data[1] = request.getParameter(formName2);
        data[2] = request.getParameter(formName3);

        //返回一个存储表单数据的数组
        return data;
    }

}
