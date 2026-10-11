package com.google.android.datatransport.runtime.dagger.internal;

import com.onyx.android.sdk.data.couchbase.bean.CouchFieldKey;
import java.util.Collections;
import java.util.LinkedHashMap;
import java.util.Map;
import javax.inject.Provider;

/* loaded from: classes4.dex */
public abstract class AbstractMapFactory<K, V, V2> implements Factory<Map<K, V2>> {

    /* renamed from: a */
    public final Map<K, Provider<V>> f21977a;

    /* loaded from: classes4.dex */
    public static abstract class Builder<K, V, V2> {

        /* renamed from: a */
        public final LinkedHashMap<K, Provider<V>> f21978a;

        public Builder(int i) {
            this.f21978a = DaggerCollections.newLinkedHashMapWithExpectedSize(i);
        }

        /* JADX WARN: Multi-variable type inference failed */
        public Builder<K, V, V2> put(K k, Provider<V> provider) {
            this.f21978a.put(Preconditions.checkNotNull(k, "key"), Preconditions.checkNotNull(provider, CouchFieldKey.KEY_PROVIDER));
            return this;
        }

        public Builder<K, V, V2> putAll(Provider<Map<K, V2>> provider) {
            if (provider instanceof DelegateFactory) {
                return putAll(((DelegateFactory) provider).m17444a());
            }
            this.f21978a.putAll(((AbstractMapFactory) provider).f21977a);
            return this;
        }
    }

    public AbstractMapFactory(Map<K, Provider<V>> map) {
        this.f21977a = Collections.unmodifiableMap(map);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: b */
    public final Map<K, Provider<V>> m17441b() {
        return this.f21977a;
    }
}
