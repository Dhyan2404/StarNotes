package org.apache.commons.lang3;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.EnumSet;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;

/* loaded from: classes12.dex */
public class EnumUtils {

    /* renamed from: a */
    public static final String f107397a = "null elements not permitted";

    /* renamed from: b */
    public static final String f107398b = "Cannot store %s %s values in %s bits";

    /* renamed from: c */
    public static final String f107399c = "%s does not seem to be an Enum type";

    /* renamed from: d */
    public static final String f107400d = "EnumClass must be defined.";

    /* renamed from: a */
    public static <E extends Enum<E>> Class<E> m67236a(Class<E> cls) {
        Validate.notNull(cls, f107400d, new Object[0]);
        Validate.isTrue(cls.isEnum(), f107399c, cls);
        return cls;
    }

    /* renamed from: b */
    public static <E extends Enum<E>> Class<E> m67237b(Class<E> cls) {
        Enum[] enumArr = (Enum[]) m67236a(cls).getEnumConstants();
        Validate.isTrue(enumArr.length <= 64, f107398b, Integer.valueOf(enumArr.length), cls.getSimpleName(), 64);
        return cls;
    }

    public static <E extends Enum<E>> long generateBitVector(Class<E> cls, Iterable<? extends E> iterable) {
        m67237b(cls);
        Validate.notNull(iterable);
        Iterator<? extends E> it2 = iterable.iterator();
        long j = 0;
        while (it2.hasNext()) {
            E next = it2.next();
            Validate.isTrue(next != null, f107397a, new Object[0]);
            j |= 1 << next.ordinal();
        }
        return j;
    }

    public static <E extends Enum<E>> long[] generateBitVectors(Class<E> cls, Iterable<? extends E> iterable) {
        m67236a(cls);
        Validate.notNull(iterable);
        EnumSet noneOf = EnumSet.noneOf(cls);
        Iterator<? extends E> it2 = iterable.iterator();
        while (true) {
            boolean z = true;
            if (!it2.hasNext()) {
                break;
            }
            E next = it2.next();
            if (next == null) {
                z = false;
            }
            Validate.isTrue(z, f107397a, new Object[0]);
            noneOf.add(next);
        }
        long[] jArr = new long[((cls.getEnumConstants().length - 1) / 64) + 1];
        Iterator it3 = noneOf.iterator();
        while (it3.hasNext()) {
            Enum r0 = (Enum) it3.next();
            int ordinal = r0.ordinal() / 64;
            jArr[ordinal] = jArr[ordinal] | (1 << (r0.ordinal() % 64));
        }
        ArrayUtils.reverse(jArr);
        return jArr;
    }

    public static <E extends Enum<E>> E getEnum(Class<E> cls, String str) {
        if (str == null) {
            return null;
        }
        try {
            return (E) Enum.valueOf(cls, str);
        } catch (IllegalArgumentException unused) {
            return null;
        }
    }

    public static <E extends Enum<E>> List<E> getEnumList(Class<E> cls) {
        return new ArrayList(Arrays.asList(cls.getEnumConstants()));
    }

    public static <E extends Enum<E>> Map<String, E> getEnumMap(Class<E> cls) {
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        for (E e : cls.getEnumConstants()) {
            linkedHashMap.put(e.name(), e);
        }
        return linkedHashMap;
    }

    public static <E extends Enum<E>> boolean isValidEnum(Class<E> cls, String str) {
        if (str == null) {
            return false;
        }
        try {
            Enum.valueOf(cls, str);
            return true;
        } catch (IllegalArgumentException unused) {
            return false;
        }
    }

    public static <E extends Enum<E>> EnumSet<E> processBitVector(Class<E> cls, long j) {
        m67237b(cls).getEnumConstants();
        return processBitVectors(cls, j);
    }

    public static <E extends Enum<E>> EnumSet<E> processBitVectors(Class<E> cls, long... jArr) {
        EnumSet<E> noneOf = EnumSet.noneOf(m67236a(cls));
        long[] clone = ArrayUtils.clone((long[]) Validate.notNull(jArr));
        ArrayUtils.reverse(clone);
        for (E e : cls.getEnumConstants()) {
            int ordinal = e.ordinal() / 64;
            if (ordinal < clone.length && (clone[ordinal] & (1 << (e.ordinal() % 64))) != 0) {
                noneOf.add(e);
            }
        }
        return noneOf;
    }

    @SafeVarargs
    public static <E extends Enum<E>> long generateBitVector(Class<E> cls, E... eArr) {
        Validate.noNullElements(eArr);
        return generateBitVector(cls, Arrays.asList(eArr));
    }

    @SafeVarargs
    public static <E extends Enum<E>> long[] generateBitVectors(Class<E> cls, E... eArr) {
        m67236a(cls);
        Validate.noNullElements(eArr);
        EnumSet noneOf = EnumSet.noneOf(cls);
        Collections.addAll(noneOf, eArr);
        long[] jArr = new long[((cls.getEnumConstants().length - 1) / 64) + 1];
        Iterator it2 = noneOf.iterator();
        while (it2.hasNext()) {
            Enum r0 = (Enum) it2.next();
            int ordinal = r0.ordinal() / 64;
            jArr[ordinal] = jArr[ordinal] | (1 << (r0.ordinal() % 64));
        }
        ArrayUtils.reverse(jArr);
        return jArr;
    }
}
