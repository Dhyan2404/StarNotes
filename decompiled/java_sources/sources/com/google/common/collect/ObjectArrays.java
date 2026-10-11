package com.google.common.collect;

import com.google.common.annotations.GwtCompatible;
import com.google.common.annotations.GwtIncompatible;
import com.google.common.base.Preconditions;
import com.google.errorprone.annotations.CanIgnoreReturnValue;
import com.sunia.HTREnginev2.k4l;
import com.sunia.HTREnginev2.snf;
import com.sunia.HTREnginev2.xvk;
import java.lang.reflect.Array;
import java.util.Arrays;
import java.util.Collection;
import java.util.Iterator;

@snf
@GwtCompatible(emulated = true)
/* loaded from: classes6.dex */
public final class ObjectArrays {
    @CanIgnoreReturnValue
    /* renamed from: a */
    public static Object m26658a(Object obj, int i) {
        if (obj != null) {
            return obj;
        }
        StringBuilder sb = new StringBuilder(20);
        sb.append("at index ");
        sb.append(i);
        throw new NullPointerException(sb.toString());
    }

    @CanIgnoreReturnValue
    /* renamed from: b */
    public static Object[] m26659b(Object... objArr) {
        return m26660c(objArr, objArr.length);
    }

    @CanIgnoreReturnValue
    /* renamed from: c */
    public static Object[] m26660c(Object[] objArr, int i) {
        for (int i2 = 0; i2 < i; i2++) {
            m26658a(objArr[i2], i2);
        }
        return objArr;
    }

    @GwtIncompatible
    public static <T> T[] concat(T[] tArr, T[] tArr2, Class<T> cls) {
        T[] tArr3 = (T[]) newArray(cls, tArr.length + tArr2.length);
        System.arraycopy(tArr, 0, tArr3, 0, tArr.length);
        System.arraycopy(tArr2, 0, tArr3, tArr.length, tArr2.length);
        return tArr3;
    }

    /* renamed from: d */
    public static Object[] m26661d(Object[] objArr, int i, int i2) {
        Preconditions.checkPositionIndexes(i, i + i2, objArr.length);
        if (i2 == 0) {
            return new Object[0];
        }
        Object[] objArr2 = new Object[i2];
        System.arraycopy(objArr, i, objArr2, 0, i2);
        return objArr2;
    }

    @CanIgnoreReturnValue
    /* renamed from: e */
    public static Object[] m26662e(Iterable<?> iterable, Object[] objArr) {
        Iterator<?> it2 = iterable.iterator();
        int i = 0;
        while (it2.hasNext()) {
            objArr[i] = it2.next();
            i++;
        }
        return objArr;
    }

    /* renamed from: f */
    public static void m26663f(Object[] objArr, int i, int i2) {
        Object obj = objArr[i];
        objArr[i] = objArr[i2];
        objArr[i2] = obj;
    }

    /* renamed from: g */
    public static Object[] m26664g(Collection<?> collection) {
        return m26662e(collection, new Object[collection.size()]);
    }

    /* renamed from: h */
    public static <T> T[] m26665h(Collection<?> collection, T[] tArr) {
        int size = collection.size();
        if (tArr.length < size) {
            tArr = (T[]) newArray(tArr, size);
        }
        m26662e(collection, tArr);
        if (tArr.length > size) {
            tArr[size] = null;
        }
        return tArr;
    }

    /* renamed from: i */
    public static <T> T[] m26666i(Object[] objArr, int i, int i2, T[] tArr) {
        Preconditions.checkPositionIndexes(i, i + i2, objArr.length);
        if (tArr.length < i2) {
            tArr = (T[]) newArray(tArr, i2);
        } else if (tArr.length > i2) {
            tArr[i2] = null;
        }
        System.arraycopy(objArr, i, tArr, 0, i2);
        return tArr;
    }

    @GwtIncompatible
    public static <T> T[] newArray(Class<T> cls, int i) {
        return (T[]) ((Object[]) Array.newInstance((Class<?>) cls, i));
    }

    public static <T> T[] newArray(T[] tArr, int i) {
        return (T[]) k4l.m55164c(tArr, i);
    }

    public static <T> T[] concat(@xvk T t, T[] tArr) {
        T[] tArr2 = (T[]) newArray(tArr, tArr.length + 1);
        tArr2[0] = t;
        System.arraycopy(tArr, 0, tArr2, 1, tArr.length);
        return tArr2;
    }

    public static <T> T[] concat(T[] tArr, @xvk T t) {
        T[] tArr2 = (T[]) Arrays.copyOf(tArr, tArr.length + 1);
        tArr2[tArr.length] = t;
        return tArr2;
    }
}
