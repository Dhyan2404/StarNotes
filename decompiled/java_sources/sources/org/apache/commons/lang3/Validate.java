package org.apache.commons.lang3;

import java.util.Collection;
import java.util.Iterator;
import java.util.Map;
import java.util.regex.Pattern;

/* loaded from: classes12.dex */
public class Validate {

    /* renamed from: a */
    public static final String f107428a = "The validated value is not a number";

    /* renamed from: b */
    public static final String f107429b = "The value is invalid: %f";

    /* renamed from: c */
    public static final String f107430c = "The value %s is not in the specified exclusive range of %s to %s";

    /* renamed from: d */
    public static final String f107431d = "The value %s is not in the specified inclusive range of %s to %s";

    /* renamed from: e */
    public static final String f107432e = "The string %s does not match the pattern %s";

    /* renamed from: f */
    public static final String f107433f = "The validated object is null";

    /* renamed from: g */
    public static final String f107434g = "The validated expression is false";

    /* renamed from: h */
    public static final String f107435h = "The validated array contains null element at index: %d";

    /* renamed from: i */
    public static final String f107436i = "The validated collection contains null element at index: %d";

    /* renamed from: j */
    public static final String f107437j = "The validated character sequence is blank";

    /* renamed from: k */
    public static final String f107438k = "The validated array is empty";

    /* renamed from: l */
    public static final String f107439l = "The validated character sequence is empty";

    /* renamed from: m */
    public static final String f107440m = "The validated collection is empty";

    /* renamed from: n */
    public static final String f107441n = "The validated map is empty";

    /* renamed from: o */
    public static final String f107442o = "The validated array index is invalid: %d";

    /* renamed from: p */
    public static final String f107443p = "The validated character sequence index is invalid: %d";

    /* renamed from: q */
    public static final String f107444q = "The validated collection index is invalid: %d";

    /* renamed from: r */
    public static final String f107445r = "The validated state is false";

    /* renamed from: s */
    public static final String f107446s = "Cannot assign a %s to a %s";

    /* renamed from: t */
    public static final String f107447t = "Expected type: %s, actual: %s";

    public static <T> void exclusiveBetween(T t, T t2, Comparable<T> comparable) {
        if (comparable.compareTo(t) <= 0 || comparable.compareTo(t2) >= 0) {
            throw new IllegalArgumentException(String.format(f107430c, comparable, t, t2));
        }
    }

    public static void finite(double d) {
        finite(d, f107429b, Double.valueOf(d));
    }

    public static <T> void inclusiveBetween(T t, T t2, Comparable<T> comparable) {
        if (comparable.compareTo(t) < 0 || comparable.compareTo(t2) > 0) {
            throw new IllegalArgumentException(String.format(f107431d, comparable, t, t2));
        }
    }

    public static void isAssignableFrom(Class<?> cls, Class<?> cls2) {
        if (cls.isAssignableFrom(cls2)) {
            return;
        }
        Object[] objArr = new Object[2];
        objArr[0] = cls2 == null ? "null" : cls2.getName();
        objArr[1] = cls.getName();
        throw new IllegalArgumentException(String.format(f107446s, objArr));
    }

    public static void isInstanceOf(Class<?> cls, Object obj) {
        if (cls.isInstance(obj)) {
            return;
        }
        Object[] objArr = new Object[2];
        objArr[0] = cls.getName();
        objArr[1] = obj == null ? "null" : obj.getClass().getName();
        throw new IllegalArgumentException(String.format(f107447t, objArr));
    }

    public static void isTrue(boolean z, String str, long j) {
        if (!z) {
            throw new IllegalArgumentException(String.format(str, Long.valueOf(j)));
        }
    }

    public static void matchesPattern(CharSequence charSequence, String str) {
        if (!Pattern.matches(str, charSequence)) {
            throw new IllegalArgumentException(String.format(f107432e, charSequence, str));
        }
    }

    public static <T> T[] noNullElements(T[] tArr, String str, Object... objArr) {
        notNull(tArr);
        for (int i = 0; i < tArr.length; i++) {
            if (tArr[i] == null) {
                throw new IllegalArgumentException(String.format(str, ArrayUtils.add((Integer[]) objArr, Integer.valueOf(i))));
            }
        }
        return tArr;
    }

    public static <T extends CharSequence> T notBlank(T t, String str, Object... objArr) {
        if (t != null) {
            if (StringUtils.isBlank(t)) {
                throw new IllegalArgumentException(String.format(str, objArr));
            }
            return t;
        }
        throw new NullPointerException(String.format(str, objArr));
    }

    public static <T> T[] notEmpty(T[] tArr, String str, Object... objArr) {
        if (tArr != null) {
            if (tArr.length != 0) {
                return tArr;
            }
            throw new IllegalArgumentException(String.format(str, objArr));
        }
        throw new NullPointerException(String.format(str, objArr));
    }

    public static void notNaN(double d) {
        notNaN(d, f107428a, new Object[0]);
    }

    public static <T> T notNull(T t) {
        return (T) notNull(t, f107433f, new Object[0]);
    }

    public static <T> T[] validIndex(T[] tArr, int i, String str, Object... objArr) {
        notNull(tArr);
        if (i < 0 || i >= tArr.length) {
            throw new IndexOutOfBoundsException(String.format(str, objArr));
        }
        return tArr;
    }

    public static void validState(boolean z) {
        if (!z) {
            throw new IllegalStateException(f107445r);
        }
    }

    public static void finite(double d, String str, Object... objArr) {
        if (Double.isNaN(d) || Double.isInfinite(d)) {
            throw new IllegalArgumentException(String.format(str, objArr));
        }
    }

    public static void isTrue(boolean z, String str, double d) {
        if (!z) {
            throw new IllegalArgumentException(String.format(str, Double.valueOf(d)));
        }
    }

    public static void notNaN(double d, String str, Object... objArr) {
        if (Double.isNaN(d)) {
            throw new IllegalArgumentException(String.format(str, objArr));
        }
    }

    public static <T> T notNull(T t, String str, Object... objArr) {
        if (t != null) {
            return t;
        }
        throw new NullPointerException(String.format(str, objArr));
    }

    public static void validState(boolean z, String str, Object... objArr) {
        if (!z) {
            throw new IllegalStateException(String.format(str, objArr));
        }
    }

    public static <T> void exclusiveBetween(T t, T t2, Comparable<T> comparable, String str, Object... objArr) {
        if (comparable.compareTo(t) <= 0 || comparable.compareTo(t2) >= 0) {
            throw new IllegalArgumentException(String.format(str, objArr));
        }
    }

    public static <T> void inclusiveBetween(T t, T t2, Comparable<T> comparable, String str, Object... objArr) {
        if (comparable.compareTo(t) < 0 || comparable.compareTo(t2) > 0) {
            throw new IllegalArgumentException(String.format(str, objArr));
        }
    }

    public static void isAssignableFrom(Class<?> cls, Class<?> cls2, String str, Object... objArr) {
        if (!cls.isAssignableFrom(cls2)) {
            throw new IllegalArgumentException(String.format(str, objArr));
        }
    }

    public static void isInstanceOf(Class<?> cls, Object obj, String str, Object... objArr) {
        if (!cls.isInstance(obj)) {
            throw new IllegalArgumentException(String.format(str, objArr));
        }
    }

    public static void isTrue(boolean z, String str, Object... objArr) {
        if (!z) {
            throw new IllegalArgumentException(String.format(str, objArr));
        }
    }

    public static void matchesPattern(CharSequence charSequence, String str, String str2, Object... objArr) {
        if (!Pattern.matches(str, charSequence)) {
            throw new IllegalArgumentException(String.format(str2, objArr));
        }
    }

    public static void isTrue(boolean z) {
        if (!z) {
            throw new IllegalArgumentException(f107434g);
        }
    }

    public static <T extends CharSequence> T notBlank(T t) {
        return (T) notBlank(t, f107437j, new Object[0]);
    }

    public static <T> T[] notEmpty(T[] tArr) {
        return (T[]) notEmpty(tArr, f107438k, new Object[0]);
    }

    public static <T> T[] validIndex(T[] tArr, int i) {
        return (T[]) validIndex(tArr, i, f107442o, Integer.valueOf(i));
    }

    public static void exclusiveBetween(long j, long j2, long j3) {
        if (j3 <= j || j3 >= j2) {
            throw new IllegalArgumentException(String.format(f107430c, Long.valueOf(j3), Long.valueOf(j), Long.valueOf(j2)));
        }
    }

    public static void inclusiveBetween(long j, long j2, long j3) {
        if (j3 < j || j3 > j2) {
            throw new IllegalArgumentException(String.format(f107431d, Long.valueOf(j3), Long.valueOf(j), Long.valueOf(j2)));
        }
    }

    public static <T extends Collection<?>> T notEmpty(T t, String str, Object... objArr) {
        if (t != null) {
            if (t.isEmpty()) {
                throw new IllegalArgumentException(String.format(str, objArr));
            }
            return t;
        }
        throw new NullPointerException(String.format(str, objArr));
    }

    public static <T extends Collection<?>> T validIndex(T t, int i, String str, Object... objArr) {
        notNull(t);
        if (i < 0 || i >= t.size()) {
            throw new IndexOutOfBoundsException(String.format(str, objArr));
        }
        return t;
    }

    public static void exclusiveBetween(long j, long j2, long j3, String str) {
        if (j3 <= j || j3 >= j2) {
            throw new IllegalArgumentException(str);
        }
    }

    public static void inclusiveBetween(long j, long j2, long j3, String str) {
        if (j3 < j || j3 > j2) {
            throw new IllegalArgumentException(str);
        }
    }

    public static <T> T[] noNullElements(T[] tArr) {
        return (T[]) noNullElements(tArr, f107435h, new Object[0]);
    }

    public static void exclusiveBetween(double d, double d2, double d3) {
        if (d3 <= d || d3 >= d2) {
            throw new IllegalArgumentException(String.format(f107430c, Double.valueOf(d3), Double.valueOf(d), Double.valueOf(d2)));
        }
    }

    public static void inclusiveBetween(double d, double d2, double d3) {
        if (d3 < d || d3 > d2) {
            throw new IllegalArgumentException(String.format(f107431d, Double.valueOf(d3), Double.valueOf(d), Double.valueOf(d2)));
        }
    }

    public static <T extends Iterable<?>> T noNullElements(T t, String str, Object... objArr) {
        notNull(t);
        Iterator it2 = t.iterator();
        int i = 0;
        while (it2.hasNext()) {
            if (it2.next() == null) {
                throw new IllegalArgumentException(String.format(str, ArrayUtils.addAll(objArr, Integer.valueOf(i))));
            }
            i++;
        }
        return t;
    }

    public static void exclusiveBetween(double d, double d2, double d3, String str) {
        if (d3 <= d || d3 >= d2) {
            throw new IllegalArgumentException(str);
        }
    }

    public static void inclusiveBetween(double d, double d2, double d3, String str) {
        if (d3 < d || d3 > d2) {
            throw new IllegalArgumentException(str);
        }
    }

    public static <T extends Collection<?>> T notEmpty(T t) {
        return (T) notEmpty(t, f107440m, new Object[0]);
    }

    public static <T extends Collection<?>> T validIndex(T t, int i) {
        return (T) validIndex(t, i, f107444q, Integer.valueOf(i));
    }

    public static <T extends Map<?, ?>> T notEmpty(T t, String str, Object... objArr) {
        if (t != null) {
            if (t.isEmpty()) {
                throw new IllegalArgumentException(String.format(str, objArr));
            }
            return t;
        }
        throw new NullPointerException(String.format(str, objArr));
    }

    public static <T extends CharSequence> T validIndex(T t, int i, String str, Object... objArr) {
        notNull(t);
        if (i < 0 || i >= t.length()) {
            throw new IndexOutOfBoundsException(String.format(str, objArr));
        }
        return t;
    }

    public static <T extends Iterable<?>> T noNullElements(T t) {
        return (T) noNullElements(t, f107436i, new Object[0]);
    }

    public static <T extends Map<?, ?>> T notEmpty(T t) {
        return (T) notEmpty(t, f107441n, new Object[0]);
    }

    public static <T extends CharSequence> T validIndex(T t, int i) {
        return (T) validIndex(t, i, f107443p, Integer.valueOf(i));
    }

    public static <T extends CharSequence> T notEmpty(T t, String str, Object... objArr) {
        if (t != null) {
            if (t.length() != 0) {
                return t;
            }
            throw new IllegalArgumentException(String.format(str, objArr));
        }
        throw new NullPointerException(String.format(str, objArr));
    }

    public static <T extends CharSequence> T notEmpty(T t) {
        return (T) notEmpty(t, f107439l, new Object[0]);
    }
}
