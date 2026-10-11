package io.reactivex.rxjava3.internal.operators.maybe;

import com.sunia.HTREnginev2.AbstractC13470a4;
import io.reactivex.rxjava3.core.MaybeObserver;
import io.reactivex.rxjava3.core.MaybeSource;
import io.reactivex.rxjava3.core.SingleObserver;
import io.reactivex.rxjava3.disposables.Disposable;
import io.reactivex.rxjava3.exceptions.CompositeException;
import io.reactivex.rxjava3.exceptions.Exceptions;
import io.reactivex.rxjava3.functions.Predicate;
import io.reactivex.rxjava3.internal.disposables.DisposableHelper;

/* loaded from: classes10.dex */
public final class MaybeOnErrorComplete<T> extends AbstractC13470a4<T, T> {

    /* renamed from: e */
    public final Predicate<? super Throwable> f96141e;

    /* loaded from: classes10.dex */
    public static final class OnErrorCompleteMultiObserver<T> implements MaybeObserver<T>, SingleObserver<T>, Disposable {

        /* renamed from: e */
        public final MaybeObserver<? super T> f96142e;

        /* renamed from: f */
        public final Predicate<? super Throwable> f96143f;

        /* renamed from: g */
        public Disposable f96144g;

        public OnErrorCompleteMultiObserver(MaybeObserver<? super T> actual, Predicate<? super Throwable> predicate) {
            this.f96142e = actual;
            this.f96143f = predicate;
        }

        @Override // io.reactivex.rxjava3.disposables.Disposable
        public void dispose() {
            this.f96144g.dispose();
        }

        @Override // io.reactivex.rxjava3.disposables.Disposable
        public boolean isDisposed() {
            return this.f96144g.isDisposed();
        }

        @Override // io.reactivex.rxjava3.core.MaybeObserver, io.reactivex.rxjava3.core.CompletableObserver
        public void onComplete() {
            this.f96142e.onComplete();
        }

        @Override // io.reactivex.rxjava3.core.MaybeObserver, io.reactivex.rxjava3.core.SingleObserver
        public void onError(Throwable e) {
            try {
                if (this.f96143f.test(e)) {
                    this.f96142e.onComplete();
                } else {
                    this.f96142e.onError(e);
                }
            } catch (Throwable th) {
                Exceptions.throwIfFatal(th);
                this.f96142e.onError(new CompositeException(e, th));
            }
        }

        @Override // io.reactivex.rxjava3.core.MaybeObserver, io.reactivex.rxjava3.core.SingleObserver
        public void onSubscribe(Disposable d) {
            if (DisposableHelper.validate(this.f96144g, d)) {
                this.f96144g = d;
                this.f96142e.onSubscribe(this);
            }
        }

        @Override // io.reactivex.rxjava3.core.MaybeObserver, io.reactivex.rxjava3.core.SingleObserver
        public void onSuccess(T value) {
            this.f96142e.onSuccess(value);
        }
    }

    public MaybeOnErrorComplete(MaybeSource<T> source, Predicate<? super Throwable> predicate) {
        super(source);
        this.f96141e = predicate;
    }

    @Override // io.reactivex.rxjava3.core.Maybe
    public void subscribeActual(MaybeObserver<? super T> observer) {
        this.source.subscribe(new OnErrorCompleteMultiObserver(observer, this.f96141e));
    }
}
