package io.reactivex.rxjava3.internal.operators.observable;

import io.reactivex.rxjava3.core.ObservableSource;
import io.reactivex.rxjava3.core.Observer;
import io.reactivex.rxjava3.disposables.Disposable;
import io.reactivex.rxjava3.internal.disposables.ArrayCompositeDisposable;
import io.reactivex.rxjava3.internal.disposables.DisposableHelper;
import io.reactivex.rxjava3.observers.SerializedObserver;

/* loaded from: classes10.dex */
public final class ObservableSkipUntil<T, U> extends AbstractC17568a<T, T> {

    /* renamed from: e */
    public final ObservableSource<U> f96848e;

    /* renamed from: io.reactivex.rxjava3.internal.operators.observable.ObservableSkipUntil$a */
    /* loaded from: classes10.dex */
    public final class C17541a implements Observer<U> {

        /* renamed from: e */
        public final ArrayCompositeDisposable f96849e;

        /* renamed from: f */
        public final C17542b<T> f96850f;

        /* renamed from: g */
        public final SerializedObserver<T> f96851g;

        /* renamed from: h */
        public Disposable f96852h;

        public C17541a(ArrayCompositeDisposable frc, C17542b<T> sus, SerializedObserver<T> serial) {
            this.f96849e = frc;
            this.f96850f = sus;
            this.f96851g = serial;
        }

        @Override // io.reactivex.rxjava3.core.Observer
        public void onComplete() {
            this.f96850f.f96857h = true;
        }

        @Override // io.reactivex.rxjava3.core.Observer
        public void onError(Throwable t) {
            this.f96849e.dispose();
            this.f96851g.onError(t);
        }

        @Override // io.reactivex.rxjava3.core.Observer
        public void onNext(U t) {
            this.f96852h.dispose();
            this.f96850f.f96857h = true;
        }

        @Override // io.reactivex.rxjava3.core.Observer
        public void onSubscribe(Disposable d) {
            if (DisposableHelper.validate(this.f96852h, d)) {
                this.f96852h = d;
                this.f96849e.setResource(1, d);
            }
        }
    }

    /* renamed from: io.reactivex.rxjava3.internal.operators.observable.ObservableSkipUntil$b */
    /* loaded from: classes10.dex */
    public static final class C17542b<T> implements Observer<T> {

        /* renamed from: e */
        public final Observer<? super T> f96854e;

        /* renamed from: f */
        public final ArrayCompositeDisposable f96855f;

        /* renamed from: g */
        public Disposable f96856g;

        /* renamed from: h */
        public volatile boolean f96857h;

        /* renamed from: i */
        public boolean f96858i;

        public C17542b(Observer<? super T> actual, ArrayCompositeDisposable frc) {
            this.f96854e = actual;
            this.f96855f = frc;
        }

        @Override // io.reactivex.rxjava3.core.Observer
        public void onComplete() {
            this.f96855f.dispose();
            this.f96854e.onComplete();
        }

        @Override // io.reactivex.rxjava3.core.Observer
        public void onError(Throwable t) {
            this.f96855f.dispose();
            this.f96854e.onError(t);
        }

        @Override // io.reactivex.rxjava3.core.Observer
        public void onNext(T t) {
            if (this.f96858i) {
                this.f96854e.onNext(t);
            } else if (this.f96857h) {
                this.f96858i = true;
                this.f96854e.onNext(t);
            }
        }

        @Override // io.reactivex.rxjava3.core.Observer
        public void onSubscribe(Disposable d) {
            if (DisposableHelper.validate(this.f96856g, d)) {
                this.f96856g = d;
                this.f96855f.setResource(0, d);
            }
        }
    }

    public ObservableSkipUntil(ObservableSource<T> source, ObservableSource<U> other) {
        super(source);
        this.f96848e = other;
    }

    @Override // io.reactivex.rxjava3.core.Observable
    public void subscribeActual(Observer<? super T> child) {
        SerializedObserver serializedObserver = new SerializedObserver(child);
        ArrayCompositeDisposable arrayCompositeDisposable = new ArrayCompositeDisposable(2);
        serializedObserver.onSubscribe(arrayCompositeDisposable);
        C17542b c17542b = new C17542b(serializedObserver, arrayCompositeDisposable);
        this.f96848e.subscribe(new C17541a(arrayCompositeDisposable, c17542b, serializedObserver));
        this.source.subscribe(c17542b);
    }
}
