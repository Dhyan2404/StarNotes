package com.google.common.primitives;

import com.google.common.annotations.GwtIncompatible;
import com.google.common.base.Preconditions;
import com.sunia.HTREnginev2.nnf;
import java.util.Collections;
import java.util.LinkedHashMap;
import java.util.Map;
import java.util.Set;

@GwtIncompatible
@nnf
/* loaded from: classes6.dex */
public final class Primitives {

    /* renamed from: a */
    public static final Map<Class<?>, Class<?>> f35068a;

    /* renamed from: b */
    public static final Map<Class<?>, Class<?>> f35069b;

    static {
        LinkedHashMap linkedHashMap = new LinkedHashMap(16);
        LinkedHashMap linkedHashMap2 = new LinkedHashMap(16);
        m27413a(linkedHashMap, linkedHashMap2, Boolean.TYPE, Boolean.class);
        m27413a(linkedHashMap, linkedHashMap2, Byte.TYPE, Byte.class);
        m27413a(linkedHashMap, linkedHashMap2, Character.TYPE, Character.class);
        m27413a(linkedHashMap, linkedHashMap2, Double.TYPE, Double.class);
        m27413a(linkedHashMap, linkedHashMap2, Float.TYPE, Float.class);
        m27413a(linkedHashMap, linkedHashMap2, Integer.TYPE, Integer.class);
        m27413a(linkedHashMap, linkedHashMap2, Long.TYPE, Long.class);
        m27413a(linkedHashMap, linkedHashMap2, Short.TYPE, Short.class);
        m27413a(linkedHashMap, linkedHashMap2, Void.TYPE, Void.class);
        f35068a = Collections.unmodifiableMap(linkedHashMap);
        f35069b = Collections.unmodifiableMap(linkedHashMap2);
    }

    /* renamed from: a */
    public static void m27413a(Map<Class<?>, Class<?>> map, Map<Class<?>, Class<?>> map2, Class<?> cls, Class<?> cls2) {
        map.put(cls, cls2);
        map2.put(cls2, cls);
    }

    public static Set<Class<?>> allPrimitiveTypes() {
        return f35068a.keySet();
    }

    public static Set<Class<?>> allWrapperTypes() {
        return f35069b.keySet();
    }

    public static boolean isWrapperType(Class<?> cls) {
        return f35069b.containsKey(Preconditions.checkNotNull(cls));
    }

    public static <T> Class<T> unwrap(Class<T> cls) {
        Preconditions.checkNotNull(cls);
        Class<T> cls2 = (Class) f35069b.get(cls);
        return cls2 == null ? cls : cls2;
    }

    public static <T> Class<T> wrap(Class<T> cls) {
        Preconditions.checkNotNull(cls);
        Class<T> cls2 = (Class) f35068a.get(cls);
        return cls2 == null ? cls : cls2;
    }
}
