package io.reactivex.rxjava3.internal.operators.observable;

import io.reactivex.rxjava3.core.ObservableSource;
import io.reactivex.rxjava3.core.Observer;
import io.reactivex.rxjava3.disposables.Disposable;
import io.reactivex.rxjava3.internal.disposables.DisposableHelper;
import io.reactivex.rxjava3.internal.disposables.EmptyDisposable;
import io.reactivex.rxjava3.plugins.RxJavaPlugins;

/* loaded from: classes10.dex */
public final class ObservableTake<T> extends AbstractC17568a<T, T> {

    /* renamed from: e */
    public final long f96875e;

    /* renamed from: io.reactivex.rxjava3.internal.operators.observable.ObservableTake$a */
    /* loaded from: classes10.dex */
    public static final class C17546a<T> implements Observer<T>, Disposable {

        /* renamed from: e */
        public final Observer<? super T> f96876e;

        /* renamed from: f */
        public boolean f96877f;

        /* renamed from: g */
        public Disposable f96878g;

        /* renamed from: h */
        public long f96879h;

        public C17546a(Observer<? super T> actual, long limit) {
            this.f96876e = actual;
            this.f96879h = limit;
        }

        @Override // io.reactivex.rxjava3.disposables.Disposable
        public void dispose() {
            this.f96878g.dispose();
        }

        @Override // io.reactivex.rxjava3.disposables.Disposable
        public boolean isDisposed() {
            return this.f96878g.isDisposed();
        }

        @Override // io.reactivex.rxjava3.core.Observer
        public void onComplete() {
            if (this.f96877f) {
                return;
            }
            this.f96877f = true;
            this.f96878g.dispose();
            this.f96876e.onComplete();
        }

        @Override // io.reactivex.rxjava3.core.Observer
        public void onError(Throwable t) {
            if (this.f96877f) {
                RxJavaPlugins.onError(t);
                return;
            }
            this.f96877f = true;
            this.f96878g.dispose();
            this.f96876e.onError(t);
        }

        @Override // io.reactivex.rxjava3.core.Observer
        public void onNext(T t) {
            if (this.f96877f) {
                return;
            }
            long j = this.f96879h;
            long j2 = j - 1;
            this.f96879h = j2;
            if (j > 0) {
                boolean z = j2 == 0;
                this.f96876e.onNext(t);
                if (z) {
                    onComplete();
                }
            }
        }

        @Override // io.reactivex.rxjava3.core.Observer
        public void onSubscribe(Disposable d) {
            if (DisposableHelper.validate(this.f96878g, d)) {
                this.f96878g = d;
                if (this.f96879h != 0) {
                    this.f96876e.onSubscribe(this);
                    return;
                }
                this.f96877f = true;
                d.dispose();
                EmptyDisposable.complete(this.f96876e);
            }
        }
    }

    public ObservableTake(ObservableSource<T> source, long limit) {
        super(source);
        this.f96875e = limit;
    }

    @Override // io.reactivex.rxjava3.core.Observable
    public void subscribeActual(Observer<? super T> observer) {
        this.source.subscribe(new C17546a(observer, this.f96875e));
    }
}
