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

@RequiresApi(21)
@SuppressLint({"SoonBlockedPrivateApi"})
@RestrictTo({RestrictTo.Scope.LIBRARY})
/* loaded from: classes3.dex */
public final class c7o {

    /* renamed from: a */
    public static final String f66568a = "WeightTypeface";

    /* renamed from: b */
    public static final String f66569b = "native_instance";

    /* renamed from: c */
    public static final String f66570c = "nativeCreateFromTypeface";

    /* renamed from: d */
    public static final String f66571d = "nativeCreateWeightAlias";

    /* renamed from: e */
    public static final Field f66572e;

    /* renamed from: f */
    public static final Method f66573f;

    /* renamed from: g */
    public static final Method f66574g;

    /* renamed from: h */
    public static final Constructor<Typeface> f66575h;

    /* renamed from: i */
    @GuardedBy("sWeightCacheLock")
    public static final LongSparseArray<SparseArray<Typeface>> f66576i;

    /* renamed from: j */
    public static final Object f66577j;

    static {
        Field field;
        Constructor<Typeface> constructor;
        Method method;
        Method method2;
        try {
            field = Typeface.class.getDeclaredField("native_instance");
            Class cls = Long.TYPE;
            Class cls2 = Integer.TYPE;
            method = Typeface.class.getDeclaredMethod(f66570c, cls, cls2);
            method.setAccessible(true);
            method2 = Typeface.class.getDeclaredMethod(f66571d, cls, cls2);
            method2.setAccessible(true);
            constructor = Typeface.class.getDeclaredConstructor(cls);
            constructor.setAccessible(true);
        } catch (NoSuchFieldException | NoSuchMethodException e) {
            Log.e("WeightTypeface", e.getClass().getName(), e);
            field = null;
            constructor = null;
            method = null;
            method2 = null;
        }
        f66572e = field;
        f66573f = method;
        f66574g = method2;
        f66575h = constructor;
        f66576i = new LongSparseArray<>(3);
        f66577j = new Object();
    }

    @Nullable
    /* renamed from: a */
    public static Typeface m53400a(long j) {
        try {
            return f66575h.newInstance(Long.valueOf(j));
        } catch (IllegalAccessException | InstantiationException | InvocationTargetException unused) {
            return null;
        }
    }

    @Nullable
    /* renamed from: b */
    public static Typeface m53401b(@NonNull Typeface typeface, int i, boolean z) {
        if (!m53403d()) {
            return null;
        }
        int i2 = (i << 1) | (z ? 1 : 0);
        synchronized (f66577j) {
            long m53402c = m53402c(typeface);
            LongSparseArray<SparseArray<Typeface>> longSparseArray = f66576i;
            SparseArray<Typeface> sparseArray = longSparseArray.get(m53402c);
            if (sparseArray == null) {
                sparseArray = new SparseArray<>(4);
                longSparseArray.put(m53402c, sparseArray);
            } else {
                Typeface typeface2 = sparseArray.get(i2);
                if (typeface2 != null) {
                    return typeface2;
                }
            }
            Typeface m53400a = z == typeface.isItalic() ? m53400a(m53405f(m53402c, i)) : m53400a(m53404e(m53402c, i, z));
            sparseArray.put(i2, m53400a);
            return m53400a;
        }
    }

    /* renamed from: c */
    public static long m53402c(@NonNull Typeface typeface) {
        try {
            return f66572e.getLong(typeface);
        } catch (IllegalAccessException e) {
            throw new RuntimeException(e);
        }
    }

    /* renamed from: d */
    public static boolean m53403d() {
        return f66572e != null;
    }

    @SuppressLint({"BanUncheckedReflection"})
    /* renamed from: e */
    public static long m53404e(long j, int i, boolean z) {
        try {
            return ((Long) f66574g.invoke(null, Long.valueOf(((Long) f66573f.invoke(null, Long.valueOf(j), Integer.valueOf(z ? 2 : 0))).longValue()), Integer.valueOf(i))).longValue();
        } catch (IllegalAccessException e) {
            throw new RuntimeException(e);
        } catch (InvocationTargetException e2) {
            throw new RuntimeException(e2);
        }
    }

    @SuppressLint({"BanUncheckedReflection"})
    /* renamed from: f */
    public static long m53405f(long j, int i) {
        try {
            return ((Long) f66574g.invoke(null, Long.valueOf(j), Integer.valueOf(i))).longValue();
        } catch (IllegalAccessException e) {
            throw new RuntimeException(e);
        } catch (InvocationTargetException e2) {
            throw new RuntimeException(e2);
        }
    }
}
