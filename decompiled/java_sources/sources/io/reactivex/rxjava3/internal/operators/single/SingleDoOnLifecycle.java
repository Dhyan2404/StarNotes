package io.reactivex.rxjava3.internal.operators.single;

import io.reactivex.rxjava3.annotations.NonNull;
import io.reactivex.rxjava3.core.Single;
import io.reactivex.rxjava3.core.SingleObserver;
import io.reactivex.rxjava3.disposables.Disposable;
import io.reactivex.rxjava3.exceptions.Exceptions;
import io.reactivex.rxjava3.functions.Action;
import io.reactivex.rxjava3.functions.Consumer;
import io.reactivex.rxjava3.internal.disposables.DisposableHelper;
import io.reactivex.rxjava3.internal.disposables.EmptyDisposable;
import io.reactivex.rxjava3.plugins.RxJavaPlugins;

/* loaded from: classes10.dex */
public final class SingleDoOnLifecycle<T> extends Single<T> {

    /* renamed from: e */
    public final Single<T> f97175e;

    /* renamed from: f */
    public final Consumer<? super Disposable> f97176f;

    /* renamed from: g */
    public final Action f97177g;

    /* renamed from: io.reactivex.rxjava3.internal.operators.single.SingleDoOnLifecycle$a */
    /* loaded from: classes10.dex */
    public static final class C17596a<T> implements SingleObserver<T>, Disposable {

        /* renamed from: e */
        public final SingleObserver<? super T> f97178e;

        /* renamed from: f */
        public final Consumer<? super Disposable> f97179f;

        /* renamed from: g */
        public final Action f97180g;

        /* renamed from: h */
        public Disposable f97181h;

        public C17596a(SingleObserver<? super T> downstream, Consumer<? super Disposable> onSubscribe, Action onDispose) {
            this.f97178e = downstream;
            this.f97179f = onSubscribe;
            this.f97180g = onDispose;
        }

        @Override // io.reactivex.rxjava3.disposables.Disposable
        public void dispose() {
            try {
                this.f97180g.run();
            } catch (Throwable th) {
                Exceptions.throwIfFatal(th);
                RxJavaPlugins.onError(th);
            }
            this.f97181h.dispose();
            this.f97181h = DisposableHelper.DISPOSED;
        }

        @Override // io.reactivex.rxjava3.disposables.Disposable
        public boolean isDisposed() {
            return this.f97181h.isDisposed();
        }

        @Override // io.reactivex.rxjava3.core.SingleObserver
        public void onError(@NonNull Throwable e) {
            Disposable disposable = this.f97181h;
            DisposableHelper disposableHelper = DisposableHelper.DISPOSED;
            if (disposable == disposableHelper) {
                RxJavaPlugins.onError(e);
            } else {
                this.f97181h = disposableHelper;
                this.f97178e.onError(e);
            }
        }

        @Override // io.reactivex.rxjava3.core.SingleObserver
        public void onSubscribe(@NonNull Disposable d) {
            try {
                this.f97179f.accept(d);
                if (DisposableHelper.validate(this.f97181h, d)) {
                    this.f97181h = d;
                    this.f97178e.onSubscribe(this);
                }
            } catch (Throwable th) {
                Exceptions.throwIfFatal(th);
                d.dispose();
                this.f97181h = DisposableHelper.DISPOSED;
                EmptyDisposable.error(th, this.f97178e);
            }
        }

        @Override // io.reactivex.rxjava3.core.SingleObserver
        public void onSuccess(@NonNull T t) {
            Disposable disposable = this.f97181h;
            DisposableHelper disposableHelper = DisposableHelper.DISPOSED;
            if (disposable != disposableHelper) {
                this.f97181h = disposableHelper;
                this.f97178e.onSuccess(t);
            }
        }
    }

    public SingleDoOnLifecycle(Single<T> upstream, Consumer<? super Disposable> onSubscribe, Action onDispose) {
        this.f97175e = upstream;
        this.f97176f = onSubscribe;
        this.f97177g = onDispose;
    }

    @Override // io.reactivex.rxjava3.core.Single
    public void subscribeActual(SingleObserver<? super T> observer) {
        this.f97175e.subscribe(new C17596a(observer, this.f97176f, this.f97177g));
    }
}
