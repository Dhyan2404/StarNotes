package com.tencent.qimei.uin;

import android.content.Context;

/* renamed from: com.tencent.qimei.uin.U */
/* loaded from: classes10.dex */
public class C16842U {

    /* renamed from: a */
    public static boolean f93671a;

    /* renamed from: a */
    public static String m60110a(String str) {
        if (!f93671a) {
            return "";
        }
        try {
            return m60121x(str);
        } catch (UnsatisfiedLinkError e) {
            e.printStackTrace();
            return "";
        }
    }

    /* renamed from: a */
    public static native byte[] m60111a(int i, byte[] bArr, byte[] bArr2, byte[] bArr3);

    /* renamed from: c */
    public static native String[] m60112c(int i);

    /* renamed from: d */
    public static native byte[] m60113d(String str);

    /* renamed from: e */
    public static native byte m60114e(String str, String str2);

    /* renamed from: n */
    public static native void m60115n(Context context, String str);

    /* renamed from: o */
    public static native String m60116o();

    /* renamed from: p */
    public static native String m60117p();

    /* renamed from: r */
    public static native String m60118r();

    /* renamed from: s */
    public static native String m60119s();

    /* renamed from: u */
    public static native String m60120u();

    /* renamed from: x */
    public static native String m60121x(String str);

    /* renamed from: z */
    public static native String m60122z(Context context);
}
