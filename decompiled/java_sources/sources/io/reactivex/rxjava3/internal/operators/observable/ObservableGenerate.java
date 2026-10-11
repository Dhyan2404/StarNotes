package io.reactivex.rxjava3.internal.operators.observable;

import io.reactivex.rxjava3.core.Emitter;
import io.reactivex.rxjava3.core.Observable;
import io.reactivex.rxjava3.core.Observer;
import io.reactivex.rxjava3.disposables.Disposable;
import io.reactivex.rxjava3.exceptions.Exceptions;
import io.reactivex.rxjava3.functions.BiFunction;
import io.reactivex.rxjava3.functions.Consumer;
import io.reactivex.rxjava3.functions.Supplier;
import io.reactivex.rxjava3.internal.disposables.EmptyDisposable;
import io.reactivex.rxjava3.internal.util.ExceptionHelper;
import io.reactivex.rxjava3.plugins.RxJavaPlugins;

/* loaded from: classes10.dex */
public final class ObservableGenerate<T, S> extends Observable<T> {

    /* renamed from: e */
    public final Supplier<S> f96614e;

    /* renamed from: f */
    public final BiFunction<S, Emitter<T>, S> f96615f;

    /* renamed from: g */
    public final Consumer<? super S> f96616g;

    /* renamed from: io.reactivex.rxjava3.internal.operators.observable.ObservableGenerate$a */
    /* loaded from: classes10.dex */
    public static final class C17495a<T, S> implements Emitter<T>, Disposable {

        /* renamed from: e */
        public final Observer<? super T> f96617e;

        /* renamed from: f */
        public final BiFunction<S, ? super Emitter<T>, S> f96618f;

        /* renamed from: g */
        public final Consumer<? super S> f96619g;

        /* renamed from: h */
        public S f96620h;

        /* renamed from: i */
        public volatile boolean f96621i;

        /* renamed from: j */
        public boolean f96622j;

        /* renamed from: k */
        public boolean f96623k;

        public C17495a(Observer<? super T> actual, BiFunction<S, ? super Emitter<T>, S> generator, Consumer<? super S> disposeState, S initialState) {
            this.f96617e = actual;
            this.f96618f = generator;
            this.f96619g = disposeState;
            this.f96620h = initialState;
        }

        /* renamed from: a */
        public final void m61236a(S s) {
            try {
                this.f96619g.accept(s);
            } catch (Throwable th) {
                Exceptions.throwIfFatal(th);
                RxJavaPlugins.onError(th);
            }
        }

        /* renamed from: b */
        public void m61237b() {
            S s = this.f96620h;
            if (this.f96621i) {
                this.f96620h = null;
                m61236a(s);
                return;
            }
            BiFunction<S, ? super Emitter<T>, S> biFunction = this.f96618f;
            while (!this.f96621i) {
                this.f96623k = false;
                try {
                    s = biFunction.apply(s, this);
                    if (this.f96622j) {
                        this.f96621i = true;
                        this.f96620h = null;
                        m61236a(s);
                        return;
                    }
                } catch (Throwable th) {
                    Exceptions.throwIfFatal(th);
                    this.f96620h = null;
                    this.f96621i = true;
                    onError(th);
                    m61236a(s);
                    return;
                }
            }
            this.f96620h = null;
            m61236a(s);
        }

        @Override // io.reactivex.rxjava3.disposables.Disposable
        public void dispose() {
            this.f96621i = true;
        }

        @Override // io.reactivex.rxjava3.disposables.Disposable
        public boolean isDisposed() {
            return this.f96621i;
        }

        @Override // io.reactivex.rxjava3.core.Emitter
        public void onComplete() {
            if (this.f96622j) {
                return;
            }
            this.f96622j = true;
            this.f96617e.onComplete();
        }

        @Override // io.reactivex.rxjava3.core.Emitter
        public void onError(Throwable t) {
            if (this.f96622j) {
                RxJavaPlugins.onError(t);
                return;
            }
            if (t == null) {
                t = ExceptionHelper.createNullPointerException("onError called with a null Throwable.");
            }
            this.f96622j = true;
            this.f96617e.onError(t);
        }

        @Override // io.reactivex.rxjava3.core.Emitter
        public void onNext(T t) {
            if (this.f96622j) {
                return;
            }
            if (this.f96623k) {
                onError(new IllegalStateException("onNext already called in this generate turn"));
            } else if (t == null) {
                onError(ExceptionHelper.createNullPointerException("onNext called with a null value."));
            } else {
                this.f96623k = true;
                this.f96617e.onNext(t);
            }
        }
    }

    public ObservableGenerate(Supplier<S> stateSupplier, BiFunction<S, Emitter<T>, S> generator, Consumer<? super S> disposeState) {
        this.f96614e = stateSupplier;
        this.f96615f = generator;
        this.f96616g = disposeState;
    }

    @Override // io.reactivex.rxjava3.core.Observable
    public void subscribeActual(Observer<? super T> observer) {
        try {
            C17495a c17495a = new C17495a(observer, this.f96615f, this.f96616g, this.f96614e.get());
            observer.onSubscribe(c17495a);
            c17495a.m61237b();
        } catch (Throwable th) {
            Exceptions.throwIfFatal(th);
            EmptyDisposable.error(th, observer);
        }
    }
}
