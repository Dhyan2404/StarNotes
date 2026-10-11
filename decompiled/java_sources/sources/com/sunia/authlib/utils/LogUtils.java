package com.sunia.authlib.utils;

import android.util.Log;

/* loaded from: classes10.dex */
public class LogUtils {
    private static final String TAG = "AsaLicenseLog ";
    public static boolean isLog;

    /* renamed from: d */
    public static void m58773d(String str) {
        m58774d(TAG, str);
    }

    /* renamed from: e */
    public static void m58775e(String str) {
        m58776e(TAG, str);
    }

    /* renamed from: i */
    public static void m58777i(String str) {
        m58778i(TAG, str);
    }

    /* renamed from: w */
    public static void m58779w(String str) {
        m58780w(TAG, str);
    }

    /* renamed from: d */
    public static void m58774d(String str, String str2) {
        if (isLog) {
            Log.d(TAG + str, str2);
        }
    }

    /* renamed from: e */
    public static void m58776e(String str, String str2) {
        if (isLog) {
            Log.e(TAG + str, str2);
        }
    }

    /* renamed from: i */
    public static void m58778i(String str, String str2) {
        if (isLog) {
            Log.i(TAG + str, str2);
        }
    }

    /* renamed from: w */
    public static void m58780w(String str, String str2) {
        if (isLog) {
            Log.w(TAG + str, str2);
        }
    }
}
