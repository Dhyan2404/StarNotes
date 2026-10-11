package com.sunia.HTREnginev2;

import android.annotation.SuppressLint;
import android.graphics.Matrix;
import android.widget.ImageView;
import androidx.annotation.DoNotInline;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RequiresApi;
import java.lang.reflect.Field;

/* loaded from: classes3.dex */
public class jhi {

    /* renamed from: a */
    public static boolean f74308a = true;

    /* renamed from: b */
    public static Field f74309b;

    /* renamed from: c */
    public static boolean f74310c;

    @RequiresApi(29)
    /* renamed from: com.sunia.HTREnginev2.jhi$a */
    /* loaded from: classes3.dex */
    public static class C13925a {
        @DoNotInline
        /* renamed from: a */
        public static void m54919a(ImageView imageView, Matrix matrix) {
            imageView.animateTransform(matrix);
        }
    }

    /* renamed from: a */
    public static void m54916a(@NonNull ImageView imageView, @Nullable Matrix matrix) {
        C13925a.m54919a(imageView, matrix);
    }

    @SuppressLint({"SoonBlockedPrivateApi"})
    /* renamed from: b */
    public static void m54917b() {
        if (f74310c) {
            return;
        }
        try {
            Field declaredField = ImageView.class.getDeclaredField("mDrawMatrix");
            f74309b = declaredField;
            declaredField.setAccessible(true);
        } catch (NoSuchFieldException unused) {
        }
        f74310c = true;
    }

    @RequiresApi(21)
    @SuppressLint({"NewApi"})
    /* renamed from: c */
    public static void m54918c(@NonNull ImageView imageView, @Nullable Matrix matrix) {
        if (f74308a) {
            try {
                C13925a.m54919a(imageView, matrix);
            } catch (NoSuchMethodError unused) {
                f74308a = false;
            }
        }
    }
}
