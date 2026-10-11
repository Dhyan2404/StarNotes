package io.reactivex.rxjava3.internal.operators.single;

import io.reactivex.rxjava3.core.Single;
import io.reactivex.rxjava3.core.SingleObserver;
import io.reactivex.rxjava3.core.SingleSource;
import io.reactivex.rxjava3.disposables.Disposable;
import io.reactivex.rxjava3.exceptions.CompositeException;
import io.reactivex.rxjava3.exceptions.Exceptions;
import io.reactivex.rxjava3.functions.Action;

/* loaded from: classes10.dex */
public final class SingleDoOnTerminate<T> extends Single<T> {

    /* renamed from: e */
    public final SingleSource<T> f97191e;

    /* renamed from: f */
    public final Action f97192f;

    /* renamed from: io.reactivex.rxjava3.internal.operators.single.SingleDoOnTerminate$a */
    /* loaded from: classes10.dex */
    public final class C17599a implements SingleObserver<T> {

        /* renamed from: e */
        public final SingleObserver<? super T> f97193e;

        public C17599a(SingleObserver<? super T> observer) {
            this.f97193e = observer;
        }

        @Override // io.reactivex.rxjava3.core.SingleObserver
        public void onError(Throwable e) {
            try {
                SingleDoOnTerminate.this.f97192f.run();
            } catch (Throwable th) {
                Exceptions.throwIfFatal(th);
                e = new CompositeException(e, th);
            }
            this.f97193e.onError(e);
        }

        @Override // io.reactivex.rxjava3.core.SingleObserver
        public void onSubscribe(Disposable d) {
            this.f97193e.onSubscribe(d);
        }

        @Override // io.reactivex.rxjava3.core.SingleObserver
        public void onSuccess(T value) {
            try {
                SingleDoOnTerminate.this.f97192f.run();
                this.f97193e.onSuccess(value);
            } catch (Throwable th) {
                Exceptions.throwIfFatal(th);
                this.f97193e.onError(th);
            }
        }
    }

    public SingleDoOnTerminate(SingleSource<T> source, Action onTerminate) {
        this.f97191e = source;
        this.f97192f = onTerminate;
    }

    @Override // io.reactivex.rxjava3.core.Single
    public void subscribeActual(final SingleObserver<? super T> observer) {
        this.f97191e.subscribe(new C17599a(observer));
    }
}
