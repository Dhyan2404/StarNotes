package io.reactivex.rxjava3.internal.operators.mixed;

import io.reactivex.rxjava3.core.Completable;
import io.reactivex.rxjava3.core.CompletableObserver;
import io.reactivex.rxjava3.core.CompletableSource;
import io.reactivex.rxjava3.functions.Function;
import io.reactivex.rxjava3.internal.operators.mixed.FlowableSwitchMapCompletable;
import org.reactivestreams.Publisher;

/* loaded from: classes10.dex */
public final class FlowableSwitchMapCompletablePublisher<T> extends Completable {

    /* renamed from: e */
    public final Publisher<T> f96243e;

    /* renamed from: f */
    public final Function<? super T, ? extends CompletableSource> f96244f;

    /* renamed from: g */
    public final boolean f96245g;

    public FlowableSwitchMapCompletablePublisher(Publisher<T> source, Function<? super T, ? extends CompletableSource> mapper, boolean delayErrors) {
        this.f96243e = source;
        this.f96244f = mapper;
        this.f96245g = delayErrors;
    }

    @Override // io.reactivex.rxjava3.core.Completable
    public void subscribeActual(CompletableObserver observer) {
        this.f96243e.subscribe(new FlowableSwitchMapCompletable.SwitchMapCompletableObserver(observer, this.f96244f, this.f96245g));
    }
}
