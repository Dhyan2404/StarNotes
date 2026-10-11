package io.reactivex.rxjava3.internal.operators.single;

import io.reactivex.rxjava3.core.Single;
import io.reactivex.rxjava3.core.SingleObserver;
import io.reactivex.rxjava3.core.SingleSource;
import io.reactivex.rxjava3.disposables.Disposable;
import io.reactivex.rxjava3.exceptions.Exceptions;
import io.reactivex.rxjava3.functions.Consumer;
import io.reactivex.rxjava3.internal.disposables.DisposableHelper;
import io.reactivex.rxjava3.plugins.RxJavaPlugins;

/* loaded from: classes10.dex */
public final class SingleDoAfterSuccess<T> extends Single<T> {

    /* renamed from: e */
    public final SingleSource<T> f97153e;

    /* renamed from: f */
    public final Consumer<? super T> f97154f;

    /* renamed from: io.reactivex.rxjava3.internal.operators.single.SingleDoAfterSuccess$a */
    /* loaded from: classes10.dex */
    public static final class C17592a<T> implements SingleObserver<T>, Disposable {

        /* renamed from: e */
        public final SingleObserver<? super T> f97155e;

        /* renamed from: f */
        public final Consumer<? super T> f97156f;

        /* renamed from: g */
        public Disposable f97157g;

        public C17592a(SingleObserver<? super T> actual, Consumer<? super T> onAfterSuccess) {
            this.f97155e = actual;
            this.f97156f = onAfterSuccess;
        }

        @Override // io.reactivex.rxjava3.disposables.Disposable
        public void dispose() {
            this.f97157g.dispose();
        }

        @Override // io.reactivex.rxjava3.disposables.Disposable
        public boolean isDisposed() {
            return this.f97157g.isDisposed();
        }

        @Override // io.reactivex.rxjava3.core.SingleObserver
        public void onError(Throwable e) {
            this.f97155e.onError(e);
        }

        @Override // io.reactivex.rxjava3.core.SingleObserver
        public void onSubscribe(Disposable d) {
            if (DisposableHelper.validate(this.f97157g, d)) {
                this.f97157g = d;
                this.f97155e.onSubscribe(this);
            }
        }

        @Override // io.reactivex.rxjava3.core.SingleObserver
        public void onSuccess(T t) {
            this.f97155e.onSuccess(t);
            try {
                this.f97156f.accept(t);
            } catch (Throwable th) {
                Exceptions.throwIfFatal(th);
                RxJavaPlugins.onError(th);
            }
        }
    }

    public SingleDoAfterSuccess(SingleSource<T> source, Consumer<? super T> onAfterSuccess) {
        this.f97153e = source;
        this.f97154f = onAfterSuccess;
    }

    @Override // io.reactivex.rxjava3.core.Single
    public void subscribeActual(SingleObserver<? super T> observer) {
        this.f97153e.subscribe(new C17592a(observer, this.f97154f));
    }
}
