package io.reactivex.rxjava3.observables;

import io.reactivex.rxjava3.annotations.Nullable;
import io.reactivex.rxjava3.core.Observable;

/* loaded from: classes10.dex */
public abstract class GroupedObservable<K, T> extends Observable<T> {

    /* renamed from: e */
    public final K f97433e;

    public GroupedObservable(@Nullable K key) {
        this.f97433e = key;
    }

    @Nullable
    public K getKey() {
        return this.f97433e;
    }
}
