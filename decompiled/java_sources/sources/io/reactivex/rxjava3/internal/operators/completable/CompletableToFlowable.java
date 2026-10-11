package io.reactivex.rxjava3.internal.operators.completable;

import io.reactivex.rxjava3.core.CompletableSource;
import io.reactivex.rxjava3.core.Flowable;
import io.reactivex.rxjava3.internal.operators.flowable.FlowableFromCompletable;
import org.reactivestreams.Subscriber;

/* loaded from: classes10.dex */
public final class CompletableToFlowable<T> extends Flowable<T> {

    /* renamed from: f */
    public final CompletableSource f95316f;

    public CompletableToFlowable(CompletableSource source) {
        this.f95316f = source;
    }

    @Override // io.reactivex.rxjava3.core.Flowable
    public void subscribeActual(Subscriber<? super T> s) {
        this.f95316f.subscribe(new FlowableFromCompletable.FromCompletableObserver(s));
    }
}
