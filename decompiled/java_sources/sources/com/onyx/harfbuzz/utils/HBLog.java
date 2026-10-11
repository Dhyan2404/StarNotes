package com.onyx.harfbuzz.utils;

import android.util.Log;

/* loaded from: classes9.dex */
public class HBLog {

    /* renamed from: a */
    public static final String f62911a = "HB_kbox_";

    /* renamed from: b */
    public static final boolean f62912b = true;

    /* renamed from: d */
    public static void m52115d(String str) {
        Log.d(f62911a, str);
    }

    /* renamed from: e */
    public static void m52116e(String str) {
        Log.e(f62911a, str);
    }

    /* renamed from: i */
    public static void m52118i(String str) {
        Log.i(f62911a, str);
    }

    /* renamed from: e */
    public static void m52117e(String str, Throwable th) {
        Log.e(f62911a, str, th);
    }
}
