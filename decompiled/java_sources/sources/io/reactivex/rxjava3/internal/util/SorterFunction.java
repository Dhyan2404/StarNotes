package io.reactivex.rxjava3.internal.util;

import io.reactivex.rxjava3.functions.Function;
import java.util.Collections;
import java.util.Comparator;
import java.util.List;

/* loaded from: classes10.dex */
public final class SorterFunction<T> implements Function<List<T>, List<T>> {

    /* renamed from: e */
    public final Comparator<? super T> f97432e;

    public SorterFunction(Comparator<? super T> comparator) {
        this.f97432e = comparator;
    }

    @Override // io.reactivex.rxjava3.functions.Function
    public List<T> apply(List<T> t) {
        Collections.sort(t, this.f97432e);
        return t;
    }
}
