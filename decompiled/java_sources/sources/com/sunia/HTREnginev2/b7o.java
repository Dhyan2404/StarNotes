package com.sunia.HTREnginev2;

import android.content.Context;
import android.graphics.Typeface;
import android.util.Log;
import android.util.SparseArray;
import androidx.annotation.GuardedBy;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RestrictTo;
import androidx.collection.LongSparseArray;
import androidx.core.content.res.FontResourcesParserCompat;
import java.lang.reflect.Field;

@RestrictTo({RestrictTo.Scope.LIBRARY})
/* loaded from: classes3.dex */
public final class b7o {

    /* renamed from: a */
    public static final String f65500a = "WeightTypeface";

    /* renamed from: b */
    public static final String f65501b = "native_instance";

    /* renamed from: c */
    public static final Field f65502c;

    /* renamed from: d */
    @GuardedBy("sWeightCacheLock")
    public static final LongSparseArray<SparseArray<Typeface>> f65503d;

    /* renamed from: e */
    public static final Object f65504e;

    static {
        Field field;
        try {
            field = Typeface.class.getDeclaredField("native_instance");
            field.setAccessible(true);
        } catch (Exception e) {
            Log.e("WeightTypeface", e.getClass().getName(), e);
            field = null;
        }
        f65502c = field;
        f65503d = new LongSparseArray<>(3);
        f65504e = new Object();
    }

    @Nullable
    /* renamed from: a */
    public static Typeface m53196a(@NonNull fpn fpnVar, @NonNull Context context, @NonNull Typeface typeface, int i, boolean z) {
        if (!m53199d()) {
            return null;
        }
        int i2 = (i << 1) | (z ? 1 : 0);
        synchronized (f65504e) {
            long m53198c = m53198c(typeface);
            LongSparseArray<SparseArray<Typeface>> longSparseArray = f65503d;
            SparseArray<Typeface> sparseArray = longSparseArray.get(m53198c);
            if (sparseArray == null) {
                sparseArray = new SparseArray<>(4);
                longSparseArray.put(m53198c, sparseArray);
            } else {
                Typeface typeface2 = sparseArray.get(i2);
                if (typeface2 != null) {
                    return typeface2;
                }
            }
            Typeface m53197b = m53197b(fpnVar, context, typeface, i, z);
            if (m53197b == null) {
                m53197b = m53200e(typeface, i, z);
            }
            sparseArray.put(i2, m53197b);
            return m53197b;
        }
    }

    @Nullable
    /* renamed from: b */
    public static Typeface m53197b(@NonNull fpn fpnVar, @NonNull Context context, @NonNull Typeface typeface, int i, boolean z) {
        FontResourcesParserCompat.FontFamilyFilesResourceEntry m54163h = fpnVar.m54163h(typeface);
        if (m54163h == null) {
            return null;
        }
        return fpnVar.m54160b(context, m54163h, context.getResources(), i, z);
    }

    /* renamed from: c */
    public static long m53198c(@NonNull Typeface typeface) {
        try {
            return ((Number) f65502c.get(typeface)).longValue();
        } catch (IllegalAccessException e) {
            throw new RuntimeException(e);
        }
    }

    /* renamed from: d */
    public static boolean m53199d() {
        return f65502c != null;
    }

    /* renamed from: e */
    public static Typeface m53200e(Typeface typeface, int i, boolean z) {
        int i2 = 1;
        boolean z2 = i >= 600;
        if (!z2 && !z) {
            i2 = 0;
        } else if (!z2) {
            i2 = 2;
        } else if (z) {
            i2 = 3;
        }
        return Typeface.create(typeface, i2);
    }
}
