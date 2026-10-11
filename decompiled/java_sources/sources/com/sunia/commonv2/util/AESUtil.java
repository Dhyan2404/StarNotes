package com.sunia.commonv2.util;

import android.util.Base64;
import javax.crypto.Cipher;
import javax.crypto.spec.SecretKeySpec;

/* loaded from: classes10.dex */
public final class AESUtil {
    private static final String AES_KEY = "ThisIsASecretKey";
    private static final String TRANSFORMATION = "AES/ECB/PKCS5Padding";

    public static String decrypt(String str) {
        try {
            byte[] bArr = new byte[16];
            byte[] bytes = AES_KEY.getBytes();
            System.arraycopy(bytes, 0, bArr, 0, Math.min(bytes.length, 16));
            SecretKeySpec secretKeySpec = new SecretKeySpec(bArr, "AES");
            Cipher cipher = Cipher.getInstance("AES/ECB/PKCS5Padding");
            cipher.init(2, secretKeySpec);
            return new String(cipher.doFinal(Base64.decode(str, 2)), "UTF-8");
        } catch (Exception e) {
            e.printStackTrace();
            return "";
        }
    }

    public static String encrypt(String str) {
        try {
            byte[] bArr = new byte[16];
            byte[] bytes = AES_KEY.getBytes();
            System.arraycopy(bytes, 0, bArr, 0, Math.min(bytes.length, 16));
            SecretKeySpec secretKeySpec = new SecretKeySpec(bArr, "AES");
            Cipher cipher = Cipher.getInstance("AES/ECB/PKCS5Padding");
            cipher.init(1, secretKeySpec);
            return Base64.encodeToString(cipher.doFinal(str.getBytes("UTF-8")), 2);
        } catch (Exception e) {
            e.printStackTrace();
            return "";
        }
    }
}
