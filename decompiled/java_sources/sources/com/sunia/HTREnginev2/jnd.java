package com.sunia.HTREnginev2;

import android.annotation.SuppressLint;
import android.graphics.Canvas;
import androidx.annotation.DoNotInline;
import androidx.annotation.NonNull;
import androidx.annotation.RequiresApi;
import java.lang.reflect.Method;

/* loaded from: classes3.dex */
public class jnd {

    /* renamed from: a */
    public static Method f74498a;

    /* renamed from: b */
    public static Method f74499b;

    /* renamed from: c */
    public static boolean f74500c;

    @RequiresApi(29)
    /* renamed from: com.sunia.HTREnginev2.jnd$a */
    /* loaded from: classes3.dex */
    public static class C13939a {
        @DoNotInline
        /* renamed from: a */
        public static void m54980a(Canvas canvas) {
            canvas.disableZ();
        }

        @DoNotInline
        /* renamed from: b */
        public static void m54981b(Canvas canvas) {
            canvas.enableZ();
        }
    }

    @SuppressLint({"SoonBlockedPrivateApi"})
    /* renamed from: a */
    public static void m54979a(@NonNull Canvas canvas, boolean z) {
        if (z) {
            C13939a.m54981b(canvas);
        } else {
            C13939a.m54980a(canvas);
        }
    }
}
