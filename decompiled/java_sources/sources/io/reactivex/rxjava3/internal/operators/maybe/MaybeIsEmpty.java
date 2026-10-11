package io.reactivex.rxjava3.internal.operators.maybe;

import com.sunia.HTREnginev2.AbstractC13470a4;
import io.reactivex.rxjava3.core.MaybeObserver;
import io.reactivex.rxjava3.core.MaybeSource;
import io.reactivex.rxjava3.disposables.Disposable;
import io.reactivex.rxjava3.internal.disposables.DisposableHelper;

/* loaded from: classes10.dex */
public final class MaybeIsEmpty<T> extends AbstractC13470a4<T, Boolean> {

    /* renamed from: io.reactivex.rxjava3.internal.operators.maybe.MaybeIsEmpty$a */
    /* loaded from: classes10.dex */
    public static final class C17443a<T> implements MaybeObserver<T>, Disposable {

        /* renamed from: e */
        public final MaybeObserver<? super Boolean> f96127e;

        /* renamed from: f */
        public Disposable f96128f;

        public C17443a(MaybeObserver<? super Boolean> downstream) {
            this.f96127e = downstream;
        }

        @Override // io.reactivex.rxjava3.disposables.Disposable
        public void dispose() {
            this.f96128f.dispose();
        }

        @Override // io.reactivex.rxjava3.disposables.Disposable
        public boolean isDisposed() {
            return this.f96128f.isDisposed();
        }

        @Override // io.reactivex.rxjava3.core.MaybeObserver, io.reactivex.rxjava3.core.CompletableObserver
        public void onComplete() {
            this.f96127e.onSuccess(Boolean.TRUE);
        }

        @Override // io.reactivex.rxjava3.core.MaybeObserver, io.reactivex.rxjava3.core.SingleObserver
        public void onError(Throwable e) {
            this.f96127e.onError(e);
        }

        @Override // io.reactivex.rxjava3.core.MaybeObserver, io.reactivex.rxjava3.core.SingleObserver
        public void onSubscribe(Disposable d) {
            if (DisposableHelper.validate(this.f96128f, d)) {
                this.f96128f = d;
                this.f96127e.onSubscribe(this);
            }
        }

        @Override // io.reactivex.rxjava3.core.MaybeObserver, io.reactivex.rxjava3.core.SingleObserver
        public void onSuccess(T value) {
            this.f96127e.onSuccess(Boolean.FALSE);
        }
    }

    public MaybeIsEmpty(MaybeSource<T> source) {
        super(source);
    }

    @Override // io.reactivex.rxjava3.core.Maybe
    public void subscribeActual(MaybeObserver<? super Boolean> observer) {
        this.source.subscribe(new C17443a(observer));
    }
}
