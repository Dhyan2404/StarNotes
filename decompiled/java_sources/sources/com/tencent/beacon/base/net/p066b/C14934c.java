package com.tencent.beacon.base.net.p066b;

import android.content.Context;
import android.util.Base64;
import com.tencent.beacon.base.util.C14954c;
import com.tencent.beacon.p073d.C14969b;
import java.nio.charset.Charset;
import java.security.KeyFactory;
import java.security.NoSuchAlgorithmException;
import java.security.interfaces.RSAPublicKey;
import java.security.spec.X509EncodedKeySpec;
import javax.crypto.Cipher;
import javax.crypto.spec.IvParameterSpec;
import javax.crypto.spec.SecretKeySpec;

/* renamed from: com.tencent.beacon.base.net.b.c */
/* loaded from: classes10.dex */
public final class C14934c {
    /* renamed from: a */
    public static byte[] m59288a(int i, String str, byte[] bArr) throws Exception {
        if (i == 3) {
            return m59290a(str, bArr);
        }
        return null;
    }

    /* renamed from: b */
    public static byte[] m59291b(int i, String str, byte[] bArr) throws Exception, NoSuchAlgorithmException {
        if (i == 3) {
            return m59292b(str, bArr);
        }
        return null;
    }

    /* renamed from: a */
    private static byte[] m59290a(String str, byte[] bArr) throws Exception {
        if (str == null || bArr == null) {
            return null;
        }
        StringBuilder sb = new StringBuilder(str);
        for (int length = sb.length(); length < 16; length++) {
            sb.append("0");
        }
        String substring = sb.toString().substring(0, 16);
        SecretKeySpec secretKeySpec = new SecretKeySpec(substring.getBytes(Charset.forName("UTF-8")), "AES");
        Cipher cipher = Cipher.getInstance("AES/CBC/PKCS5Padding");
        cipher.init(2, secretKeySpec, new IvParameterSpec(substring.getBytes(Charset.forName("UTF-8"))));
        return cipher.doFinal(bArr);
    }

    /* renamed from: b */
    private static byte[] m59292b(String str, byte[] bArr) throws Exception, NoSuchAlgorithmException {
        if (str == null || bArr == null) {
            return null;
        }
        StringBuilder sb = new StringBuilder(str);
        for (int length = sb.length(); length < 16; length++) {
            sb.append("0");
        }
        String substring = sb.toString().substring(0, 16);
        SecretKeySpec secretKeySpec = new SecretKeySpec(substring.getBytes(Charset.forName("UTF-8")), "AES");
        Cipher cipher = Cipher.getInstance("AES/CBC/PKCS5Padding");
        cipher.init(1, secretKeySpec, new IvParameterSpec(substring.getBytes(Charset.forName("UTF-8"))));
        return cipher.doFinal(bArr);
    }

    /* renamed from: a */
    public static byte[] m59289a(Context context, String str) {
        KeyFactory keyFactory;
        if (str == null) {
            return null;
        }
        String str2 = C14969b.m59444b().m59476j() == 0 ? "MIGfMA0GCSqGSIb3DQEBAQUAA4GNADCBiQKBgQCsAxNCSLyNUCOP1QqYStE8ZeiU\nv4afaMqEmoLCKb0mUZYvYOoVN7LPMi2IVY2MRaFJvuND3glVw1RDm2VJJtjQkwUd\n3kpR9TrHAf7UQOVTpNo3Vi7pXTOqZ6bh3ZA/fs56jDCCKV6+wT/pCeu8N6vVnPrD\nz3SdHIeNeWb/woazCwIDAQAB" : "MIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEAqZduQqLHzI6vPj4e0ILNDGmW7oSFfr+Rjf5H0XX6uzsrrEijPqO+CuSrm+hEcHf8QQ/Dyn5zyM7CIpr9jgtpo6Azl4/sHHamF8HYdQHjzgB5xtBWaSweRHmPVc2atZUWVGg8xL41Jv+SJBExBXk7QatoXHZgLsyEIU9oK31w6XSYcZxEinjw7VEDnVA4J0d32a/XnVdVqog+V8yS7I74k/RN/QnTFRXMx4/hdXVwM7glzjSAE4gFrU6gmAWNbyLEn9OS8mmrjyJlafeEDxycuRgwVnZwGjeO9OO5Qbb0biVHsGvI7COYw5kqilOIHouTrrdyWjDA1Vud5cly1Cy5uwIDAQAB";
        Object[] objArr = new Object[1];
        objArr[0] = C14969b.m59444b().m59476j() == 0 ? "1024" : "2048";
        C14954c.m59392a(String.format("use rsa public key length: %s", objArr), new Object[0]);
        try {
            X509EncodedKeySpec x509EncodedKeySpec = new X509EncodedKeySpec(Base64.decode(str2, 0));
            if (context.getApplicationInfo().targetSdkVersion >= 28) {
                keyFactory = KeyFactory.getInstance("RSA");
            } else {
                keyFactory = KeyFactory.getInstance("RSA", "BC");
            }
            RSAPublicKey rSAPublicKey = (RSAPublicKey) keyFactory.generatePublic(x509EncodedKeySpec);
            Cipher cipher = Cipher.getInstance("RSA/ECB/PKCS1Padding");
            cipher.init(1, rSAPublicKey);
            return cipher.doFinal(str.getBytes(Charset.forName("UTF-8")));
        } catch (Exception e) {
            e.printStackTrace();
            return null;
        }
    }
}
