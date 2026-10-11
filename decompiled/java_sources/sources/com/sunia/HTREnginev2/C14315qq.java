package com.sunia.HTREnginev2;

import io.opencensus.internal.Utils;
import java.util.Arrays;

/* renamed from: com.sunia.HTREnginev2.qq */
/* loaded from: classes10.dex */
public final class C14315qq {

    /* renamed from: a */
    public static final int f82309a = 8;

    /* renamed from: b */
    public static final int f82310b = 2;

    /* renamed from: c */
    public static final int f82311c = 16;

    /* renamed from: d */
    public static final String f82312d = "0123456789abcdef";

    /* renamed from: e */
    public static final int f82313e = 128;

    /* renamed from: f */
    public static final char[] f82314f = m56740b();

    /* renamed from: g */
    public static final byte[] f82315g = m56739a();

    /* renamed from: a */
    public static byte[] m56739a() {
        byte[] bArr = new byte[128];
        Arrays.fill(bArr, (byte) -1);
        for (int i = 0; i < 16; i++) {
            bArr["0123456789abcdef".charAt(i)] = (byte) i;
        }
        return bArr;
    }

    /* renamed from: b */
    public static char[] m56740b() {
        char[] cArr = new char[512];
        for (int i = 0; i < 256; i++) {
            cArr[i] = "0123456789abcdef".charAt(i >>> 4);
            cArr[i | 256] = "0123456789abcdef".charAt(i & 15);
        }
        return cArr;
    }

    /* renamed from: c */
    public static byte m56741c(CharSequence charSequence, int i) {
        Utils.checkArgument(charSequence.length() >= i + 2, "chars too small");
        return m56744f(charSequence.charAt(i), charSequence.charAt(i + 1));
    }

    /* renamed from: d */
    public static void m56742d(byte b, char[] cArr, int i) {
        int i2 = b & 255;
        char[] cArr2 = f82314f;
        cArr[i] = cArr2[i2];
        cArr[i + 1] = cArr2[i2 | 256];
    }

    /* renamed from: e */
    public static void m56743e(byte b, char[] cArr, int i) {
        m56742d(b, cArr, i);
    }

    /* renamed from: f */
    public static byte m56744f(char c, char c2) {
        Utils.checkArgument(c2 < 128 && f82315g[c2] != -1, "invalid character " + c2);
        Utils.checkArgument(c < 128 && f82315g[c] != -1, "invalid character " + c);
        byte[] bArr = f82315g;
        return (byte) ((bArr[c] << 4) | bArr[c2]);
    }

    /* renamed from: g */
    public static long m56745g(CharSequence charSequence, int i) {
        Utils.checkArgument(charSequence.length() >= i + 16, "chars too small");
        return (m56744f(charSequence.charAt(i + 14), charSequence.charAt(i + 15)) & 255) | ((m56744f(charSequence.charAt(i), charSequence.charAt(i + 1)) & 255) << 56) | ((m56744f(charSequence.charAt(i + 2), charSequence.charAt(i + 3)) & 255) << 48) | ((m56744f(charSequence.charAt(i + 4), charSequence.charAt(i + 5)) & 255) << 40) | ((m56744f(charSequence.charAt(i + 6), charSequence.charAt(i + 7)) & 255) << 32) | ((m56744f(charSequence.charAt(i + 8), charSequence.charAt(i + 9)) & 255) << 24) | ((m56744f(charSequence.charAt(i + 10), charSequence.charAt(i + 11)) & 255) << 16) | ((m56744f(charSequence.charAt(i + 12), charSequence.charAt(i + 13)) & 255) << 8);
    }

    /* renamed from: h */
    public static long m56746h(byte[] bArr, int i) {
        Utils.checkArgument(bArr.length >= i + 8, "array too small");
        return (bArr[i + 7] & 255) | ((bArr[i] & 255) << 56) | ((bArr[i + 1] & 255) << 48) | ((bArr[i + 2] & 255) << 40) | ((bArr[i + 3] & 255) << 32) | ((bArr[i + 4] & 255) << 24) | ((bArr[i + 5] & 255) << 16) | ((bArr[i + 6] & 255) << 8);
    }

    /* renamed from: i */
    public static void m56747i(long j, char[] cArr, int i) {
        m56742d((byte) ((j >> 56) & 255), cArr, i);
        m56742d((byte) ((j >> 48) & 255), cArr, i + 2);
        m56742d((byte) ((j >> 40) & 255), cArr, i + 4);
        m56742d((byte) ((j >> 32) & 255), cArr, i + 6);
        m56742d((byte) ((j >> 24) & 255), cArr, i + 8);
        m56742d((byte) ((j >> 16) & 255), cArr, i + 10);
        m56742d((byte) ((j >> 8) & 255), cArr, i + 12);
        m56742d((byte) (j & 255), cArr, i + 14);
    }

    /* renamed from: j */
    public static void m56748j(long j, byte[] bArr, int i) {
        Utils.checkArgument(bArr.length >= i + 8, "array too small");
        bArr[i + 7] = (byte) (j & 255);
        bArr[i + 6] = (byte) ((j >> 8) & 255);
        bArr[i + 5] = (byte) ((j >> 16) & 255);
        bArr[i + 4] = (byte) ((j >> 24) & 255);
        bArr[i + 3] = (byte) ((j >> 32) & 255);
        bArr[i + 2] = (byte) ((j >> 40) & 255);
        bArr[i + 1] = (byte) ((j >> 48) & 255);
        bArr[i] = (byte) ((j >> 56) & 255);
    }
}
