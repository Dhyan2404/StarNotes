package org.apache.logging.log4j.spi;

import java.util.Collections;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import java.util.Objects;
import org.apache.logging.log4j.util.BiConsumer;
import org.apache.logging.log4j.util.PropertiesUtil;
import org.apache.logging.log4j.util.ReadOnlyStringMap;
import org.apache.logging.log4j.util.TriConsumer;

/* loaded from: classes12.dex */
public class DefaultThreadContextMap implements ThreadContextMap, ReadOnlyStringMap {
    public static final String INHERITABLE_MAP = "isThreadContextMapInheritable";
    private static boolean inheritableMap = false;
    private static final long serialVersionUID = 8218007901108944053L;
    private final ThreadLocal<Map<String, String>> localMap;
    private final boolean useMap;

    /* renamed from: org.apache.logging.log4j.spi.DefaultThreadContextMap$a */
    /* loaded from: classes12.dex */
    public static class C19403a extends InheritableThreadLocal<Map<String, String>> {

        /* renamed from: a */
        public final /* synthetic */ boolean f111232a;

        public C19403a(final boolean val$isMapEnabled) {
            this.f111232a = val$isMapEnabled;
        }

        @Override // java.lang.InheritableThreadLocal
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public Map<String, String> childValue(final Map<String, String> parentValue) {
            if (parentValue == null || !this.f111232a) {
                return null;
            }
            return Collections.unmodifiableMap(new HashMap(parentValue));
        }
    }

    static {
        init();
    }

    public DefaultThreadContextMap() {
        this(true);
    }

    public static ThreadLocal<Map<String, String>> createThreadLocalMap(final boolean isMapEnabled) {
        return inheritableMap ? new C19403a(isMapEnabled) : new ThreadLocal<>();
    }

    public static void init() {
        inheritableMap = PropertiesUtil.getProperties().getBooleanProperty("isThreadContextMapInheritable");
    }

    @Override // org.apache.logging.log4j.spi.ThreadContextMap
    public void clear() {
        this.localMap.remove();
    }

    @Override // org.apache.logging.log4j.spi.ThreadContextMap
    public boolean containsKey(final String key) {
        Map<String, String> map = this.localMap.get();
        return map != null && map.containsKey(key);
    }

    public boolean equals(final Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null) {
            return false;
        }
        if ((!(obj instanceof DefaultThreadContextMap) || this.useMap == ((DefaultThreadContextMap) obj).useMap) && (obj instanceof ThreadContextMap)) {
            return Objects.equals(this.localMap.get(), ((ThreadContextMap) obj).getImmutableMapOrNull());
        }
        return false;
    }

    @Override // org.apache.logging.log4j.util.ReadOnlyStringMap
    public <V> void forEach(final BiConsumer<String, ? super V> action) {
        Map<String, String> map = this.localMap.get();
        if (map == null) {
            return;
        }
        for (Map.Entry<String, String> entry : map.entrySet()) {
            action.accept(entry.getKey(), entry.getValue());
        }
    }

    @Override // org.apache.logging.log4j.spi.ThreadContextMap
    public String get(final String key) {
        Map<String, String> map = this.localMap.get();
        if (map == null) {
            return null;
        }
        return map.get(key);
    }

    @Override // org.apache.logging.log4j.spi.ThreadContextMap
    public Map<String, String> getCopy() {
        Map<String, String> map = this.localMap.get();
        return map == null ? new HashMap() : new HashMap(map);
    }

    @Override // org.apache.logging.log4j.spi.ThreadContextMap
    public Map<String, String> getImmutableMapOrNull() {
        return this.localMap.get();
    }

    @Override // org.apache.logging.log4j.util.ReadOnlyStringMap
    public <V> V getValue(String str) {
        Map<String, String> map = this.localMap.get();
        if (map == null) {
            return null;
        }
        return (V) ((String) map.get(str));
    }

    public int hashCode() {
        Map<String, String> map = this.localMap.get();
        return (((map == null ? 0 : map.hashCode()) + 31) * 31) + Boolean.valueOf(this.useMap).hashCode();
    }

    @Override // org.apache.logging.log4j.spi.ThreadContextMap
    public boolean isEmpty() {
        Map<String, String> map = this.localMap.get();
        return map == null || map.isEmpty();
    }

    @Override // org.apache.logging.log4j.spi.ThreadContextMap
    public void put(final String key, final String value) {
        if (this.useMap) {
            Map<String, String> map = this.localMap.get();
            HashMap hashMap = map == null ? new HashMap(1) : new HashMap(map);
            hashMap.put(key, value);
            this.localMap.set(Collections.unmodifiableMap(hashMap));
        }
    }

    public void putAll(final Map<String, String> m) {
        if (this.useMap) {
            Map<String, String> map = this.localMap.get();
            HashMap hashMap = map == null ? new HashMap(m.size()) : new HashMap(map);
            for (Map.Entry<String, String> entry : m.entrySet()) {
                hashMap.put(entry.getKey(), entry.getValue());
            }
            this.localMap.set(Collections.unmodifiableMap(hashMap));
        }
    }

    @Override // org.apache.logging.log4j.spi.ThreadContextMap
    public void remove(final String key) {
        Map<String, String> map = this.localMap.get();
        if (map != null) {
            HashMap hashMap = new HashMap(map);
            hashMap.remove(key);
            this.localMap.set(Collections.unmodifiableMap(hashMap));
        }
    }

    public void removeAll(final Iterable<String> keys) {
        Map<String, String> map = this.localMap.get();
        if (map != null) {
            HashMap hashMap = new HashMap(map);
            Iterator<String> it2 = keys.iterator();
            while (it2.hasNext()) {
                hashMap.remove(it2.next());
            }
            this.localMap.set(Collections.unmodifiableMap(hashMap));
        }
    }

    @Override // org.apache.logging.log4j.util.ReadOnlyStringMap
    public int size() {
        Map<String, String> map = this.localMap.get();
        if (map == null) {
            return 0;
        }
        return map.size();
    }

    @Override // org.apache.logging.log4j.util.ReadOnlyStringMap
    public Map<String, String> toMap() {
        return getCopy();
    }

    public String toString() {
        Map<String, String> map = this.localMap.get();
        return map == null ? "{}" : map.toString();
    }

    public DefaultThreadContextMap(final boolean useMap) {
        this.useMap = useMap;
        this.localMap = createThreadLocalMap(useMap);
    }

    @Override // org.apache.logging.log4j.util.ReadOnlyStringMap
    public <V, S> void forEach(final TriConsumer<String, ? super V, S> action, final S state) {
        Map<String, String> map = this.localMap.get();
        if (map == null) {
            return;
        }
        for (Map.Entry<String, String> entry : map.entrySet()) {
            action.accept(entry.getKey(), entry.getValue(), state);
        }
    }
}
