package io.reactivex.rxjava3.internal.jdk8;

import io.reactivex.rxjava3.annotations.NonNull;
import io.reactivex.rxjava3.core.Observable;
import io.reactivex.rxjava3.core.Observer;
import io.reactivex.rxjava3.core.Single;
import io.reactivex.rxjava3.functions.Function;
import io.reactivex.rxjava3.internal.jdk8.MaybeFlattenStreamAsObservable;
import java.util.stream.Stream;

/* loaded from: classes10.dex */
public final class SingleFlattenStreamAsObservable<T, R> extends Observable<R> {

    /* renamed from: e */
    public final Single<T> f95157e;

    /* renamed from: f */
    public final Function<? super T, ? extends Stream<? extends R>> f95158f;

    public SingleFlattenStreamAsObservable(Single<T> source, Function<? super T, ? extends Stream<? extends R>> mapper) {
        this.f95157e = source;
        this.f95158f = mapper;
    }

    @Override // io.reactivex.rxjava3.core.Observable
    public void subscribeActual(@NonNull Observer<? super R> s) {
        this.f95157e.subscribe(new MaybeFlattenStreamAsObservable.FlattenStreamMultiObserver(s, this.f95158f));
    }
}
