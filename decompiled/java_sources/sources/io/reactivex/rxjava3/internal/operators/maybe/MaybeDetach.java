package io.reactivex.rxjava3.internal.operators.maybe;

import com.sunia.HTREnginev2.AbstractC13470a4;
import io.reactivex.rxjava3.core.MaybeObserver;
import io.reactivex.rxjava3.core.MaybeSource;
import io.reactivex.rxjava3.disposables.Disposable;
import io.reactivex.rxjava3.internal.disposables.DisposableHelper;

/* loaded from: classes10.dex */
public final class MaybeDetach<T> extends AbstractC13470a4<T, T> {

    /* renamed from: io.reactivex.rxjava3.internal.operators.maybe.MaybeDetach$a */
    /* loaded from: classes10.dex */
    public static final class C17427a<T> implements MaybeObserver<T>, Disposable {

        /* renamed from: e */
        public MaybeObserver<? super T> f96045e;

        /* renamed from: f */
        public Disposable f96046f;

        public C17427a(MaybeObserver<? super T> downstream) {
            this.f96045e = downstream;
        }

        @Override // io.reactivex.rxjava3.disposables.Disposable
        public void dispose() {
            this.f96045e = null;
            this.f96046f.dispose();
            this.f96046f = DisposableHelper.DISPOSED;
        }

        @Override // io.reactivex.rxjava3.disposables.Disposable
        public boolean isDisposed() {
            return this.f96046f.isDisposed();
        }

        @Override // io.reactivex.rxjava3.core.MaybeObserver, io.reactivex.rxjava3.core.CompletableObserver
        public void onComplete() {
            this.f96046f = DisposableHelper.DISPOSED;
            MaybeObserver<? super T> maybeObserver = this.f96045e;
            if (maybeObserver != null) {
                this.f96045e = null;
                maybeObserver.onComplete();
            }
        }

        @Override // io.reactivex.rxjava3.core.MaybeObserver, io.reactivex.rxjava3.core.SingleObserver
        public void onError(Throwable e) {
            this.f96046f = DisposableHelper.DISPOSED;
            MaybeObserver<? super T> maybeObserver = this.f96045e;
            if (maybeObserver != null) {
                this.f96045e = null;
                maybeObserver.onError(e);
            }
        }

        @Override // io.reactivex.rxjava3.core.MaybeObserver, io.reactivex.rxjava3.core.SingleObserver
        public void onSubscribe(Disposable d) {
            if (DisposableHelper.validate(this.f96046f, d)) {
                this.f96046f = d;
                this.f96045e.onSubscribe(this);
            }
        }

        @Override // io.reactivex.rxjava3.core.MaybeObserver, io.reactivex.rxjava3.core.SingleObserver
        public void onSuccess(T value) {
            this.f96046f = DisposableHelper.DISPOSED;
            MaybeObserver<? super T> maybeObserver = this.f96045e;
            if (maybeObserver != null) {
                this.f96045e = null;
                maybeObserver.onSuccess(value);
            }
        }
    }

    public MaybeDetach(MaybeSource<T> source) {
        super(source);
    }

    @Override // io.reactivex.rxjava3.core.Maybe
    public void subscribeActual(MaybeObserver<? super T> observer) {
        this.source.subscribe(new C17427a(observer));
    }
}
