package com.google.common.collect;

import com.google.common.annotations.GwtCompatible;
import com.google.common.collect.MapDifference;
import com.sunia.HTREnginev2.snf;
import java.util.SortedMap;

@snf
@GwtCompatible
/* loaded from: classes6.dex */
public interface SortedMapDifference<K, V> extends MapDifference<K, V> {
    @Override // 
    SortedMap<K, MapDifference.ValueDifference<V>> entriesDiffering();

    @Override // 
    SortedMap<K, V> entriesInCommon();

    @Override // 
    SortedMap<K, V> entriesOnlyOnLeft();

    @Override // 
    SortedMap<K, V> entriesOnlyOnRight();
}
