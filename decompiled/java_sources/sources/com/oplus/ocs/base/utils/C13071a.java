package com.oplus.ocs.base.utils;

import android.util.Log;

/* renamed from: com.oplus.ocs.base.utils.a */
/* loaded from: classes9.dex */
public final class C13071a {

    /* renamed from: a */
    private static boolean f63145a = true;

    /* renamed from: a */
    public static void m52226a(String str, String str2) {
        if (f63145a) {
            Log.d("CapabilityBase.".concat(String.valueOf(str)), str2);
        }
    }

    /* renamed from: b */
    public static void m52227b(String str, String str2) {
        Log.i("CapabilityBase.".concat(String.valueOf(str)), str2);
    }

    /* renamed from: c */
    public static void m52228c(String str, String str2) {
        Log.w("CapabilityBase.".concat(String.valueOf(str)), str2);
    }

    /* renamed from: d */
    public static void m52229d(String str, String str2) {
        Log.e("CapabilityBase.".concat(String.valueOf(str)), str2);
    }

    /* renamed from: a */
    public static void m52225a(String str) {
        if (f63145a) {
            Log.d("CapabilityBase", str);
        }
    }
}
