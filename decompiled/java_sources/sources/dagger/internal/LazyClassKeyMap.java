package dagger.internal;

import java.util.Collection;
import java.util.Map;
import java.util.Set;

/* loaded from: classes10.dex */
public final class LazyClassKeyMap<V> implements Map<Class<?>, V> {

    /* renamed from: e */
    public final Map<String, V> f94541e;

    /* loaded from: classes10.dex */
    public static class Factory<V> implements Provider<Map<Class<?>, V>> {

        /* renamed from: a */
        public MapFactory<String, V> f94542a;

        public Factory(MapFactory<String, V> mapFactory) {
            this.f94542a = mapFactory;
        }

        /* renamed from: of */
        public static <V> Factory<V> m60910of(MapFactory<String, V> mapFactory) {
            return new Factory<>(mapFactory);
        }

        @Override // javax.inject.Provider
        public Map<Class<?>, V> get() {
            return LazyClassKeyMap.m60909of(this.f94542a.get());
        }
    }

    public LazyClassKeyMap(Map<String, V> map) {
        this.f94541e = map;
    }

    /* renamed from: of */
    public static <V> Map<Class<?>, V> m60909of(Map<String, V> map) {
        return new LazyClassKeyMap(map);
    }

    @Override // java.util.Map
    public void clear() {
        throw new UnsupportedOperationException("Dagger map bindings are immutable");
    }

    @Override // java.util.Map
    public boolean containsKey(Object obj) {
        if (obj instanceof Class) {
            return this.f94541e.containsKey(((Class) obj).getName());
        }
        throw new IllegalArgumentException("Key must be a class");
    }

    @Override // java.util.Map
    public boolean containsValue(Object obj) {
        return this.f94541e.containsValue(obj);
    }

    @Override // java.util.Map
    public Set<Map.Entry<Class<?>, V>> entrySet() {
        throw new UnsupportedOperationException("Maps created with @LazyClassKey do not support usage of entrySet(). Consider @ClassKey instead.");
    }

    @Override // java.util.Map
    public V get(Object obj) {
        if (obj instanceof Class) {
            return this.f94541e.get(((Class) obj).getName());
        }
        throw new IllegalArgumentException("Key must be a class");
    }

    @Override // java.util.Map
    public boolean isEmpty() {
        return this.f94541e.isEmpty();
    }

    @Override // java.util.Map
    public Set<Class<?>> keySet() {
        throw new UnsupportedOperationException("Maps created with @LazyClassKey do not support usage of keySet(). Consider @ClassKey instead.");
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // java.util.Map
    public /* bridge */ /* synthetic */ Object put(Class<?> cls, Object obj) {
        return put2(cls, (Class<?>) obj);
    }

    @Override // java.util.Map
    public void putAll(Map<? extends Class<?>, ? extends V> map) {
        throw new UnsupportedOperationException("Dagger map bindings are immutable");
    }

    @Override // java.util.Map
    public V remove(Object obj) {
        throw new UnsupportedOperationException("Dagger map bindings are immutable");
    }

    @Override // java.util.Map
    public int size() {
        return this.f94541e.size();
    }

    @Override // java.util.Map
    public Collection<V> values() {
        return this.f94541e.values();
    }

    /* renamed from: put, reason: avoid collision after fix types in other method */
    public V put2(Class<?> cls, V v) {
        throw new UnsupportedOperationException("Dagger map bindings are immutable");
    }
}
