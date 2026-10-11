package com.sunia.HTREnginev2;

import java.util.Collections;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import java.util.Objects;
import org.apache.logging.log4j.spi.CopyOnWrite;
import org.apache.logging.log4j.spi.ObjectThreadContextMap;
import org.apache.logging.log4j.spi.ReadOnlyThreadContextMap;
import org.apache.logging.log4j.spi.ThreadContextMap;
import org.apache.logging.log4j.util.PropertiesUtil;
import org.apache.logging.log4j.util.ReadOnlyStringMap;
import org.apache.logging.log4j.util.SortedArrayStringMap;
import org.apache.logging.log4j.util.StringMap;

/* loaded from: classes12.dex */
public class oce implements ReadOnlyThreadContextMap, ObjectThreadContextMap, CopyOnWrite {

    /* renamed from: f */
    public static final String f79563f = "isThreadContextMapInheritable";

    /* renamed from: g */
    public static final int f79564g = 16;

    /* renamed from: h */
    public static final String f79565h = "log4j2.ThreadContext.initial.capacity";

    /* renamed from: i */
    public static final StringMap f79566i;

    /* renamed from: j */
    public static volatile int f79567j;

    /* renamed from: k */
    public static volatile boolean f79568k;

    /* renamed from: e */
    public final ThreadLocal<StringMap> f79569e = m55932c();

    /* renamed from: com.sunia.HTREnginev2.oce$a */
    /* loaded from: classes12.dex */
    public class C14178a extends InheritableThreadLocal<StringMap> {
        public C14178a() {
        }

        @Override // java.lang.InheritableThreadLocal
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public StringMap childValue(final StringMap parentValue) {
            if (parentValue == null) {
                return null;
            }
            StringMap m55931b = oce.this.m55931b(parentValue);
            m55931b.freeze();
            return m55931b;
        }
    }

    static {
        SortedArrayStringMap sortedArrayStringMap = new SortedArrayStringMap(1);
        f79566i = sortedArrayStringMap;
        sortedArrayStringMap.freeze();
        m55929d();
    }

    /* renamed from: d */
    public static void m55929d() {
        PropertiesUtil properties = PropertiesUtil.getProperties();
        f79567j = properties.getIntegerProperty("log4j2.ThreadContext.initial.capacity", 16);
        f79568k = properties.getBooleanProperty("isThreadContextMapInheritable");
    }

    /* renamed from: a */
    public StringMap m55930a() {
        return new SortedArrayStringMap(f79567j);
    }

    /* renamed from: b */
    public StringMap m55931b(final ReadOnlyStringMap original) {
        return new SortedArrayStringMap(original);
    }

    /* renamed from: c */
    public final ThreadLocal<StringMap> m55932c() {
        return f79568k ? new C14178a() : new ThreadLocal<>();
    }

    @Override // org.apache.logging.log4j.spi.ReadOnlyThreadContextMap, org.apache.logging.log4j.spi.ThreadContextMap
    public void clear() {
        this.f79569e.remove();
    }

    @Override // org.apache.logging.log4j.spi.ReadOnlyThreadContextMap, org.apache.logging.log4j.spi.ThreadContextMap
    public boolean containsKey(final String key) {
        StringMap stringMap = this.f79569e.get();
        return stringMap != null && stringMap.containsKey(key);
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
        StringMap stringMap = this.f79569e.get();
        return stringMap == null ? new HashMap() : stringMap.toMap();
    }

    @Override // org.apache.logging.log4j.spi.ReadOnlyThreadContextMap, org.apache.logging.log4j.spi.ThreadContextMap
    public Map<String, String> getImmutableMapOrNull() {
        StringMap stringMap = this.f79569e.get();
        if (stringMap == null) {
            return null;
        }
        return Collections.unmodifiableMap(stringMap.toMap());
    }

    @Override // org.apache.logging.log4j.spi.ReadOnlyThreadContextMap, org.apache.logging.log4j.spi.ThreadContextMap2
    public StringMap getReadOnlyContextData() {
        StringMap stringMap = this.f79569e.get();
        return stringMap == null ? f79566i : stringMap;
    }

    @Override // org.apache.logging.log4j.spi.ObjectThreadContextMap
    public <V> V getValue(String str) {
        StringMap stringMap = this.f79569e.get();
        if (stringMap == null) {
            return null;
        }
        return (V) stringMap.getValue(str);
    }

    public int hashCode() {
        StringMap stringMap = this.f79569e.get();
        return 31 + (stringMap == null ? 0 : stringMap.hashCode());
    }

    @Override // org.apache.logging.log4j.spi.ReadOnlyThreadContextMap, org.apache.logging.log4j.spi.ThreadContextMap
    public boolean isEmpty() {
        StringMap stringMap = this.f79569e.get();
        return stringMap == null || stringMap.isEmpty();
    }

    @Override // org.apache.logging.log4j.spi.ThreadContextMap
    public void put(final String key, final String value) {
        putValue(key, value);
    }

    @Override // org.apache.logging.log4j.spi.ThreadContextMap2
    public void putAll(final Map<String, String> values) {
        if (values == null || values.isEmpty()) {
            return;
        }
        StringMap stringMap = this.f79569e.get();
        StringMap m55930a = stringMap == null ? m55930a() : m55931b(stringMap);
        for (Map.Entry<String, String> entry : values.entrySet()) {
            m55930a.putValue(entry.getKey(), entry.getValue());
        }
        m55930a.freeze();
        this.f79569e.set(m55930a);
    }

    @Override // org.apache.logging.log4j.spi.ObjectThreadContextMap
    public <V> void putAllValues(final Map<String, V> values) {
        if (values == null || values.isEmpty()) {
            return;
        }
        StringMap stringMap = this.f79569e.get();
        StringMap m55930a = stringMap == null ? m55930a() : m55931b(stringMap);
        for (Map.Entry<String, V> entry : values.entrySet()) {
            m55930a.putValue(entry.getKey(), entry.getValue());
        }
        m55930a.freeze();
        this.f79569e.set(m55930a);
    }

    @Override // org.apache.logging.log4j.spi.ObjectThreadContextMap
    public void putValue(final String key, final Object value) {
        StringMap stringMap = this.f79569e.get();
        StringMap m55930a = stringMap == null ? m55930a() : m55931b(stringMap);
        m55930a.putValue(key, value);
        m55930a.freeze();
        this.f79569e.set(m55930a);
    }

    @Override // org.apache.logging.log4j.spi.ThreadContextMap
    public void remove(final String key) {
        StringMap stringMap = this.f79569e.get();
        if (stringMap != null) {
            StringMap m55931b = m55931b(stringMap);
            m55931b.remove(key);
            m55931b.freeze();
            this.f79569e.set(m55931b);
        }
    }

    @Override // org.apache.logging.log4j.spi.CleanableThreadContextMap
    public void removeAll(final Iterable<String> keys) {
        StringMap stringMap = this.f79569e.get();
        if (stringMap != null) {
            StringMap m55931b = m55931b(stringMap);
            Iterator<String> it2 = keys.iterator();
            while (it2.hasNext()) {
                m55931b.remove(it2.next());
            }
            m55931b.freeze();
            this.f79569e.set(m55931b);
        }
    }

    public String toString() {
        StringMap stringMap = this.f79569e.get();
        return stringMap == null ? "{}" : stringMap.toString();
    }
}
