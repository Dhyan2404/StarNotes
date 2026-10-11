package io.reactivex.rxjava3.internal.operators.maybe;

import io.reactivex.rxjava3.core.Maybe;
import io.reactivex.rxjava3.core.MaybeObserver;
import io.reactivex.rxjava3.core.SingleObserver;
import io.reactivex.rxjava3.core.SingleSource;
import io.reactivex.rxjava3.disposables.Disposable;
import io.reactivex.rxjava3.exceptions.Exceptions;
import io.reactivex.rxjava3.functions.Predicate;
import io.reactivex.rxjava3.internal.disposables.DisposableHelper;

/* loaded from: classes10.dex */
public final class MaybeFilterSingle<T> extends Maybe<T> {

    /* renamed from: e */
    public final SingleSource<T> f96075e;

    /* renamed from: f */
    public final Predicate<? super T> f96076f;

    /* renamed from: io.reactivex.rxjava3.internal.operators.maybe.MaybeFilterSingle$a */
    /* loaded from: classes10.dex */
    public static final class C17433a<T> implements SingleObserver<T>, Disposable {

        /* renamed from: e */
        public final MaybeObserver<? super T> f96077e;

        /* renamed from: f */
        public final Predicate<? super T> f96078f;

        /* renamed from: g */
        public Disposable f96079g;

        public C17433a(MaybeObserver<? super T> actual, Predicate<? super T> predicate) {
            this.f96077e = actual;
            this.f96078f = predicate;
        }

        @Override // io.reactivex.rxjava3.disposables.Disposable
        public void dispose() {
            Disposable disposable = this.f96079g;
            this.f96079g = DisposableHelper.DISPOSED;
            disposable.dispose();
        }

        @Override // io.reactivex.rxjava3.disposables.Disposable
        public boolean isDisposed() {
            return this.f96079g.isDisposed();
        }

        @Override // io.reactivex.rxjava3.core.SingleObserver
        public void onError(Throwable e) {
            this.f96077e.onError(e);
        }

        @Override // io.reactivex.rxjava3.core.SingleObserver
        public void onSubscribe(Disposable d) {
            if (DisposableHelper.validate(this.f96079g, d)) {
                this.f96079g = d;
                this.f96077e.onSubscribe(this);
            }
        }

        @Override // io.reactivex.rxjava3.core.SingleObserver
        public void onSuccess(T value) {
            try {
                if (this.f96078f.test(value)) {
                    this.f96077e.onSuccess(value);
                } else {
                    this.f96077e.onComplete();
                }
            } catch (Throwable th) {
                Exceptions.throwIfFatal(th);
                this.f96077e.onError(th);
            }
        }
    }

    public MaybeFilterSingle(SingleSource<T> source, Predicate<? super T> predicate) {
        this.f96075e = source;
        this.f96076f = predicate;
    }

    @Override // io.reactivex.rxjava3.core.Maybe
    public void subscribeActual(MaybeObserver<? super T> observer) {
        this.f96075e.subscribe(new C17433a(observer, this.f96076f));
    }
}
