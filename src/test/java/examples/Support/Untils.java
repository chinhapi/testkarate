package examples.Support;

import org.apache.commons.lang.RandomStringUtils;

public class Untils {
    public static String generateEmail(){
        String allowedChar = "abebkqfhgdsggsdg" + "11313131412323" + "_-.";
        String email = "";
        String temp = RandomStringUtils.random(40,allowedChar);
        email = temp.substring(0, temp.length() - 9) + "gmail.com";
        return email;
    }

    public static long getCurrenTime(){
        return (System.currentTimeMillis()/1000);
    }

    public static void  main(String[] args){
        System.out.println(generateEmail());
        System.out.println(getCurrenTime());
    }

    public static int sum(int a, int b){
        return (a + b);
    }
}
