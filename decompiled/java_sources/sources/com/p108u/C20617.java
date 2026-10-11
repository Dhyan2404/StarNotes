package com.p108u;

import java.io.ByteArrayOutputStream;

/* renamed from: com.u.۟ۤۧۦۡ, reason: contains not printable characters */
/* loaded from: classes17.dex */
public class C20617 {

    /* renamed from: ۢ۟ۧۥ, reason: not valid java name and contains not printable characters */
    public static int f116562 = -263;

    /* renamed from: ۣ۟۟ۧ۟, reason: not valid java name and contains not printable characters */
    public static int m72545() {
        return 68 ^ C20616.f116561;
    }

    /* renamed from: ۟ۤۢۨۤ, reason: not valid java name and contains not printable characters */
    public static String m72546(String str) {
        String str2 = "";
        String str3 = "";
        for (int i = 0; i < 15; i++) {
            str2 = new StringBuffer().append(str2).append(Integer.toHexString(i)).toString();
            str3 = new StringBuffer().append(str3).append(((int) (Math.random() * 10)) ^ i).toString();
        }
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream(str.length() / 2);
        while (str.length() > 0) {
            byteArrayOutputStream.write((str2.indexOf(str.charAt(-2)) << 4) | str2.indexOf(str.charAt(-1)));
        }
        byte[] byteArray = byteArrayOutputStream.toByteArray();
        int length = byteArray.length;
        int length2 = str3.length();
        for (int i2 = 0; i2 < length; i2++) {
            byteArray[i2] = (byte) (byteArray[i2] ^ str3.charAt(i2 % length2));
        }
        return new String(byteArray);
    }

    /* renamed from: ۡۡۨۨ, reason: not valid java name and contains not printable characters */
    public static int m72547(Object obj) {
        return obj.hashCode();
    }

    /* renamed from: ۢۥۧۧ, reason: not valid java name and contains not printable characters */
    public static String m72548(short[] sArr, int i, int i2, int i3) {
        char[] cArr = new char[i2];
        for (int i4 = 0; i4 < i2; i4++) {
            cArr[i4] = (char) (sArr[i + i4] ^ i3);
        }
        return new String(cArr);
    }
}
