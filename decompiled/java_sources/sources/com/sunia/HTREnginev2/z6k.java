package com.sunia.HTREnginev2;

import android.animation.ObjectAnimator;
import android.animation.TypeConverter;
import android.graphics.Path;
import android.graphics.PointF;
import android.util.Property;
import androidx.annotation.DoNotInline;
import androidx.annotation.RequiresApi;

/* loaded from: classes3.dex */
public class z6k {

    @RequiresApi(21)
    /* renamed from: com.sunia.HTREnginev2.z6k$a */
    /* loaded from: classes3.dex */
    public static class C14748a {
        @DoNotInline
        /* renamed from: a */
        public static <T, V> ObjectAnimator m58641a(T t, Property<T, V> property, Path path) {
            return ObjectAnimator.ofObject(t, property, (TypeConverter) null, path);
        }
    }

    /* renamed from: a */
    public static <T> ObjectAnimator m58640a(T t, Property<T, PointF> property, Path path) {
        return C14748a.m58641a(t, property, path);
    }
}
