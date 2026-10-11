package com.sunia.HTREnginev2;

import android.annotation.TargetApi;
import android.view.View;

/* loaded from: classes4.dex */
public class x5e {

    /* renamed from: a */
    public static final int f89311a = 16;

    /* renamed from: a */
    public static void m58157a(View view, Runnable runnable) {
        m58158b(view, runnable);
    }

    @TargetApi(16)
    /* renamed from: b */
    public static void m58158b(View view, Runnable runnable) {
        view.postOnAnimation(runnable);
    }
}
