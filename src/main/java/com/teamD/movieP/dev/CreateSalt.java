package com.teamD.movieP.dev;

import java.security.MessageDigest;
import java.security.SecureRandom;

public class CreateSalt {

    // 해시
    private static final int SALT_SIZE = 16;
    private String salt;

    // 최종 변경값 반환 메소드
    public String getSalt_pw(String password, String salt) throws Exception {
        return Hashing(password, salt);
    }

    // 솔트 반환 메소드
    public String getSalt() throws Exception {
        if (salt == null) {
            getSALT();
        }
        return salt;
    }

    // 패스워드+솔트 해시 변환 메소드
    private String Hashing(String password, String Salt) throws Exception {
        MessageDigest md = MessageDigest.getInstance("SHA-256");
        byte[] pw = password.getBytes();

        for (int i = 0; i < 10000; i++) {
            String temp = Salt + makeHex(pw);
            md.update(temp.getBytes());
            pw = md.digest();
        }
        return makeHex(pw);
    }

    // 솔트 생성하기
    private void getSALT() throws Exception {
        SecureRandom random = new SecureRandom();
        byte[] temp = new byte[SALT_SIZE];
        random.nextBytes(temp);
        salt = makeHex(temp);
    }

    // 16진수 변환 메소드
    private String makeHex(byte[] temp) {
        StringBuilder sb = new StringBuilder();
        for (byte a : temp) {
            sb.append(String.format("%02x", a));
        }
        return sb.toString();
    }
}
