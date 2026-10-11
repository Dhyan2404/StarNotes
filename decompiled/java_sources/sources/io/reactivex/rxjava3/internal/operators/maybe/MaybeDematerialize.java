package io.reactivex.rxjava3.internal.operators.maybe;

import com.sunia.HTREnginev2.AbstractC13470a4;
import io.reactivex.rxjava3.core.Maybe;
import io.reactivex.rxjava3.core.MaybeObserver;
import io.reactivex.rxjava3.core.Notification;
import io.reactivex.rxjava3.disposables.Disposable;
import io.reactivex.rxjava3.exceptions.Exceptions;
import io.reactivex.rxjava3.functions.Function;
import io.reactivex.rxjava3.internal.disposables.DisposableHelper;
import java.util.Objects;

/* loaded from: classes10.dex */
public final class MaybeDematerialize<T, R> extends AbstractC13470a4<T, R> {

    /* renamed from: e */
    public final Function<? super T, Notification<R>> f96041e;

    /* renamed from: io.reactivex.rxjava3.internal.operators.maybe.MaybeDematerialize$a */
    /* loaded from: classes10.dex */
    public static final class C17426a<T, R> implements MaybeObserver<T>, Disposable {

        /* renamed from: e */
        public final MaybeObserver<? super R> f96042e;

        /* renamed from: f */
        public final Function<? super T, Notification<R>> f96043f;

        /* renamed from: g */
        public Disposable f96044g;

        public C17426a(MaybeObserver<? super R> downstream, Function<? super T, Notification<R>> selector) {
            this.f96042e = downstream;
            this.f96043f = selector;
        }

        @Override // io.reactivex.rxjava3.disposables.Disposable
        public void dispose() {
            this.f96044g.dispose();
        }

        @Override // io.reactivex.rxjava3.disposables.Disposable
        public boolean isDisposed() {
            return this.f96044g.isDisposed();
        }

        @Override // io.reactivex.rxjava3.core.MaybeObserver, io.reactivex.rxjava3.core.CompletableObserver
        public void onComplete() {
            this.f96042e.onComplete();
        }

        @Override // io.reactivex.rxjava3.core.MaybeObserver, io.reactivex.rxjava3.core.SingleObserver
        public void onError(Throwable e) {
            this.f96042e.onError(e);
        }

        @Override // io.reactivex.rxjava3.core.MaybeObserver, io.reactivex.rxjava3.core.SingleObserver
        public void onSubscribe(Disposable d) {
            if (DisposableHelper.validate(this.f96044g, d)) {
                this.f96044g = d;
                this.f96042e.onSubscribe(this);
            }
        }

        @Override // io.reactivex.rxjava3.core.MaybeObserver, io.reactivex.rxjava3.core.SingleObserver
        public void onSuccess(T t) {
            try {
                Notification<R> apply = this.f96043f.apply(t);
                Objects.requireNonNull(apply, "The selector returned a null Notification");
                Notification<R> notification = apply;
                if (notification.isOnNext()) {
                    this.f96042e.onSuccess(notification.getValue());
                } else if (notification.isOnComplete()) {
                    this.f96042e.onComplete();
                } else {
                    this.f96042e.onError(notification.getError());
                }
            } catch (Throwable th) {
                Exceptions.throwIfFatal(th);
                this.f96042e.onError(th);
            }
        }
    }

    public MaybeDematerialize(Maybe<T> source, Function<? super T, Notification<R>> selector) {
        super(source);
        this.f96041e = selector;
    }

    @Override // io.reactivex.rxjava3.core.Maybe
    public void subscribeActual(MaybeObserver<? super R> observer) {
        this.source.subscribe(new C17426a(observer, this.f96041e));
    }
}
