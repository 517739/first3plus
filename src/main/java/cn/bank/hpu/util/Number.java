package cn.bank.hpu.util;

import java.text.SimpleDateFormat;
import java.util.Date;

public class Number {

	    public static String getRecord(String maxOrderno) {
	        String Orderno = null;
	        System.out.println("maxOrderno=" + maxOrderno);
	        SimpleDateFormat format = new SimpleDateFormat("yyyyMMdd"); // 时间字符串产生方式
	        String uid_pfix = "NO." + format.format(new Date()); // 组合流水号前一部分，NO+时间字符串，如：NO20160126
	   
	            String uid_end = maxOrderno.substring(11, 15); // 截取字符串最后四位，结果:0001
	            int endNum = Integer.parseInt(uid_end); // 把String类型的0001转化为int类型的1
	            int tmpNum = 10000 + endNum + 1; // 结果10002
	            Orderno = uid_pfix + subStr("" + tmpNum, 1);// 把10002首位的1去掉，再拼成NO201601260002字符串
	       
	       return Orderno;
	    }
	
	public static String subStr(String str, int start) {
        if (str == null || str.equals("") || str.length() == 0)
            return "";
        if (start < str.length()) {
            return str.substring(start);
        } else {
            return "";
        }

    }

}
