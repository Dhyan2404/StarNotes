package io.reactivex.rxjava3.internal.operators.maybe;

import com.sunia.HTREnginev2.AbstractC13470a4;
import io.reactivex.rxjava3.core.MaybeObserver;
import io.reactivex.rxjava3.core.MaybeSource;
import io.reactivex.rxjava3.disposables.Disposable;
import io.reactivex.rxjava3.exceptions.Exceptions;
import io.reactivex.rxjava3.functions.Predicate;
import io.reactivex.rxjava3.internal.disposables.DisposableHelper;

/* loaded from: classes10.dex */
public final class MaybeFilter<T> extends AbstractC13470a4<T, T> {

    /* renamed from: e */
    public final Predicate<? super T> f96071e;

    /* renamed from: io.reactivex.rxjava3.internal.operators.maybe.MaybeFilter$a */
    /* loaded from: classes10.dex */
    public static final class C17432a<T> implements MaybeObserver<T>, Disposable {

        /* renamed from: e */
        public final MaybeObserver<? super T> f96072e;

        /* renamed from: f */
        public final Predicate<? super T> f96073f;

        /* renamed from: g */
        public Disposable f96074g;

        public C17432a(MaybeObserver<? super T> actual, Predicate<? super T> predicate) {
            this.f96072e = actual;
            this.f96073f = predicate;
        }

        @Override // io.reactivex.rxjava3.disposables.Disposable
        public void dispose() {
            Disposable disposable = this.f96074g;
            this.f96074g = DisposableHelper.DISPOSED;
            disposable.dispose();
        }

        @Override // io.reactivex.rxjava3.disposables.Disposable
        public boolean isDisposed() {
            return this.f96074g.isDisposed();
        }

        @Override // io.reactivex.rxjava3.core.MaybeObserver, io.reactivex.rxjava3.core.CompletableObserver
        public void onComplete() {
            this.f96072e.onComplete();
        }

        @Override // io.reactivex.rxjava3.core.MaybeObserver, io.reactivex.rxjava3.core.SingleObserver
        public void onError(Throwable e) {
            this.f96072e.onError(e);
        }

        @Override // io.reactivex.rxjava3.core.MaybeObserver, io.reactivex.rxjava3.core.SingleObserver
        public void onSubscribe(Disposable d) {
            if (DisposableHelper.validate(this.f96074g, d)) {
                this.f96074g = d;
                this.f96072e.onSubscribe(this);
            }
        }

        @Override // io.reactivex.rxjava3.core.MaybeObserver, io.reactivex.rxjava3.core.SingleObserver
        public void onSuccess(T value) {
            try {
                if (this.f96073f.test(value)) {
                    this.f96072e.onSuccess(value);
                } else {
                    this.f96072e.onComplete();
                }
            } catch (Throwable th) {
                Exceptions.throwIfFatal(th);
                this.f96072e.onError(th);
            }
        }
    }

    public MaybeFilter(MaybeSource<T> source, Predicate<? super T> predicate) {
        super(source);
        this.f96071e = predicate;
    }

    @Override // io.reactivex.rxjava3.core.Maybe
    public void subscribeActual(MaybeObserver<? super T> observer) {
        this.source.subscribe(new C17432a(observer, this.f96071e));
    }
}
