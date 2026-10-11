package com.sunia.HTREnginev2;

import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* loaded from: classes11.dex */
public final /* synthetic */ class t6n {

    /* renamed from: a */
    public static final int f84933a = Runtime.getRuntime().availableProcessors();

    /* renamed from: a */
    public static final int m57305a() {
        return f84933a;
    }

    @Nullable
    /* renamed from: b */
    public static final String m57306b(@NotNull String str) {
        try {
            return System.getProperty(str);
        } catch (SecurityException unused) {
            return null;
        }
    }
}
