package io.reactivex.rxjava3.internal.operators.maybe;

import com.sunia.HTREnginev2.AbstractC13470a4;
import io.reactivex.rxjava3.core.MaybeObserver;
import io.reactivex.rxjava3.core.MaybeSource;
import io.reactivex.rxjava3.disposables.Disposable;
import io.reactivex.rxjava3.exceptions.Exceptions;
import io.reactivex.rxjava3.functions.Consumer;
import io.reactivex.rxjava3.internal.disposables.DisposableHelper;
import io.reactivex.rxjava3.plugins.RxJavaPlugins;

/* loaded from: classes10.dex */
public final class MaybeDoAfterSuccess<T> extends AbstractC13470a4<T, T> {

    /* renamed from: e */
    public final Consumer<? super T> f96047e;

    /* renamed from: io.reactivex.rxjava3.internal.operators.maybe.MaybeDoAfterSuccess$a */
    /* loaded from: classes10.dex */
    public static final class C17428a<T> implements MaybeObserver<T>, Disposable {

        /* renamed from: e */
        public final MaybeObserver<? super T> f96048e;

        /* renamed from: f */
        public final Consumer<? super T> f96049f;

        /* renamed from: g */
        public Disposable f96050g;

        public C17428a(MaybeObserver<? super T> actual, Consumer<? super T> onAfterSuccess) {
            this.f96048e = actual;
            this.f96049f = onAfterSuccess;
        }

        @Override // io.reactivex.rxjava3.disposables.Disposable
        public void dispose() {
            this.f96050g.dispose();
        }

        @Override // io.reactivex.rxjava3.disposables.Disposable
        public boolean isDisposed() {
            return this.f96050g.isDisposed();
        }

        @Override // io.reactivex.rxjava3.core.MaybeObserver, io.reactivex.rxjava3.core.CompletableObserver
        public void onComplete() {
            this.f96048e.onComplete();
        }

        @Override // io.reactivex.rxjava3.core.MaybeObserver, io.reactivex.rxjava3.core.SingleObserver
        public void onError(Throwable e) {
            this.f96048e.onError(e);
        }

        @Override // io.reactivex.rxjava3.core.MaybeObserver, io.reactivex.rxjava3.core.SingleObserver
        public void onSubscribe(Disposable d) {
            if (DisposableHelper.validate(this.f96050g, d)) {
                this.f96050g = d;
                this.f96048e.onSubscribe(this);
            }
        }

        @Override // io.reactivex.rxjava3.core.MaybeObserver, io.reactivex.rxjava3.core.SingleObserver
        public void onSuccess(T t) {
            this.f96048e.onSuccess(t);
            try {
                this.f96049f.accept(t);
            } catch (Throwable th) {
                Exceptions.throwIfFatal(th);
                RxJavaPlugins.onError(th);
            }
        }
    }

    public MaybeDoAfterSuccess(MaybeSource<T> source, Consumer<? super T> onAfterSuccess) {
        super(source);
        this.f96047e = onAfterSuccess;
    }

    @Override // io.reactivex.rxjava3.core.Maybe
    public void subscribeActual(MaybeObserver<? super T> observer) {
        this.source.subscribe(new C17428a(observer, this.f96047e));
    }
}
