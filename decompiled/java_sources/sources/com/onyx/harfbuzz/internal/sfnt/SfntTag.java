package com.onyx.harfbuzz.internal.sfnt;

import androidx.annotation.NonNull;
import androidx.annotation.Size;

/* loaded from: classes9.dex */
public class SfntTag {
    /* renamed from: a */
    public static int m52083a(byte b, byte b2, byte b3, byte b4) {
        return (b << 24) | (b2 << 16) | (b3 << 8) | b4;
    }

    /* renamed from: b */
    public static void m52084b(char c, String str) {
        if (c < ' ' || c > '~') {
            throw new IllegalArgumentException(str);
        }
    }

    public static int make(@NonNull @Size(4) String str) {
        if (str.length() != 4) {
            throw new IllegalArgumentException("The length of tag string is not equal to four");
        }
        m52084b(str.charAt(0), "Index: 0");
        m52084b(str.charAt(1), "Index: 1");
        m52084b(str.charAt(2), "Index: 2");
        m52084b(str.charAt(3), "Index: 3");
        return m52083a((byte) str.charAt(0), (byte) str.charAt(1), (byte) str.charAt(2), (byte) str.charAt(3));
    }

    public static String toString(int i) {
        return new String(new char[]{(char) (i >> 24), (char) ((i >> 16) & 255), (char) ((i >> 8) & 255), (char) (i & 255)});
    }
}
