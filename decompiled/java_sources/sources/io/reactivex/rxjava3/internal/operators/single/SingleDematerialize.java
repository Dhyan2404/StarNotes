package io.reactivex.rxjava3.internal.operators.single;

import io.reactivex.rxjava3.core.Maybe;
import io.reactivex.rxjava3.core.MaybeObserver;
import io.reactivex.rxjava3.core.Notification;
import io.reactivex.rxjava3.core.Single;
import io.reactivex.rxjava3.core.SingleObserver;
import io.reactivex.rxjava3.disposables.Disposable;
import io.reactivex.rxjava3.exceptions.Exceptions;
import io.reactivex.rxjava3.functions.Function;
import io.reactivex.rxjava3.internal.disposables.DisposableHelper;
import java.util.Objects;

/* loaded from: classes10.dex */
public final class SingleDematerialize<T, R> extends Maybe<R> {

    /* renamed from: e */
    public final Single<T> f97145e;

    /* renamed from: f */
    public final Function<? super T, Notification<R>> f97146f;

    /* renamed from: io.reactivex.rxjava3.internal.operators.single.SingleDematerialize$a */
    /* loaded from: classes10.dex */
    public static final class C17590a<T, R> implements SingleObserver<T>, Disposable {

        /* renamed from: e */
        public final MaybeObserver<? super R> f97147e;

        /* renamed from: f */
        public final Function<? super T, Notification<R>> f97148f;

        /* renamed from: g */
        public Disposable f97149g;

        public C17590a(MaybeObserver<? super R> downstream, Function<? super T, Notification<R>> selector) {
            this.f97147e = downstream;
            this.f97148f = selector;
        }

        @Override // io.reactivex.rxjava3.disposables.Disposable
        public void dispose() {
            this.f97149g.dispose();
        }

        @Override // io.reactivex.rxjava3.disposables.Disposable
        public boolean isDisposed() {
            return this.f97149g.isDisposed();
        }

        @Override // io.reactivex.rxjava3.core.SingleObserver
        public void onError(Throwable e) {
            this.f97147e.onError(e);
        }

        @Override // io.reactivex.rxjava3.core.SingleObserver
        public void onSubscribe(Disposable d) {
            if (DisposableHelper.validate(this.f97149g, d)) {
                this.f97149g = d;
                this.f97147e.onSubscribe(this);
            }
        }

        @Override // io.reactivex.rxjava3.core.SingleObserver
        public void onSuccess(T t) {
            try {
                Notification<R> apply = this.f97148f.apply(t);
                Objects.requireNonNull(apply, "The selector returned a null Notification");
                Notification<R> notification = apply;
                if (notification.isOnNext()) {
                    this.f97147e.onSuccess(notification.getValue());
                } else if (notification.isOnComplete()) {
                    this.f97147e.onComplete();
                } else {
                    this.f97147e.onError(notification.getError());
                }
            } catch (Throwable th) {
                Exceptions.throwIfFatal(th);
                this.f97147e.onError(th);
            }
        }
    }

    public SingleDematerialize(Single<T> source, Function<? super T, Notification<R>> selector) {
        this.f97145e = source;
        this.f97146f = selector;
    }

    @Override // io.reactivex.rxjava3.core.Maybe
    public void subscribeActual(MaybeObserver<? super R> observer) {
        this.f97145e.subscribe(new C17590a(observer, this.f97146f));
    }
}
