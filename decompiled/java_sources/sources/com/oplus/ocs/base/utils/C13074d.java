package com.oplus.ocs.base.utils;

import android.text.TextUtils;

/* renamed from: com.oplus.ocs.base.utils.d */
/* loaded from: classes9.dex */
public final class C13074d {
    /* renamed from: a */
    public static <T> T m52234a(T t) {
        if (t != null) {
            return t;
        }
        throw new NullPointerException("null reference");
    }

    /* renamed from: b */
    public static void m52238b(String str) {
        if (C13072b.m52230a()) {
            throw new IllegalStateException(str);
        }
    }

    /* renamed from: a */
    public static String m52236a(String str) {
        if (TextUtils.isEmpty(str)) {
            throw new IllegalArgumentException("Given String is empty or null");
        }
        return str;
    }

    /* renamed from: a */
    public static <T> T m52235a(T t, Object obj) {
        if (t != null) {
            return t;
        }
        throw new NullPointerException(String.valueOf(obj));
    }

    /* renamed from: a */
    public static void m52237a(boolean z, Object obj) {
        if (!z) {
            throw new IllegalStateException(String.valueOf(obj));
        }
    }
}
