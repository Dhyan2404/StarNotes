package io.reactivex.rxjava3.internal.operators.observable;

import io.reactivex.rxjava3.core.ObservableSource;
import io.reactivex.rxjava3.core.Observer;
import io.reactivex.rxjava3.disposables.Disposable;
import io.reactivex.rxjava3.internal.disposables.SequentialDisposable;

/* loaded from: classes10.dex */
public final class ObservableSwitchIfEmpty<T> extends AbstractC17568a<T, T> {

    /* renamed from: e */
    public final ObservableSource<? extends T> f96867e;

    /* renamed from: io.reactivex.rxjava3.internal.operators.observable.ObservableSwitchIfEmpty$a */
    /* loaded from: classes10.dex */
    public static final class C17545a<T> implements Observer<T> {

        /* renamed from: e */
        public final Observer<? super T> f96868e;

        /* renamed from: f */
        public final ObservableSource<? extends T> f96869f;

        /* renamed from: h */
        public boolean f96871h = true;

        /* renamed from: g */
        public final SequentialDisposable f96870g = new SequentialDisposable();

        public C17545a(Observer<? super T> actual, ObservableSource<? extends T> other) {
            this.f96868e = actual;
            this.f96869f = other;
        }

        @Override // io.reactivex.rxjava3.core.Observer
        public void onComplete() {
            if (!this.f96871h) {
                this.f96868e.onComplete();
            } else {
                this.f96871h = false;
                this.f96869f.subscribe(this);
            }
        }

        @Override // io.reactivex.rxjava3.core.Observer
        public void onError(Throwable t) {
            this.f96868e.onError(t);
        }

        @Override // io.reactivex.rxjava3.core.Observer
        public void onNext(T t) {
            if (this.f96871h) {
                this.f96871h = false;
            }
            this.f96868e.onNext(t);
        }

        @Override // io.reactivex.rxjava3.core.Observer
        public void onSubscribe(Disposable d) {
            this.f96870g.update(d);
        }
    }

    public ObservableSwitchIfEmpty(ObservableSource<T> source, ObservableSource<? extends T> other) {
        super(source);
        this.f96867e = other;
    }

    @Override // io.reactivex.rxjava3.core.Observable
    public void subscribeActual(Observer<? super T> t) {
        C17545a c17545a = new C17545a(t, this.f96867e);
        t.onSubscribe(c17545a.f96870g);
        this.source.subscribe(c17545a);
    }
}
