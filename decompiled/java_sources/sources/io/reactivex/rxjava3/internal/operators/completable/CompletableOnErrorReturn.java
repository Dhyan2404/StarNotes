package io.reactivex.rxjava3.internal.operators.completable;

import io.reactivex.rxjava3.core.CompletableObserver;
import io.reactivex.rxjava3.core.CompletableSource;
import io.reactivex.rxjava3.core.Maybe;
import io.reactivex.rxjava3.core.MaybeObserver;
import io.reactivex.rxjava3.disposables.Disposable;
import io.reactivex.rxjava3.exceptions.CompositeException;
import io.reactivex.rxjava3.exceptions.Exceptions;
import io.reactivex.rxjava3.functions.Function;
import io.reactivex.rxjava3.internal.disposables.DisposableHelper;
import java.util.Objects;

/* loaded from: classes10.dex */
public final class CompletableOnErrorReturn<T> extends Maybe<T> {

    /* renamed from: e */
    public final CompletableSource f95279e;

    /* renamed from: f */
    public final Function<? super Throwable, ? extends T> f95280f;

    /* renamed from: io.reactivex.rxjava3.internal.operators.completable.CompletableOnErrorReturn$a */
    /* loaded from: classes10.dex */
    public static final class C17315a<T> implements CompletableObserver, Disposable {

        /* renamed from: e */
        public final MaybeObserver<? super T> f95281e;

        /* renamed from: f */
        public final Function<? super Throwable, ? extends T> f95282f;

        /* renamed from: g */
        public Disposable f95283g;

        public C17315a(MaybeObserver<? super T> actual, Function<? super Throwable, ? extends T> itemSupplier) {
            this.f95281e = actual;
            this.f95282f = itemSupplier;
        }

        @Override // io.reactivex.rxjava3.disposables.Disposable
        public void dispose() {
            this.f95283g.dispose();
        }

        @Override // io.reactivex.rxjava3.disposables.Disposable
        public boolean isDisposed() {
            return this.f95283g.isDisposed();
        }

        @Override // io.reactivex.rxjava3.core.CompletableObserver
        public void onComplete() {
            this.f95281e.onComplete();
        }

        @Override // io.reactivex.rxjava3.core.CompletableObserver
        public void onError(Throwable e) {
            try {
                T apply = this.f95282f.apply(e);
                Objects.requireNonNull(apply, "The itemSupplier returned a null value");
                this.f95281e.onSuccess(apply);
            } catch (Throwable th) {
                Exceptions.throwIfFatal(th);
                this.f95281e.onError(new CompositeException(e, th));
            }
        }

        @Override // io.reactivex.rxjava3.core.CompletableObserver
        public void onSubscribe(Disposable d) {
            if (DisposableHelper.validate(this.f95283g, d)) {
                this.f95283g = d;
                this.f95281e.onSubscribe(this);
            }
        }
    }

    public CompletableOnErrorReturn(CompletableSource source, Function<? super Throwable, ? extends T> valueSupplier) {
        this.f95279e = source;
        this.f95280f = valueSupplier;
    }

    @Override // io.reactivex.rxjava3.core.Maybe
    public void subscribeActual(MaybeObserver<? super T> observer) {
        this.f95279e.subscribe(new C17315a(observer, this.f95280f));
    }
}
