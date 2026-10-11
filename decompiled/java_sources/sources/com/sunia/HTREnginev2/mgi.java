package com.sunia.HTREnginev2;

/* loaded from: classes12.dex */
public final class mgi {
    /* renamed from: a */
    public static IllegalArgumentException m55616a(String str, Object... objArr) {
        return new IllegalArgumentException(String.format(str, objArr));
    }

    /* renamed from: b */
    public static IllegalArgumentException m55617b(Throwable th, String str, Object... objArr) {
        return new IllegalArgumentException(String.format(str, objArr), th);
    }
}
