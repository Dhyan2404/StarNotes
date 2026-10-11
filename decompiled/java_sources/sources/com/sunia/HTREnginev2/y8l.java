package com.sunia.HTREnginev2;

import android.animation.PropertyValuesHolder;
import android.animation.TypeConverter;
import android.graphics.Path;
import android.graphics.PointF;
import android.util.Property;
import androidx.annotation.DoNotInline;
import androidx.annotation.RequiresApi;

/* loaded from: classes3.dex */
public class y8l {

    @RequiresApi(21)
    /* renamed from: com.sunia.HTREnginev2.y8l$a */
    /* loaded from: classes3.dex */
    public static class C14695a {
        @DoNotInline
        /* renamed from: a */
        public static <V> PropertyValuesHolder m58397a(Property<?, V> property, Path path) {
            return PropertyValuesHolder.ofObject(property, (TypeConverter) null, path);
        }
    }

    /* renamed from: a */
    public static PropertyValuesHolder m58396a(Property<?, PointF> property, Path path) {
        return C14695a.m58397a(property, path);
    }
}
