package io.reactivex.rxjava3.internal.operators.single;

import io.reactivex.rxjava3.core.Single;
import io.reactivex.rxjava3.core.SingleObserver;
import io.reactivex.rxjava3.core.SingleSource;
import io.reactivex.rxjava3.disposables.Disposable;
import io.reactivex.rxjava3.exceptions.Exceptions;
import io.reactivex.rxjava3.functions.Action;
import io.reactivex.rxjava3.internal.disposables.DisposableHelper;
import io.reactivex.rxjava3.plugins.RxJavaPlugins;

/* loaded from: classes10.dex */
public final class SingleDoAfterTerminate<T> extends Single<T> {

    /* renamed from: e */
    public final SingleSource<T> f97158e;

    /* renamed from: f */
    public final Action f97159f;

    /* renamed from: io.reactivex.rxjava3.internal.operators.single.SingleDoAfterTerminate$a */
    /* loaded from: classes10.dex */
    public static final class C17593a<T> implements SingleObserver<T>, Disposable {

        /* renamed from: e */
        public final SingleObserver<? super T> f97160e;

        /* renamed from: f */
        public final Action f97161f;

        /* renamed from: g */
        public Disposable f97162g;

        public C17593a(SingleObserver<? super T> actual, Action onAfterTerminate) {
            this.f97160e = actual;
            this.f97161f = onAfterTerminate;
        }

        /* renamed from: a */
        public final void m61263a() {
            try {
                this.f97161f.run();
            } catch (Throwable th) {
                Exceptions.throwIfFatal(th);
                RxJavaPlugins.onError(th);
            }
        }

        @Override // io.reactivex.rxjava3.disposables.Disposable
        public void dispose() {
            this.f97162g.dispose();
        }

        @Override // io.reactivex.rxjava3.disposables.Disposable
        public boolean isDisposed() {
            return this.f97162g.isDisposed();
        }

        @Override // io.reactivex.rxjava3.core.SingleObserver
        public void onError(Throwable e) {
            this.f97160e.onError(e);
            m61263a();
        }

        @Override // io.reactivex.rxjava3.core.SingleObserver
        public void onSubscribe(Disposable d) {
            if (DisposableHelper.validate(this.f97162g, d)) {
                this.f97162g = d;
                this.f97160e.onSubscribe(this);
            }
        }

        @Override // io.reactivex.rxjava3.core.SingleObserver
        public void onSuccess(T t) {
            this.f97160e.onSuccess(t);
            m61263a();
        }
    }

    public SingleDoAfterTerminate(SingleSource<T> source, Action onAfterTerminate) {
        this.f97158e = source;
        this.f97159f = onAfterTerminate;
    }

    @Override // io.reactivex.rxjava3.core.Single
    public void subscribeActual(SingleObserver<? super T> observer) {
        this.f97158e.subscribe(new C17593a(observer, this.f97159f));
    }
}
