package com.sunia.HTREnginev2;

import android.annotation.SuppressLint;
import android.graphics.Typeface;
import android.util.Log;
import android.util.SparseArray;
import androidx.annotation.GuardedBy;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RequiresApi;
import androidx.annotation.RestrictTo;
import androidx.collection.LongSparseArray;
import java.lang.reflect.Constructor;
import java.lang.reflect.Field;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;

@RequiresApi(26)
@SuppressLint({"SoonBlockedPrivateApi"})
@RestrictTo({RestrictTo.Scope.LIBRARY})
/* loaded from: classes3.dex */
public final class d7o {

    /* renamed from: a */
    public static final String f67571a = "WeightTypeface";

    /* renamed from: b */
    public static final String f67572b = "native_instance";

    /* renamed from: c */
    public static final String f67573c = "nativeCreateFromTypefaceWithExactStyle";

    /* renamed from: d */
    public static final Field f67574d;

    /* renamed from: e */
    public static final Method f67575e;

    /* renamed from: f */
    public static final Constructor<Typeface> f67576f;

    /* renamed from: g */
    @GuardedBy("sWeightCacheLock")
    public static final LongSparseArray<SparseArray<Typeface>> f67577g;

    /* renamed from: h */
    public static final Object f67578h;

    static {
        Field field;
        Constructor<Typeface> constructor;
        Method method;
        try {
            field = Typeface.class.getDeclaredField("native_instance");
            Class cls = Long.TYPE;
            method = Typeface.class.getDeclaredMethod(f67573c, cls, Integer.TYPE, Boolean.TYPE);
            method.setAccessible(true);
            constructor = Typeface.class.getDeclaredConstructor(cls);
            constructor.setAccessible(true);
        } catch (NoSuchFieldException | NoSuchMethodException e) {
            Log.e("WeightTypeface", e.getClass().getName(), e);
            field = null;
            constructor = null;
            method = null;
        }
        f67574d = field;
        f67575e = method;
        f67576f = constructor;
        f67577g = new LongSparseArray<>(3);
        f67578h = new Object();
    }

    @Nullable
    /* renamed from: a */
    public static Typeface m53592a(long j) {
        try {
            return f67576f.newInstance(Long.valueOf(j));
        } catch (IllegalAccessException | InstantiationException | InvocationTargetException unused) {
            return null;
        }
    }

    @Nullable
    /* renamed from: b */
    public static Typeface m53593b(@NonNull Typeface typeface, int i, boolean z) {
        if (!m53595d()) {
            return null;
        }
        int i2 = (i << 1) | (z ? 1 : 0);
        synchronized (f67578h) {
            long m53594c = m53594c(typeface);
            LongSparseArray<SparseArray<Typeface>> longSparseArray = f67577g;
            SparseArray<Typeface> sparseArray = longSparseArray.get(m53594c);
            if (sparseArray == null) {
                sparseArray = new SparseArray<>(4);
                longSparseArray.put(m53594c, sparseArray);
            } else {
                Typeface typeface2 = sparseArray.get(i2);
                if (typeface2 != null) {
                    return typeface2;
                }
            }
            Typeface m53592a = m53592a(m53596e(m53594c, i, z));
            sparseArray.put(i2, m53592a);
            return m53592a;
        }
    }

    /* renamed from: c */
    public static long m53594c(@NonNull Typeface typeface) {
        try {
            return f67574d.getLong(typeface);
        } catch (IllegalAccessException e) {
            throw new RuntimeException(e);
        }
    }

    /* renamed from: d */
    public static boolean m53595d() {
        return f67574d != null;
    }

    @SuppressLint({"BanUncheckedReflection"})
    /* renamed from: e */
    public static long m53596e(long j, int i, boolean z) {
        try {
            return ((Long) f67575e.invoke(null, Long.valueOf(j), Integer.valueOf(i), Boolean.valueOf(z))).longValue();
        } catch (IllegalAccessException e) {
            throw new RuntimeException(e);
        } catch (InvocationTargetException e2) {
            throw new RuntimeException(e2);
        }
    }
}
