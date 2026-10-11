package io.reactivex.rxjava3.internal.operators.maybe;

import io.reactivex.rxjava3.core.Maybe;
import io.reactivex.rxjava3.core.MaybeObserver;
import io.reactivex.rxjava3.disposables.Disposable;
import io.reactivex.rxjava3.exceptions.Exceptions;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.Future;
import java.util.concurrent.TimeUnit;

/* loaded from: classes10.dex */
public final class MaybeFromFuture<T> extends Maybe<T> {

    /* renamed from: e */
    public final Future<? extends T> f96112e;

    /* renamed from: f */
    public final long f96113f;

    /* renamed from: g */
    public final TimeUnit f96114g;

    public MaybeFromFuture(Future<? extends T> future, long timeout, TimeUnit unit) {
        this.f96112e = future;
        this.f96113f = timeout;
        this.f96114g = unit;
    }

    @Override // io.reactivex.rxjava3.core.Maybe
    public void subscribeActual(MaybeObserver<? super T> maybeObserver) {
        Disposable empty = Disposable.empty();
        maybeObserver.onSubscribe(empty);
        if (empty.isDisposed()) {
            return;
        }
        try {
            long j = this.f96113f;
            T t = j <= 0 ? this.f96112e.get() : this.f96112e.get(j, this.f96114g);
            if (empty.isDisposed()) {
                return;
            }
            if (t == null) {
                maybeObserver.onComplete();
            } else {
                maybeObserver.onSuccess(t);
            }
        } catch (Throwable th) {
            th = th;
            Exceptions.throwIfFatal(th);
            if (th instanceof ExecutionException) {
                th = th.getCause();
            }
            Exceptions.throwIfFatal(th);
            if (empty.isDisposed()) {
                return;
            }
            maybeObserver.onError(th);
        }
    }
}
