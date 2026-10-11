package dagger.internal;

import com.onyx.android.sdk.data.couchbase.bean.CouchFieldKey;
import java.util.Collections;
import java.util.LinkedHashMap;
import java.util.Map;

/* loaded from: classes10.dex */
public abstract class AbstractMapFactory<K, V, V2> implements Factory<Map<K, V2>> {

    /* renamed from: a */
    public final Map<K, Provider<V>> f94531a;

    /* loaded from: classes10.dex */
    public static abstract class Builder<K, V, V2> {

        /* renamed from: a */
        public final LinkedHashMap<K, Provider<V>> f94532a;

        public Builder(int i) {
            this.f94532a = DaggerCollections.newLinkedHashMapWithExpectedSize(i);
        }

        /* JADX WARN: Multi-variable type inference failed */
        public Builder<K, V, V2> put(K k, Provider<V> provider) {
            this.f94532a.put(Preconditions.checkNotNull(k, "key"), Preconditions.checkNotNull(provider, CouchFieldKey.KEY_PROVIDER));
            return this;
        }

        public Builder<K, V, V2> putAll(Provider<Map<K, V2>> provider) {
            if (provider instanceof DelegateFactory) {
                return putAll(((DelegateFactory) provider).m60906a());
            }
            this.f94532a.putAll(((AbstractMapFactory) provider).f94531a);
            return this;
        }
    }

    public AbstractMapFactory(Map<K, Provider<V>> map) {
        this.f94531a = Collections.unmodifiableMap(map);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: b */
    public final Map<K, Provider<V>> m60902b() {
        return this.f94531a;
    }
}
