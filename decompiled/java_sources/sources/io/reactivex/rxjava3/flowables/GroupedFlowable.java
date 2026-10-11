package io.reactivex.rxjava3.flowables;

import io.reactivex.rxjava3.annotations.Nullable;
import io.reactivex.rxjava3.core.Flowable;

/* loaded from: classes4.dex */
public abstract class GroupedFlowable<K, T> extends Flowable<T> {

    /* renamed from: f */
    public final K f95015f;

    public GroupedFlowable(@Nullable K key) {
        this.f95015f = key;
    }

    @Nullable
    public K getKey() {
        return this.f95015f;
    }
}
