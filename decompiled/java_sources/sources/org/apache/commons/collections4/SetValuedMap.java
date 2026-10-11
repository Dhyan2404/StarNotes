package org.apache.commons.collections4;

import java.util.Collection;
import java.util.Set;

/* loaded from: classes11.dex */
public interface SetValuedMap<K, V> extends MultiValuedMap<K, V> {
    /* JADX WARN: Multi-variable type inference failed */
    @Override // org.apache.commons.collections4.MultiValuedMap
    /* bridge */ /* synthetic */ default Collection get(Object obj) {
        return get((SetValuedMap<K, V>) obj);
    }

    @Override // org.apache.commons.collections4.MultiValuedMap
    Set<V> get(K k);

    @Override // org.apache.commons.collections4.MultiValuedMap
    Set<V> remove(Object obj);
}
