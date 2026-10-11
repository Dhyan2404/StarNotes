package io.reactivex.rxjava3.internal.operators.single;

import io.reactivex.rxjava3.core.Single;
import io.reactivex.rxjava3.core.SingleObserver;
import io.reactivex.rxjava3.core.SingleSource;
import io.reactivex.rxjava3.disposables.Disposable;
import io.reactivex.rxjava3.exceptions.Exceptions;
import io.reactivex.rxjava3.functions.Function;
import java.util.Objects;

/* loaded from: classes10.dex */
public final class SingleMap<T, R> extends Single<R> {

    /* renamed from: e */
    public final SingleSource<? extends T> f97247e;

    /* renamed from: f */
    public final Function<? super T, ? extends R> f97248f;

    /* renamed from: io.reactivex.rxjava3.internal.operators.single.SingleMap$a */
    /* loaded from: classes10.dex */
    public static final class C17608a<T, R> implements SingleObserver<T> {

        /* renamed from: e */
        public final SingleObserver<? super R> f97249e;

        /* renamed from: f */
        public final Function<? super T, ? extends R> f97250f;

        public C17608a(SingleObserver<? super R> t, Function<? super T, ? extends R> mapper) {
            this.f97249e = t;
            this.f97250f = mapper;
        }

        @Override // io.reactivex.rxjava3.core.SingleObserver
        public void onError(Throwable e) {
            this.f97249e.onError(e);
        }

        @Override // io.reactivex.rxjava3.core.SingleObserver
        public void onSubscribe(Disposable d) {
            this.f97249e.onSubscribe(d);
        }

        @Override // io.reactivex.rxjava3.core.SingleObserver
        public void onSuccess(T value) {
            try {
                R apply = this.f97250f.apply(value);
                Objects.requireNonNull(apply, "The mapper function returned a null value.");
                this.f97249e.onSuccess(apply);
            } catch (Throwable th) {
                Exceptions.throwIfFatal(th);
                onError(th);
            }
        }
    }

    public SingleMap(SingleSource<? extends T> source, Function<? super T, ? extends R> mapper) {
        this.f97247e = source;
        this.f97248f = mapper;
    }

    @Override // io.reactivex.rxjava3.core.Single
    public void subscribeActual(final SingleObserver<? super R> t) {
        this.f97247e.subscribe(new C17608a(t, this.f97248f));
    }
}
