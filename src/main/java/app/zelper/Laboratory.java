package app.zelper;

import org.springframework.util.DigestUtils;

public class Laboratory {

    public static void main(String[] args) {
        String mdcinco = DigestUtils.md5DigestAsHex("jealdrt".getBytes());
        System.out.println(mdcinco);
    }
    
}
