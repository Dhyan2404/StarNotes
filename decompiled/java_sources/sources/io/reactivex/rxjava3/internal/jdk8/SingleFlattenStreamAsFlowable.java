package io.reactivex.rxjava3.internal.jdk8;

import io.reactivex.rxjava3.annotations.NonNull;
import io.reactivex.rxjava3.core.Flowable;
import io.reactivex.rxjava3.core.Single;
import io.reactivex.rxjava3.functions.Function;
import io.reactivex.rxjava3.internal.jdk8.MaybeFlattenStreamAsFlowable;
import java.util.stream.Stream;
import org.reactivestreams.Subscriber;

/* loaded from: classes10.dex */
public final class SingleFlattenStreamAsFlowable<T, R> extends Flowable<R> {

    /* renamed from: f */
    public final Single<T> f95155f;

    /* renamed from: g */
    public final Function<? super T, ? extends Stream<? extends R>> f95156g;

    public SingleFlattenStreamAsFlowable(Single<T> source, Function<? super T, ? extends Stream<? extends R>> mapper) {
        this.f95155f = source;
        this.f95156g = mapper;
    }

    @Override // io.reactivex.rxjava3.core.Flowable
    public void subscribeActual(@NonNull Subscriber<? super R> s) {
        this.f95155f.subscribe(new MaybeFlattenStreamAsFlowable.FlattenStreamMultiObserver(s, this.f95156g));
    }
}
