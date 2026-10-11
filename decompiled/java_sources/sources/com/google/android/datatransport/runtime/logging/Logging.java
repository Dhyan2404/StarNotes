package com.google.android.datatransport.runtime.logging;

import android.util.Log;

/* loaded from: classes4.dex */
public final class Logging {

    /* renamed from: a */
    public static final String f22040a = "TRuntime.";

    /* renamed from: b */
    public static final int f22041b = 23;

    /* renamed from: a */
    public static String m17449a(String str, String str2) {
        String str3 = str + str2;
        return str3.length() > 23 ? str3.substring(0, 23) : str3;
    }

    /* renamed from: b */
    public static String m17450b(String str) {
        return f22040a + str;
    }

    /* renamed from: d */
    public static void m17451d(String str, String str2) {
        String m17450b = m17450b(str);
        if (Log.isLoggable(m17450b, 3)) {
            Log.d(m17450b, str2);
        }
    }

    /* renamed from: e */
    public static void m17455e(String str, String str2, Throwable th) {
        String m17450b = m17450b(str);
        if (Log.isLoggable(m17450b, 6)) {
            Log.e(m17450b, str2, th);
        }
    }

    /* renamed from: i */
    public static void m17456i(String str, String str2, Object obj) {
        String m17450b = m17450b(str);
        if (Log.isLoggable(m17450b, 4)) {
            Log.i(m17450b, String.format(str2, obj));
        }
    }

    /* renamed from: w */
    public static void m17457w(String str, String str2, Object obj) {
        String m17450b = m17450b(str);
        if (Log.isLoggable(m17450b, 5)) {
            Log.w(m17450b, String.format(str2, obj));
        }
    }

    /* renamed from: d */
    public static void m17452d(String str, String str2, Object obj) {
        String m17450b = m17450b(str);
        if (Log.isLoggable(m17450b, 3)) {
            Log.d(m17450b, String.format(str2, obj));
        }
    }

    /* renamed from: d */
    public static void m17453d(String str, String str2, Object obj, Object obj2) {
        String m17450b = m17450b(str);
        if (Log.isLoggable(m17450b, 3)) {
            Log.d(m17450b, String.format(str2, obj, obj2));
        }
    }

    /* renamed from: d */
    public static void m17454d(String str, String str2, Object... objArr) {
        String m17450b = m17450b(str);
        if (Log.isLoggable(m17450b, 3)) {
            Log.d(m17450b, String.format(str2, objArr));
        }
    }
}
