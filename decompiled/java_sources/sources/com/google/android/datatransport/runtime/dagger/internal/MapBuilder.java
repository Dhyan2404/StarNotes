package com.google.android.datatransport.runtime.dagger.internal;

import java.util.Collections;
import java.util.Map;

/* loaded from: classes4.dex */
public final class MapBuilder<K, V> {

    /* renamed from: a */
    public final Map<K, V> f21987a;

    public MapBuilder(int i) {
        this.f21987a = DaggerCollections.newLinkedHashMapWithExpectedSize(i);
    }

    public static <K, V> MapBuilder<K, V> newMapBuilder(int i) {
        return new MapBuilder<>(i);
    }

    public Map<K, V> build() {
        return this.f21987a.size() != 0 ? Collections.unmodifiableMap(this.f21987a) : Collections.emptyMap();
    }

    public MapBuilder<K, V> put(K k, V v) {
        this.f21987a.put(k, v);
        return this;
    }

    public MapBuilder<K, V> putAll(Map<K, V> map) {
        this.f21987a.putAll(map);
        return this;
    }
}
