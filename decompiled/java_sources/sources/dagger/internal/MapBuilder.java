package dagger.internal;

import java.util.Collections;
import java.util.Map;

/* loaded from: classes10.dex */
public final class MapBuilder<K, V> {

    /* renamed from: a */
    public final Map<K, V> f94543a;

    public MapBuilder(int i) {
        this.f94543a = DaggerCollections.newLinkedHashMapWithExpectedSize(i);
    }

    public static <K, V> MapBuilder<K, V> newMapBuilder(int i) {
        return new MapBuilder<>(i);
    }

    public Map<K, V> build() {
        return this.f94543a.isEmpty() ? Collections.emptyMap() : Collections.unmodifiableMap(this.f94543a);
    }

    public MapBuilder<K, V> put(K k, V v) {
        this.f94543a.put(k, v);
        return this;
    }

    public MapBuilder<K, V> putAll(Map<K, V> map) {
        this.f94543a.putAll(map);
        return this;
    }
}
