package com.onyx.common.util;

import android.util.Log;

/* loaded from: classes8.dex */
public class JLog {
    private static int LEVEL = 6;
    public static final String TAG = "JLog";

    /* renamed from: d */
    public static void m41639d(String str, String str2, Object... objArr) {
        if (isLogEnable(3)) {
            Log.d(str, formatMessage(str2, objArr));
        }
    }

    /* renamed from: e */
    public static void m41642e(String str, String str2, Object... objArr) {
        if (isLogEnable(6)) {
            Log.e(str, formatMessage(str2, objArr));
        }
    }

    public static String formatMessage(String str, Object... objArr) {
        return ArrayUtils.isNullOrEmpty(objArr) ? str : String.format(str, objArr);
    }

    public static int getLevel() {
        return LEVEL;
    }

    /* renamed from: i */
    public static void m41645i(String str, String str2, Object... objArr) {
        if (isLogEnable(4)) {
            Log.i(str, formatMessage(str2, objArr));
        }
    }

    public static boolean isLogEnable(int i) {
        return LEVEL <= i;
    }

    public static void setDebug(boolean z) {
        LEVEL = z ? 3 : 6;
    }

    public static void setLevel(int i) {
        LEVEL = i;
    }

    /* renamed from: v */
    public static void m41648v(String str, String str2, Object... objArr) {
        if (isLogEnable(2)) {
            Log.v(str, formatMessage(str2, objArr));
        }
    }

    /* renamed from: w */
    public static void m41651w(String str, String str2, Object... objArr) {
        if (isLogEnable(5)) {
            Log.w(str, formatMessage(str2, objArr));
        }
    }

    /* renamed from: d */
    public static void m41640d(String str, Throwable th) {
        if (isLogEnable(3)) {
            Log.d(str, "", th);
        }
    }

    /* renamed from: e */
    public static void m41643e(String str, Throwable th) {
        if (isLogEnable(6)) {
            Log.e(str, "", th);
        }
    }

    /* renamed from: i */
    public static void m41646i(String str, Throwable th) {
        if (isLogEnable(4)) {
            Log.i(str, "", th);
        }
    }

    /* renamed from: v */
    public static void m41649v(String str, Throwable th) {
        if (isLogEnable(2)) {
            Log.v(str, "", th);
        }
    }

    /* renamed from: w */
    public static void m41652w(String str, Throwable th) {
        if (isLogEnable(5)) {
            Log.w(str, th);
        }
    }

    /* renamed from: d */
    public static void m41641d(String str, Throwable th, String str2, Object... objArr) {
        if (isLogEnable(3)) {
            Log.d(str, formatMessage(str2, objArr), th);
        }
    }

    /* renamed from: e */
    public static void m41644e(String str, Throwable th, String str2, Object... objArr) {
        if (isLogEnable(6)) {
            Log.e(str, formatMessage(str2, objArr), th);
        }
    }

    /* renamed from: i */
    public static void m41647i(String str, Throwable th, String str2, Object... objArr) {
        if (isLogEnable(4)) {
            Log.i(str, formatMessage(str2, objArr), th);
        }
    }

    /* renamed from: v */
    public static void m41650v(String str, Throwable th, String str2, Object... objArr) {
        if (isLogEnable(2)) {
            Log.v(str, formatMessage(str2, objArr), th);
        }
    }

    /* renamed from: w */
    public static void m41653w(String str, Throwable th, String str2, Object... objArr) {
        if (isLogEnable(5)) {
            Log.w(str, formatMessage(str2, objArr), th);
        }
    }
}
