package io.reactivex.rxjava3.internal.jdk8;

import io.reactivex.rxjava3.annotations.NonNull;
import io.reactivex.rxjava3.core.Observable;
import io.reactivex.rxjava3.core.Observer;
import io.reactivex.rxjava3.core.Single;
import io.reactivex.rxjava3.core.SingleObserver;
import io.reactivex.rxjava3.disposables.Disposable;
import io.reactivex.rxjava3.exceptions.Exceptions;
import io.reactivex.rxjava3.internal.disposables.DisposableHelper;
import io.reactivex.rxjava3.internal.disposables.EmptyDisposable;
import io.reactivex.rxjava3.internal.fuseable.FuseToObservable;
import io.reactivex.rxjava3.plugins.RxJavaPlugins;
import java.util.Objects;
import java.util.function.BiConsumer;
import java.util.function.Function;
import java.util.stream.Collector;

/* loaded from: classes10.dex */
public final class ObservableCollectWithCollectorSingle<T, A, R> extends Single<R> implements FuseToObservable<R> {

    /* renamed from: e */
    public final Observable<T> f95099e;

    /* renamed from: f */
    public final Collector<? super T, A, R> f95100f;

    /* renamed from: io.reactivex.rxjava3.internal.jdk8.ObservableCollectWithCollectorSingle$a */
    /* loaded from: classes10.dex */
    public static final class C17293a<T, A, R> implements Observer<T>, Disposable {

        /* renamed from: e */
        public final SingleObserver<? super R> f95101e;

        /* renamed from: f */
        public final BiConsumer<A, T> f95102f;

        /* renamed from: g */
        public final Function<A, R> f95103g;

        /* renamed from: h */
        public Disposable f95104h;

        /* renamed from: i */
        public boolean f95105i;

        /* renamed from: j */
        public A f95106j;

        public C17293a(SingleObserver<? super R> downstream, A container, BiConsumer<A, T> accumulator, Function<A, R> finisher) {
            this.f95101e = downstream;
            this.f95106j = container;
            this.f95102f = accumulator;
            this.f95103g = finisher;
        }

        @Override // io.reactivex.rxjava3.disposables.Disposable
        public void dispose() {
            this.f95104h.dispose();
            this.f95104h = DisposableHelper.DISPOSED;
        }

        @Override // io.reactivex.rxjava3.disposables.Disposable
        public boolean isDisposed() {
            return this.f95104h == DisposableHelper.DISPOSED;
        }

        @Override // io.reactivex.rxjava3.core.Observer
        public void onComplete() {
            if (this.f95105i) {
                return;
            }
            this.f95105i = true;
            this.f95104h = DisposableHelper.DISPOSED;
            A a = this.f95106j;
            this.f95106j = null;
            try {
                R apply = this.f95103g.apply(a);
                Objects.requireNonNull(apply, "The finisher returned a null value");
                this.f95101e.onSuccess(apply);
            } catch (Throwable th) {
                Exceptions.throwIfFatal(th);
                this.f95101e.onError(th);
            }
        }

        @Override // io.reactivex.rxjava3.core.Observer
        public void onError(Throwable t) {
            if (this.f95105i) {
                RxJavaPlugins.onError(t);
                return;
            }
            this.f95105i = true;
            this.f95104h = DisposableHelper.DISPOSED;
            this.f95106j = null;
            this.f95101e.onError(t);
        }

        @Override // io.reactivex.rxjava3.core.Observer
        public void onNext(T t) {
            if (this.f95105i) {
                return;
            }
            try {
                this.f95102f.accept(this.f95106j, t);
            } catch (Throwable th) {
                Exceptions.throwIfFatal(th);
                this.f95104h.dispose();
                onError(th);
            }
        }

        @Override // io.reactivex.rxjava3.core.Observer
        public void onSubscribe(@NonNull Disposable d) {
            if (DisposableHelper.validate(this.f95104h, d)) {
                this.f95104h = d;
                this.f95101e.onSubscribe(this);
            }
        }
    }

    public ObservableCollectWithCollectorSingle(Observable<T> source, Collector<? super T, A, R> collector) {
        this.f95099e = source;
        this.f95100f = collector;
    }

    @Override // io.reactivex.rxjava3.internal.fuseable.FuseToObservable
    public Observable<R> fuseToObservable() {
        return new ObservableCollectWithCollector(this.f95099e, this.f95100f);
    }

    @Override // io.reactivex.rxjava3.core.Single
    public void subscribeActual(@NonNull SingleObserver<? super R> observer) {
        try {
            this.f95099e.subscribe(new C17293a(observer, this.f95100f.supplier().get(), this.f95100f.accumulator(), this.f95100f.finisher()));
        } catch (Throwable th) {
            Exceptions.throwIfFatal(th);
            EmptyDisposable.error(th, observer);
        }
    }
}
