package io.reactivex.rxjava3.internal.operators.maybe;

import com.sunia.HTREnginev2.AbstractC13470a4;
import io.reactivex.rxjava3.core.MaybeObserver;
import io.reactivex.rxjava3.core.MaybeSource;
import io.reactivex.rxjava3.disposables.Disposable;
import io.reactivex.rxjava3.exceptions.CompositeException;
import io.reactivex.rxjava3.exceptions.Exceptions;
import io.reactivex.rxjava3.functions.Action;
import io.reactivex.rxjava3.functions.Consumer;
import io.reactivex.rxjava3.internal.disposables.DisposableHelper;
import io.reactivex.rxjava3.internal.disposables.EmptyDisposable;
import io.reactivex.rxjava3.plugins.RxJavaPlugins;

/* loaded from: classes10.dex */
public final class MaybePeek<T> extends AbstractC13470a4<T, T> {

    /* renamed from: e */
    public final Consumer<? super Disposable> f96152e;

    /* renamed from: f */
    public final Consumer<? super T> f96153f;

    /* renamed from: g */
    public final Consumer<? super Throwable> f96154g;

    /* renamed from: h */
    public final Action f96155h;

    /* renamed from: i */
    public final Action f96156i;

    /* renamed from: j */
    public final Action f96157j;

    /* renamed from: io.reactivex.rxjava3.internal.operators.maybe.MaybePeek$a */
    /* loaded from: classes10.dex */
    public static final class C17449a<T> implements MaybeObserver<T>, Disposable {

        /* renamed from: e */
        public final MaybeObserver<? super T> f96158e;

        /* renamed from: f */
        public final MaybePeek<T> f96159f;

        /* renamed from: g */
        public Disposable f96160g;

        public C17449a(MaybeObserver<? super T> actual, MaybePeek<T> parent) {
            this.f96158e = actual;
            this.f96159f = parent;
        }

        /* renamed from: a */
        public void m61201a() {
            try {
                this.f96159f.f96156i.run();
            } catch (Throwable th) {
                Exceptions.throwIfFatal(th);
                RxJavaPlugins.onError(th);
            }
        }

        /* renamed from: b */
        public void m61202b(Throwable e) {
            try {
                this.f96159f.f96154g.accept(e);
            } catch (Throwable th) {
                Exceptions.throwIfFatal(th);
                e = new CompositeException(e, th);
            }
            this.f96160g = DisposableHelper.DISPOSED;
            this.f96158e.onError(e);
            m61201a();
        }

        @Override // io.reactivex.rxjava3.disposables.Disposable
        public void dispose() {
            try {
                this.f96159f.f96157j.run();
            } catch (Throwable th) {
                Exceptions.throwIfFatal(th);
                RxJavaPlugins.onError(th);
            }
            this.f96160g.dispose();
            this.f96160g = DisposableHelper.DISPOSED;
        }

        @Override // io.reactivex.rxjava3.disposables.Disposable
        public boolean isDisposed() {
            return this.f96160g.isDisposed();
        }

        @Override // io.reactivex.rxjava3.core.MaybeObserver, io.reactivex.rxjava3.core.CompletableObserver
        public void onComplete() {
            Disposable disposable = this.f96160g;
            DisposableHelper disposableHelper = DisposableHelper.DISPOSED;
            if (disposable == disposableHelper) {
                return;
            }
            try {
                this.f96159f.f96155h.run();
                this.f96160g = disposableHelper;
                this.f96158e.onComplete();
                m61201a();
            } catch (Throwable th) {
                Exceptions.throwIfFatal(th);
                m61202b(th);
            }
        }

        @Override // io.reactivex.rxjava3.core.MaybeObserver, io.reactivex.rxjava3.core.SingleObserver
        public void onError(Throwable e) {
            if (this.f96160g == DisposableHelper.DISPOSED) {
                RxJavaPlugins.onError(e);
            } else {
                m61202b(e);
            }
        }

        @Override // io.reactivex.rxjava3.core.MaybeObserver, io.reactivex.rxjava3.core.SingleObserver
        public void onSubscribe(Disposable d) {
            if (DisposableHelper.validate(this.f96160g, d)) {
                try {
                    this.f96159f.f96152e.accept(d);
                    this.f96160g = d;
                    this.f96158e.onSubscribe(this);
                } catch (Throwable th) {
                    Exceptions.throwIfFatal(th);
                    d.dispose();
                    this.f96160g = DisposableHelper.DISPOSED;
                    EmptyDisposable.error(th, this.f96158e);
                }
            }
        }

        @Override // io.reactivex.rxjava3.core.MaybeObserver, io.reactivex.rxjava3.core.SingleObserver
        public void onSuccess(T value) {
            Disposable disposable = this.f96160g;
            DisposableHelper disposableHelper = DisposableHelper.DISPOSED;
            if (disposable == disposableHelper) {
                return;
            }
            try {
                this.f96159f.f96153f.accept(value);
                this.f96160g = disposableHelper;
                this.f96158e.onSuccess(value);
                m61201a();
            } catch (Throwable th) {
                Exceptions.throwIfFatal(th);
                m61202b(th);
            }
        }
    }

    public MaybePeek(MaybeSource<T> source, Consumer<? super Disposable> onSubscribeCall, Consumer<? super T> onSuccessCall, Consumer<? super Throwable> onErrorCall, Action onCompleteCall, Action onAfterTerminate, Action onDispose) {
        super(source);
        this.f96152e = onSubscribeCall;
        this.f96153f = onSuccessCall;
        this.f96154g = onErrorCall;
        this.f96155h = onCompleteCall;
        this.f96156i = onAfterTerminate;
        this.f96157j = onDispose;
    }

    @Override // io.reactivex.rxjava3.core.Maybe
    public void subscribeActual(MaybeObserver<? super T> observer) {
        this.source.subscribe(new C17449a(observer, this));
    }
}
