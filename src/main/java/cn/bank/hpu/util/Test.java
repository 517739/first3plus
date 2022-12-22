package cn.bank.hpu.util;

public class Test {
    /**
     * @param args
     *            add by zxx ,Nov 29, 2008
     */
    private static final char[] data = new char[] { '零', '壹', '贰', '叁', '肆',
            '伍', '陆', '柒', '捌', '玖' };
    
    private static final char[] datas = new char[] { '分', '角'};
 
    private static final char[] units = new char[] { '元', '拾', '佰', '仟', '万',
            '拾', '佰', '仟', '亿' };
 
    public static String convertZ(int money) {
        StringBuffer sbf = new StringBuffer();
        int unit = 0;
        while (money != 0) {
        	int number = money % 10;
            sbf.insert(0, units[unit++]);
            sbf.insert(0, data[number]);
            money /= 10;
        }
        return sbf.toString();
    }
    
    public static String convertX(int money) {
        StringBuffer sbf = new StringBuffer();
        int unit = 0;
        while (money != 0) {
            sbf.insert(0, datas[unit++]);
            int number = money % 10;
            sbf.insert(0, data[number]);
            money /= 10;
        }
        return sbf.toString();
    }
 
    /**
     * @param args
     */
    public static String convert(double num) {
        // TODO Auto-generated method stub
        
        double zheng = Math.floor(num);
        double xiao = num - zheng;
        
        String s1=null;
        String s2=null;
        if(xiao==0)
        {
    
        	s1=convertZ((int)zheng);
        	return s1;
        }
        else
        {

        	s1=convertZ((int)zheng);
        	xiao = xiao*100;
        	xiao = Math.rint(xiao);
        	s2=convertX((int)xiao);
        	return (s1+s2);
        }
    }
}
 