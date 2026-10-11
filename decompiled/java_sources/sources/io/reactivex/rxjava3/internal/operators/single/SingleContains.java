package io.reactivex.rxjava3.internal.operators.single;

import io.reactivex.rxjava3.core.Single;
import io.reactivex.rxjava3.core.SingleObserver;
import io.reactivex.rxjava3.core.SingleSource;
import io.reactivex.rxjava3.disposables.Disposable;
import io.reactivex.rxjava3.exceptions.Exceptions;
import io.reactivex.rxjava3.functions.BiPredicate;

/* loaded from: classes10.dex */
public final class SingleContains<T> extends Single<Boolean> {

    /* renamed from: e */
    public final SingleSource<T> f97118e;

    /* renamed from: f */
    public final Object f97119f;

    /* renamed from: g */
    public final BiPredicate<Object, Object> f97120g;

    /* renamed from: io.reactivex.rxjava3.internal.operators.single.SingleContains$a */
    /* loaded from: classes10.dex */
    public final class C17588a implements SingleObserver<T> {

        /* renamed from: e */
        public final SingleObserver<? super Boolean> f97121e;

        public C17588a(SingleObserver<? super Boolean> observer) {
            this.f97121e = observer;
        }

        @Override // io.reactivex.rxjava3.core.SingleObserver
        public void onError(Throwable e) {
            this.f97121e.onError(e);
        }

        @Override // io.reactivex.rxjava3.core.SingleObserver
        public void onSubscribe(Disposable d) {
            this.f97121e.onSubscribe(d);
        }

        @Override // io.reactivex.rxjava3.core.SingleObserver
        public void onSuccess(T v) {
            try {
                SingleContains singleContains = SingleContains.this;
                this.f97121e.onSuccess(Boolean.valueOf(singleContains.f97120g.test(v, singleContains.f97119f)));
            } catch (Throwable th) {
                Exceptions.throwIfFatal(th);
                this.f97121e.onError(th);
            }
        }
    }

    public SingleContains(SingleSource<T> source, Object value, BiPredicate<Object, Object> comparer) {
        this.f97118e = source;
        this.f97119f = value;
        this.f97120g = comparer;
    }

    @Override // io.reactivex.rxjava3.core.Single
    public void subscribeActual(final SingleObserver<? super Boolean> observer) {
        this.f97118e.subscribe(new C17588a(observer));
    }
}
