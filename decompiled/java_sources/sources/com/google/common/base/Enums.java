package com.google.common.base;

import com.google.common.annotations.GwtCompatible;
import com.google.common.annotations.GwtIncompatible;
import com.sunia.HTREnginev2.aof;
import java.io.Serializable;
import java.lang.ref.WeakReference;
import java.lang.reflect.Field;
import java.util.EnumSet;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import java.util.WeakHashMap;
import javax.annotation.CheckForNull;

@GwtCompatible(emulated = true)
@aof
/* loaded from: classes6.dex */
public final class Enums {

    /* renamed from: a */
    @GwtIncompatible
    public static final Map<Class<? extends Enum<?>>, Map<String, WeakReference<? extends Enum<?>>>> f33580a = new WeakHashMap();

    /* loaded from: classes6.dex */
    public static final class StringConverter<T extends Enum<T>> extends Converter<String, T> implements Serializable {
        private static final long serialVersionUID = 0;
        private final Class<T> enumClass;

        public StringConverter(Class<T> cls) {
            this.enumClass = (Class) Preconditions.checkNotNull(cls);
        }

        @Override // com.google.common.base.Converter, com.google.common.base.Function
        public boolean equals(@CheckForNull Object obj) {
            if (obj instanceof StringConverter) {
                return this.enumClass.equals(((StringConverter) obj).enumClass);
            }
            return false;
        }

        public int hashCode() {
            return this.enumClass.hashCode();
        }

        public String toString() {
            String name = this.enumClass.getName();
            StringBuilder sb = new StringBuilder(name.length() + 29);
            sb.append("Enums.stringConverter(");
            sb.append(name);
            sb.append(".class)");
            return sb.toString();
        }

        @Override // com.google.common.base.Converter
        public String doBackward(T t) {
            return t.name();
        }

        @Override // com.google.common.base.Converter
        public T doForward(String str) {
            return (T) Enum.valueOf(this.enumClass, str);
        }
    }

    @GwtIncompatible
    /* renamed from: a */
    public static <T extends Enum<T>> Map<String, WeakReference<? extends Enum<?>>> m25781a(Class<T> cls) {
        Map<String, WeakReference<? extends Enum<?>>> map;
        Map<Class<? extends Enum<?>>, Map<String, WeakReference<? extends Enum<?>>>> map2 = f33580a;
        synchronized (map2) {
            map = map2.get(cls);
            if (map == null) {
                map = m25782b(cls);
            }
        }
        return map;
    }

    @GwtIncompatible
    /* renamed from: b */
    public static <T extends Enum<T>> Map<String, WeakReference<? extends Enum<?>>> m25782b(Class<T> cls) {
        HashMap hashMap = new HashMap();
        Iterator it2 = EnumSet.allOf(cls).iterator();
        while (it2.hasNext()) {
            Enum r2 = (Enum) it2.next();
            hashMap.put(r2.name(), new WeakReference(r2));
        }
        f33580a.put(cls, hashMap);
        return hashMap;
    }

    @GwtIncompatible
    public static Field getField(Enum<?> r1) {
        try {
            return r1.getDeclaringClass().getDeclaredField(r1.name());
        } catch (NoSuchFieldException e) {
            throw new AssertionError(e);
        }
    }

    public static <T extends Enum<T>> Optional<T> getIfPresent(Class<T> cls, String str) {
        Preconditions.checkNotNull(cls);
        Preconditions.checkNotNull(str);
        return C5673a.m25862e(cls, str);
    }

    public static <T extends Enum<T>> Converter<String, T> stringConverter(Class<T> cls) {
        return new StringConverter(cls);
    }
}
