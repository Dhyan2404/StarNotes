package com.sunia.HTREnginev2;

import java.security.SecureRandom;
import java.util.Random;

/* renamed from: com.sunia.HTREnginev2.nl */
/* loaded from: classes9.dex */
public class C14142nl {

    /* renamed from: a */
    public static final String f78745a = "./0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz";

    /* renamed from: b */
    public static final char[] f78746b = f78745a.toCharArray();

    /* renamed from: a */
    public static void m55766a(byte b, byte b2, byte b3, int i, StringBuilder sb) {
        int i2 = ((b << 16) & 16777215) | ((b2 << 8) & 65535) | (b3 & 255);
        while (true) {
            int i3 = i - 1;
            if (i <= 0) {
                return;
            }
            sb.append(f78746b[i2 & 63]);
            i2 >>= 6;
            i = i3;
        }
    }

    /* renamed from: b */
    public static String m55767b(int i) {
        return m55768c(i, new SecureRandom());
    }

    /* renamed from: c */
    public static String m55768c(int i, Random random) {
        StringBuilder sb = new StringBuilder(i);
        for (int i2 = 1; i2 <= i; i2++) {
            sb.append(f78745a.charAt(random.nextInt(64)));
        }
        return sb.toString();
    }
}
