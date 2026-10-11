package com.sagittarius.p050v6;

import com.sagittarius.p050v6.p051a.C13091a;
import java.io.File;

/* renamed from: com.sagittarius.v6.B */
/* loaded from: classes18.dex */
public class C13087B {
    private static final String[] lIIll = null;

    static {
        lIIll();
    }

    private static String IIIll(String str, String str2) {
        byte[] m52319a = C13091a.m52319a(str);
        StringBuilder sb = new StringBuilder();
        char[] charArray = str2.toCharArray();
        int i = 0;
        for (byte b : m52319a) {
            sb.append((char) (b ^ charArray[i % charArray.length]));
            i++;
        }
        return sb.toString();
    }

    /* renamed from: a1 */
    public static void m52317a1(String str) {
        String format = String.format(lIIll[0], AppInfo.DATAPATH, AppInfo.f63255h, str);
        if (new File(format).exists()) {
            System.load(format);
        } else {
            System.loadLibrary(str);
        }
    }

    private static void lIIll() {
        lIIll = r0;
        String[] strArr = {IIIll("TTpgenEbZiM9NkclJjZxG2c8Ow==", "hIOTT")};
    }
}
