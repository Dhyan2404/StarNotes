package io.reactivex.rxjava3.internal.operators.single;

import io.reactivex.rxjava3.core.Single;
import io.reactivex.rxjava3.core.SingleObserver;
import io.reactivex.rxjava3.core.SingleSource;
import io.reactivex.rxjava3.disposables.Disposable;
import io.reactivex.rxjava3.exceptions.CompositeException;
import io.reactivex.rxjava3.exceptions.Exceptions;
import io.reactivex.rxjava3.functions.BiConsumer;

/* loaded from: classes10.dex */
public final class SingleDoOnEvent<T> extends Single<T> {

    /* renamed from: e */
    public final SingleSource<T> f97171e;

    /* renamed from: f */
    public final BiConsumer<? super T, ? super Throwable> f97172f;

    /* renamed from: io.reactivex.rxjava3.internal.operators.single.SingleDoOnEvent$a */
    /* loaded from: classes10.dex */
    public final class C17595a implements SingleObserver<T> {

        /* renamed from: e */
        public final SingleObserver<? super T> f97173e;

        public C17595a(SingleObserver<? super T> observer) {
            this.f97173e = observer;
        }

        @Override // io.reactivex.rxjava3.core.SingleObserver
        public void onError(Throwable e) {
            try {
                SingleDoOnEvent.this.f97172f.accept(null, e);
            } catch (Throwable th) {
                Exceptions.throwIfFatal(th);
                e = new CompositeException(e, th);
            }
            this.f97173e.onError(e);
        }

        @Override // io.reactivex.rxjava3.core.SingleObserver
        public void onSubscribe(Disposable d) {
            this.f97173e.onSubscribe(d);
        }

        @Override // io.reactivex.rxjava3.core.SingleObserver
        public void onSuccess(T value) {
            try {
                SingleDoOnEvent.this.f97172f.accept(value, null);
                this.f97173e.onSuccess(value);
            } catch (Throwable th) {
                Exceptions.throwIfFatal(th);
                this.f97173e.onError(th);
            }
        }
    }

    public SingleDoOnEvent(SingleSource<T> source, BiConsumer<? super T, ? super Throwable> onEvent) {
        this.f97171e = source;
        this.f97172f = onEvent;
    }

    @Override // io.reactivex.rxjava3.core.Single
    public void subscribeActual(final SingleObserver<? super T> observer) {
        this.f97171e.subscribe(new C17595a(observer));
    }
}
