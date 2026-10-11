package io.reactivex.rxjava3.internal.operators.maybe;

import com.sunia.HTREnginev2.AbstractC13470a4;
import io.reactivex.rxjava3.annotations.NonNull;
import io.reactivex.rxjava3.core.Maybe;
import io.reactivex.rxjava3.core.MaybeObserver;
import io.reactivex.rxjava3.disposables.Disposable;
import io.reactivex.rxjava3.exceptions.Exceptions;
import io.reactivex.rxjava3.functions.Action;
import io.reactivex.rxjava3.functions.Consumer;
import io.reactivex.rxjava3.internal.disposables.DisposableHelper;
import io.reactivex.rxjava3.internal.disposables.EmptyDisposable;
import io.reactivex.rxjava3.plugins.RxJavaPlugins;

/* loaded from: classes10.dex */
public final class MaybeDoOnLifecycle<T> extends AbstractC13470a4<T, T> {

    /* renamed from: e */
    public final Consumer<? super Disposable> f96056e;

    /* renamed from: f */
    public final Action f96057f;

    /* renamed from: io.reactivex.rxjava3.internal.operators.maybe.MaybeDoOnLifecycle$a */
    /* loaded from: classes10.dex */
    public static final class C17430a<T> implements MaybeObserver<T>, Disposable {

        /* renamed from: e */
        public final MaybeObserver<? super T> f96058e;

        /* renamed from: f */
        public final Consumer<? super Disposable> f96059f;

        /* renamed from: g */
        public final Action f96060g;

        /* renamed from: h */
        public Disposable f96061h;

        public C17430a(MaybeObserver<? super T> downstream, Consumer<? super Disposable> onSubscribe, Action onDispose) {
            this.f96058e = downstream;
            this.f96059f = onSubscribe;
            this.f96060g = onDispose;
        }

        @Override // io.reactivex.rxjava3.disposables.Disposable
        public void dispose() {
            try {
                this.f96060g.run();
            } catch (Throwable th) {
                Exceptions.throwIfFatal(th);
                RxJavaPlugins.onError(th);
            }
            this.f96061h.dispose();
            this.f96061h = DisposableHelper.DISPOSED;
        }

        @Override // io.reactivex.rxjava3.disposables.Disposable
        public boolean isDisposed() {
            return this.f96061h.isDisposed();
        }

        @Override // io.reactivex.rxjava3.core.MaybeObserver, io.reactivex.rxjava3.core.CompletableObserver
        public void onComplete() {
            Disposable disposable = this.f96061h;
            DisposableHelper disposableHelper = DisposableHelper.DISPOSED;
            if (disposable != disposableHelper) {
                this.f96061h = disposableHelper;
                this.f96058e.onComplete();
            }
        }

        @Override // io.reactivex.rxjava3.core.MaybeObserver, io.reactivex.rxjava3.core.SingleObserver
        public void onError(@NonNull Throwable e) {
            Disposable disposable = this.f96061h;
            DisposableHelper disposableHelper = DisposableHelper.DISPOSED;
            if (disposable == disposableHelper) {
                RxJavaPlugins.onError(e);
            } else {
                this.f96061h = disposableHelper;
                this.f96058e.onError(e);
            }
        }

        @Override // io.reactivex.rxjava3.core.MaybeObserver, io.reactivex.rxjava3.core.SingleObserver
        public void onSubscribe(@NonNull Disposable d) {
            try {
                this.f96059f.accept(d);
                if (DisposableHelper.validate(this.f96061h, d)) {
                    this.f96061h = d;
                    this.f96058e.onSubscribe(this);
                }
            } catch (Throwable th) {
                Exceptions.throwIfFatal(th);
                d.dispose();
                this.f96061h = DisposableHelper.DISPOSED;
                EmptyDisposable.error(th, this.f96058e);
            }
        }

        @Override // io.reactivex.rxjava3.core.MaybeObserver, io.reactivex.rxjava3.core.SingleObserver
        public void onSuccess(@NonNull T t) {
            Disposable disposable = this.f96061h;
            DisposableHelper disposableHelper = DisposableHelper.DISPOSED;
            if (disposable != disposableHelper) {
                this.f96061h = disposableHelper;
                this.f96058e.onSuccess(t);
            }
        }
    }

    public MaybeDoOnLifecycle(Maybe<T> upstream, Consumer<? super Disposable> onSubscribe, Action onDispose) {
        super(upstream);
        this.f96056e = onSubscribe;
        this.f96057f = onDispose;
    }

    @Override // io.reactivex.rxjava3.core.Maybe
    public void subscribeActual(MaybeObserver<? super T> observer) {
        this.source.subscribe(new C17430a(observer, this.f96056e, this.f96057f));
    }
}
