package io.reactivex.rxjava3.internal.operators.observable;

import io.reactivex.rxjava3.core.ObservableSource;
import io.reactivex.rxjava3.core.Observer;
import io.reactivex.rxjava3.disposables.Disposable;
import io.reactivex.rxjava3.exceptions.Exceptions;
import io.reactivex.rxjava3.functions.BiFunction;
import io.reactivex.rxjava3.internal.disposables.DisposableHelper;
import io.reactivex.rxjava3.plugins.RxJavaPlugins;
import java.util.Objects;

/* loaded from: classes10.dex */
public final class ObservableScan<T> extends AbstractC17568a<T, T> {

    /* renamed from: e */
    public final BiFunction<T, T, T> f96791e;

    /* renamed from: io.reactivex.rxjava3.internal.operators.observable.ObservableScan$a */
    /* loaded from: classes10.dex */
    public static final class C17534a<T> implements Observer<T>, Disposable {

        /* renamed from: e */
        public final Observer<? super T> f96792e;

        /* renamed from: f */
        public final BiFunction<T, T, T> f96793f;

        /* renamed from: g */
        public Disposable f96794g;

        /* renamed from: h */
        public T f96795h;

        /* renamed from: i */
        public boolean f96796i;

        public C17534a(Observer<? super T> actual, BiFunction<T, T, T> accumulator) {
            this.f96792e = actual;
            this.f96793f = accumulator;
        }

        @Override // io.reactivex.rxjava3.disposables.Disposable
        public void dispose() {
            this.f96794g.dispose();
        }

        @Override // io.reactivex.rxjava3.disposables.Disposable
        public boolean isDisposed() {
            return this.f96794g.isDisposed();
        }

        @Override // io.reactivex.rxjava3.core.Observer
        public void onComplete() {
            if (this.f96796i) {
                return;
            }
            this.f96796i = true;
            this.f96792e.onComplete();
        }

        @Override // io.reactivex.rxjava3.core.Observer
        public void onError(Throwable t) {
            if (this.f96796i) {
                RxJavaPlugins.onError(t);
            } else {
                this.f96796i = true;
                this.f96792e.onError(t);
            }
        }

        /* JADX WARN: Type inference failed for: r4v2, types: [T, java.lang.Object] */
        @Override // io.reactivex.rxjava3.core.Observer
        public void onNext(T t) {
            if (this.f96796i) {
                return;
            }
            Observer<? super T> observer = this.f96792e;
            T t2 = this.f96795h;
            if (t2 == null) {
                this.f96795h = t;
                observer.onNext(t);
                return;
            }
            try {
                T apply = this.f96793f.apply(t2, t);
                Objects.requireNonNull(apply, "The value returned by the accumulator is null");
                this.f96795h = apply;
                observer.onNext(apply);
            } catch (Throwable th) {
                Exceptions.throwIfFatal(th);
                this.f96794g.dispose();
                onError(th);
            }
        }

        @Override // io.reactivex.rxjava3.core.Observer
        public void onSubscribe(Disposable d) {
            if (DisposableHelper.validate(this.f96794g, d)) {
                this.f96794g = d;
                this.f96792e.onSubscribe(this);
            }
        }
    }

    public ObservableScan(ObservableSource<T> source, BiFunction<T, T, T> accumulator) {
        super(source);
        this.f96791e = accumulator;
    }

    @Override // io.reactivex.rxjava3.core.Observable
    public void subscribeActual(Observer<? super T> t) {
        this.source.subscribe(new C17534a(t, this.f96791e));
    }
}
