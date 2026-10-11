package dagger.internal;

import dagger.Lazy;
import dagger.internal.AbstractMapFactory;
import java.util.Collections;
import java.util.LinkedHashMap;
import java.util.Map;

/* loaded from: classes10.dex */
public final class MapProviderFactory<K, V> extends AbstractMapFactory<K, V, Provider<V>> implements Lazy<Map<K, Provider<V>>> {

    /* loaded from: classes10.dex */
    public static final class Builder<K, V> extends AbstractMapFactory.Builder<K, V, Provider<V>> {

        /* renamed from: dagger.internal.MapProviderFactory$Builder$a */
        /* loaded from: classes10.dex */
        public class C17065a implements Provider<Map<K, Provider<V>>> {

            /* renamed from: a */
            public final /* synthetic */ javax.inject.Provider f94545a;

            public C17065a(javax.inject.Provider provider) {
                this.f94545a = provider;
            }

            @Override // javax.inject.Provider
            /* renamed from: a, reason: merged with bridge method [inline-methods] */
            public Map<K, Provider<V>> get() {
                Map map = (Map) this.f94545a.get();
                if (map.isEmpty()) {
                    return Collections.emptyMap();
                }
                LinkedHashMap newLinkedHashMapWithExpectedSize = DaggerCollections.newLinkedHashMapWithExpectedSize(map.size());
                for (Map.Entry<K, V> entry : map.entrySet()) {
                    newLinkedHashMapWithExpectedSize.put(entry.getKey(), Providers.asDaggerProvider((javax.inject.Provider) entry.getValue()));
                }
                return Collections.unmodifiableMap(newLinkedHashMapWithExpectedSize);
            }
        }

        public MapProviderFactory<K, V> build() {
            return new MapProviderFactory<>(this.f94532a);
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // dagger.internal.AbstractMapFactory.Builder
        public /* bridge */ /* synthetic */ AbstractMapFactory.Builder put(Object obj, Provider provider) {
            return put((Builder<K, V>) obj, provider);
        }

        public Builder(int i) {
            super(i);
        }

        @Override // dagger.internal.AbstractMapFactory.Builder
        public Builder<K, V> put(K k, Provider<V> provider) {
            super.put((Builder<K, V>) k, (Provider) provider);
            return this;
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // dagger.internal.AbstractMapFactory.Builder
        public Builder<K, V> putAll(Provider<Map<K, Provider<V>>> provider) {
            super.putAll((Provider) provider);
            return this;
        }

        @Deprecated
        public Builder<K, V> put(K k, javax.inject.Provider<V> provider) {
            return put((Builder<K, V>) k, (Provider) Providers.asDaggerProvider(provider));
        }

        @Deprecated
        public Builder<K, V> putAll(javax.inject.Provider<Map<K, javax.inject.Provider<V>>> provider) {
            return putAll((Provider) new C17065a(provider));
        }
    }

    public static <K, V> Builder<K, V> builder(int i) {
        return new Builder<>(i);
    }

    public MapProviderFactory(Map<K, Provider<V>> map) {
        super(map);
    }

    @Override // javax.inject.Provider
    public Map<K, Provider<V>> get() {
        return m60902b();
    }
}
