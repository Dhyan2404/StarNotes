package com.google.common.cache;

import com.google.common.annotations.GwtCompatible;
import com.sunia.HTREnginev2.rnf;

@rnf
@FunctionalInterface
@GwtCompatible
/* loaded from: classes6.dex */
public interface Weigher<K, V> {
    int weigh(K k, V v);
}
