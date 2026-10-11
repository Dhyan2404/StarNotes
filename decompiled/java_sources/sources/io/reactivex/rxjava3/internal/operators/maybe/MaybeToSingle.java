package io.reactivex.rxjava3.internal.operators.maybe;

import io.reactivex.rxjava3.core.MaybeObserver;
import io.reactivex.rxjava3.core.MaybeSource;
import io.reactivex.rxjava3.core.Single;
import io.reactivex.rxjava3.core.SingleObserver;
import io.reactivex.rxjava3.disposables.Disposable;
import io.reactivex.rxjava3.internal.disposables.DisposableHelper;
import io.reactivex.rxjava3.internal.fuseable.HasUpstreamMaybeSource;
import java.util.NoSuchElementException;

/* loaded from: classes10.dex */
public final class MaybeToSingle<T> extends Single<T> implements HasUpstreamMaybeSource<T> {

    /* renamed from: e */
    public final MaybeSource<T> f96191e;

    /* renamed from: f */
    public final T f96192f;

    /* renamed from: io.reactivex.rxjava3.internal.operators.maybe.MaybeToSingle$a */
    /* loaded from: classes10.dex */
    public static final class C17454a<T> implements MaybeObserver<T>, Disposable {

        /* renamed from: e */
        public final SingleObserver<? super T> f96193e;

        /* renamed from: f */
        public final T f96194f;

        /* renamed from: g */
        public Disposable f96195g;

        public C17454a(SingleObserver<? super T> actual, T defaultValue) {
            this.f96193e = actual;
            this.f96194f = defaultValue;
        }

        @Override // io.reactivex.rxjava3.disposables.Disposable
        public void dispose() {
            this.f96195g.dispose();
            this.f96195g = DisposableHelper.DISPOSED;
        }

        @Override // io.reactivex.rxjava3.disposables.Disposable
        public boolean isDisposed() {
            return this.f96195g.isDisposed();
        }

        @Override // io.reactivex.rxjava3.core.MaybeObserver, io.reactivex.rxjava3.core.CompletableObserver
        public void onComplete() {
            this.f96195g = DisposableHelper.DISPOSED;
            T t = this.f96194f;
            if (t != null) {
                this.f96193e.onSuccess(t);
            } else {
                this.f96193e.onError(new NoSuchElementException("The MaybeSource is empty"));
            }
        }

        @Override // io.reactivex.rxjava3.core.MaybeObserver, io.reactivex.rxjava3.core.SingleObserver
        public void onError(Throwable e) {
            this.f96195g = DisposableHelper.DISPOSED;
            this.f96193e.onError(e);
        }

        @Override // io.reactivex.rxjava3.core.MaybeObserver, io.reactivex.rxjava3.core.SingleObserver
        public void onSubscribe(Disposable d) {
            if (DisposableHelper.validate(this.f96195g, d)) {
                this.f96195g = d;
                this.f96193e.onSubscribe(this);
            }
        }

        @Override // io.reactivex.rxjava3.core.MaybeObserver, io.reactivex.rxjava3.core.SingleObserver
        public void onSuccess(T value) {
            this.f96195g = DisposableHelper.DISPOSED;
            this.f96193e.onSuccess(value);
        }
    }

    public MaybeToSingle(MaybeSource<T> source, T defaultValue) {
        this.f96191e = source;
        this.f96192f = defaultValue;
    }

    @Override // io.reactivex.rxjava3.internal.fuseable.HasUpstreamMaybeSource
    public MaybeSource<T> source() {
        return this.f96191e;
    }

    @Override // io.reactivex.rxjava3.core.Single
    public void subscribeActual(SingleObserver<? super T> observer) {
        this.f96191e.subscribe(new C17454a(observer, this.f96192f));
    }
}
