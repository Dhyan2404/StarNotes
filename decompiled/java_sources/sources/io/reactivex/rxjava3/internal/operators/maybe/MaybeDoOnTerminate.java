package io.reactivex.rxjava3.internal.operators.maybe;

import io.reactivex.rxjava3.core.Maybe;
import io.reactivex.rxjava3.core.MaybeObserver;
import io.reactivex.rxjava3.core.MaybeSource;
import io.reactivex.rxjava3.disposables.Disposable;
import io.reactivex.rxjava3.exceptions.CompositeException;
import io.reactivex.rxjava3.exceptions.Exceptions;
import io.reactivex.rxjava3.functions.Action;

/* loaded from: classes10.dex */
public final class MaybeDoOnTerminate<T> extends Maybe<T> {

    /* renamed from: e */
    public final MaybeSource<T> f96062e;

    /* renamed from: f */
    public final Action f96063f;

    /* renamed from: io.reactivex.rxjava3.internal.operators.maybe.MaybeDoOnTerminate$a */
    /* loaded from: classes10.dex */
    public final class C17431a implements MaybeObserver<T> {

        /* renamed from: e */
        public final MaybeObserver<? super T> f96064e;

        public C17431a(MaybeObserver<? super T> observer) {
            this.f96064e = observer;
        }

        @Override // io.reactivex.rxjava3.core.MaybeObserver, io.reactivex.rxjava3.core.CompletableObserver
        public void onComplete() {
            try {
                MaybeDoOnTerminate.this.f96063f.run();
                this.f96064e.onComplete();
            } catch (Throwable th) {
                Exceptions.throwIfFatal(th);
                this.f96064e.onError(th);
            }
        }

        @Override // io.reactivex.rxjava3.core.MaybeObserver, io.reactivex.rxjava3.core.SingleObserver
        public void onError(Throwable e) {
            try {
                MaybeDoOnTerminate.this.f96063f.run();
            } catch (Throwable th) {
                Exceptions.throwIfFatal(th);
                e = new CompositeException(e, th);
            }
            this.f96064e.onError(e);
        }

        @Override // io.reactivex.rxjava3.core.MaybeObserver, io.reactivex.rxjava3.core.SingleObserver
        public void onSubscribe(Disposable d) {
            this.f96064e.onSubscribe(d);
        }

        @Override // io.reactivex.rxjava3.core.MaybeObserver, io.reactivex.rxjava3.core.SingleObserver
        public void onSuccess(T value) {
            try {
                MaybeDoOnTerminate.this.f96063f.run();
                this.f96064e.onSuccess(value);
            } catch (Throwable th) {
                Exceptions.throwIfFatal(th);
                this.f96064e.onError(th);
            }
        }
    }

    public MaybeDoOnTerminate(MaybeSource<T> source, Action onTerminate) {
        this.f96062e = source;
        this.f96063f = onTerminate;
    }

    @Override // io.reactivex.rxjava3.core.Maybe
    public void subscribeActual(MaybeObserver<? super T> observer) {
        this.f96062e.subscribe(new C17431a(observer));
    }
}
