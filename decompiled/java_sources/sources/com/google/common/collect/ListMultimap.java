package com.google.common.collect;

import com.google.common.annotations.GwtCompatible;
import com.google.errorprone.annotations.CanIgnoreReturnValue;
import com.sunia.HTREnginev2.snf;
import com.sunia.HTREnginev2.xvk;
import java.util.Collection;
import java.util.List;
import java.util.Map;
import javax.annotation.CheckForNull;

@snf
@GwtCompatible
/* loaded from: classes6.dex */
public interface ListMultimap<K, V> extends Multimap<K, V> {
    Map<K, Collection<V>> asMap();

    boolean equals(@CheckForNull Object obj);

    /* JADX WARN: Multi-variable type inference failed */
    /* bridge */ /* synthetic */ default Collection get(@xvk Object obj) {
        return get((ListMultimap<K, V>) obj);
    }

    @Override // com.google.common.collect.Multimap, com.google.common.collect.ListMultimap
    List<V> get(@xvk K k);

    @Override // 
    @CanIgnoreReturnValue
    List<V> removeAll(@CheckForNull Object obj);

    /* JADX WARN: Multi-variable type inference failed */
    @CanIgnoreReturnValue
    /* bridge */ /* synthetic */ default Collection replaceValues(@xvk Object obj, Iterable iterable) {
        return replaceValues((ListMultimap<K, V>) obj, iterable);
    }

    @Override // com.google.common.collect.Multimap, com.google.common.collect.ListMultimap
    @CanIgnoreReturnValue
    List<V> replaceValues(@xvk K k, Iterable<? extends V> iterable);
}
