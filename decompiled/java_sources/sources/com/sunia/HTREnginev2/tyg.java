package com.sunia.HTREnginev2;

import java.util.Collections;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import java.util.Objects;
import org.apache.logging.log4j.spi.ObjectThreadContextMap;
import org.apache.logging.log4j.spi.ReadOnlyThreadContextMap;
import org.apache.logging.log4j.spi.ThreadContextMap;
import org.apache.logging.log4j.util.PropertiesUtil;
import org.apache.logging.log4j.util.ReadOnlyStringMap;
import org.apache.logging.log4j.util.SortedArrayStringMap;
import org.apache.logging.log4j.util.StringMap;

/* loaded from: classes12.dex */
public class tyg implements ReadOnlyThreadContextMap, ObjectThreadContextMap {

    /* renamed from: f */
    public static final String f85886f = "isThreadContextMapInheritable";

    /* renamed from: g */
    public static final int f85887g = 16;

    /* renamed from: h */
    public static final String f85888h = "log4j2.ThreadContext.initial.capacity";

    /* renamed from: i */
    public static volatile int f85889i;

    /* renamed from: j */
    public static volatile boolean f85890j;

    /* renamed from: e */
    public final ThreadLocal<StringMap> f85891e = m57482c();

    /* renamed from: com.sunia.HTREnginev2.tyg$a */
    /* loaded from: classes12.dex */
    public class C14479a extends InheritableThreadLocal<StringMap> {
        public C14479a() {
        }

        @Override // java.lang.InheritableThreadLocal
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public StringMap childValue(final StringMap parentValue) {
            if (parentValue != null) {
                return tyg.this.m57481b(parentValue);
            }
            return null;
        }
    }

    static {
        m57479e();
    }

    /* renamed from: e */
    public static void m57479e() {
        PropertiesUtil properties = PropertiesUtil.getProperties();
        f85889i = properties.getIntegerProperty("log4j2.ThreadContext.initial.capacity", 16);
        f85890j = properties.getBooleanProperty("isThreadContextMapInheritable");
    }

    /* renamed from: a */
    public StringMap m57480a() {
        return new SortedArrayStringMap(f85889i);
    }

    /* renamed from: b */
    public StringMap m57481b(final ReadOnlyStringMap original) {
        return new SortedArrayStringMap(original);
    }

    /* renamed from: c */
    public final ThreadLocal<StringMap> m57482c() {
        return f85890j ? new C14479a() : new ThreadLocal<>();
    }

    @Override // org.apache.logging.log4j.spi.ReadOnlyThreadContextMap, org.apache.logging.log4j.spi.ThreadContextMap
    public void clear() {
        StringMap stringMap = this.f85891e.get();
        if (stringMap != null) {
            stringMap.clear();
        }
    }

    @Override // org.apache.logging.log4j.spi.ReadOnlyThreadContextMap, org.apache.logging.log4j.spi.ThreadContextMap
    public boolean containsKey(final String key) {
        StringMap stringMap = this.f85891e.get();
        return stringMap != null && stringMap.containsKey(key);
    }

    /* renamed from: d */
    public final StringMap m57483d() {
        StringMap stringMap = this.f85891e.get();
        if (stringMap != null) {
            return stringMap;
        }
        StringMap m57480a = m57480a();
        this.f85891e.set(m57480a);
        return m57480a;
    }

    public boolean equals(final Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj != null && (obj instanceof ThreadContextMap)) {
            return Objects.equals(getImmutableMapOrNull(), ((ThreadContextMap) obj).getImmutableMapOrNull());
        }
        return false;
    }

    @Override // org.apache.logging.log4j.spi.ReadOnlyThreadContextMap, org.apache.logging.log4j.spi.ThreadContextMap
    public String get(final String key) {
        return (String) getValue(key);
    }

    @Override // org.apache.logging.log4j.spi.ReadOnlyThreadContextMap, org.apache.logging.log4j.spi.ThreadContextMap
    public Map<String, String> getCopy() {
        StringMap stringMap = this.f85891e.get();
        return stringMap == null ? new HashMap() : stringMap.toMap();
    }

    @Override // org.apache.logging.log4j.spi.ReadOnlyThreadContextMap, org.apache.logging.log4j.spi.ThreadContextMap
    public Map<String, String> getImmutableMapOrNull() {
        StringMap stringMap = this.f85891e.get();
        if (stringMap == null) {
            return null;
        }
        return Collections.unmodifiableMap(stringMap.toMap());
    }

    @Override // org.apache.logging.log4j.spi.ReadOnlyThreadContextMap, org.apache.logging.log4j.spi.ThreadContextMap2
    public StringMap getReadOnlyContextData() {
        StringMap stringMap = this.f85891e.get();
        if (stringMap != null) {
            return stringMap;
        }
        StringMap m57480a = m57480a();
        this.f85891e.set(m57480a);
        return m57480a;
    }

    @Override // org.apache.logging.log4j.spi.ObjectThreadContextMap
    public <V> V getValue(String str) {
        StringMap stringMap = this.f85891e.get();
        if (stringMap == null) {
            return null;
        }
        return (V) stringMap.getValue(str);
    }

    public int hashCode() {
        StringMap stringMap = this.f85891e.get();
        return 31 + (stringMap == null ? 0 : stringMap.hashCode());
    }

    @Override // org.apache.logging.log4j.spi.ReadOnlyThreadContextMap, org.apache.logging.log4j.spi.ThreadContextMap
    public boolean isEmpty() {
        StringMap stringMap = this.f85891e.get();
        return stringMap == null || stringMap.isEmpty();
    }

    @Override // org.apache.logging.log4j.spi.ThreadContextMap
    public void put(final String key, final String value) {
        m57483d().putValue(key, value);
    }

    @Override // org.apache.logging.log4j.spi.ThreadContextMap2
    public void putAll(final Map<String, String> values) {
        if (values == null || values.isEmpty()) {
            return;
        }
        StringMap m57483d = m57483d();
        for (Map.Entry<String, String> entry : values.entrySet()) {
            m57483d.putValue(entry.getKey(), entry.getValue());
        }
    }

    @Override // org.apache.logging.log4j.spi.ObjectThreadContextMap
    public <V> void putAllValues(final Map<String, V> values) {
        if (values == null || values.isEmpty()) {
            return;
        }
        StringMap m57483d = m57483d();
        for (Map.Entry<String, V> entry : values.entrySet()) {
            m57483d.putValue(entry.getKey(), entry.getValue());
        }
    }

    @Override // org.apache.logging.log4j.spi.ObjectThreadContextMap
    public void putValue(final String key, final Object value) {
        m57483d().putValue(key, value);
    }

    @Override // org.apache.logging.log4j.spi.ThreadContextMap
    public void remove(final String key) {
        StringMap stringMap = this.f85891e.get();
        if (stringMap != null) {
            stringMap.remove(key);
        }
    }

    @Override // org.apache.logging.log4j.spi.CleanableThreadContextMap
    public void removeAll(final Iterable<String> keys) {
        StringMap stringMap = this.f85891e.get();
        if (stringMap != null) {
            Iterator<String> it2 = keys.iterator();
            while (it2.hasNext()) {
                stringMap.remove(it2.next());
            }
        }
    }

    public String toString() {
        StringMap stringMap = this.f85891e.get();
        return stringMap == null ? "{}" : stringMap.toString();
    }
}
