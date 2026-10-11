package io.reactivex.rxjava3.internal.operators.maybe;

import com.sunia.HTREnginev2.AbstractC13470a4;
import io.reactivex.rxjava3.core.MaybeObserver;
import io.reactivex.rxjava3.core.MaybeSource;
import io.reactivex.rxjava3.disposables.Disposable;
import io.reactivex.rxjava3.exceptions.Exceptions;
import io.reactivex.rxjava3.functions.Function;
import io.reactivex.rxjava3.internal.disposables.DisposableHelper;
import java.util.Objects;

/* loaded from: classes10.dex */
public final class MaybeMap<T, R> extends AbstractC13470a4<T, R> {

    /* renamed from: e */
    public final Function<? super T, ? extends R> f96134e;

    /* renamed from: io.reactivex.rxjava3.internal.operators.maybe.MaybeMap$a */
    /* loaded from: classes10.dex */
    public static final class C17445a<T, R> implements MaybeObserver<T>, Disposable {

        /* renamed from: e */
        public final MaybeObserver<? super R> f96135e;

        /* renamed from: f */
        public final Function<? super T, ? extends R> f96136f;

        /* renamed from: g */
        public Disposable f96137g;

        public C17445a(MaybeObserver<? super R> actual, Function<? super T, ? extends R> mapper) {
            this.f96135e = actual;
            this.f96136f = mapper;
        }

        @Override // io.reactivex.rxjava3.disposables.Disposable
        public void dispose() {
            Disposable disposable = this.f96137g;
            this.f96137g = DisposableHelper.DISPOSED;
            disposable.dispose();
        }

        @Override // io.reactivex.rxjava3.disposables.Disposable
        public boolean isDisposed() {
            return this.f96137g.isDisposed();
        }

        @Override // io.reactivex.rxjava3.core.MaybeObserver, io.reactivex.rxjava3.core.CompletableObserver
        public void onComplete() {
            this.f96135e.onComplete();
        }

        @Override // io.reactivex.rxjava3.core.MaybeObserver, io.reactivex.rxjava3.core.SingleObserver
        public void onError(Throwable e) {
            this.f96135e.onError(e);
        }

        @Override // io.reactivex.rxjava3.core.MaybeObserver, io.reactivex.rxjava3.core.SingleObserver
        public void onSubscribe(Disposable d) {
            if (DisposableHelper.validate(this.f96137g, d)) {
                this.f96137g = d;
                this.f96135e.onSubscribe(this);
            }
        }

        @Override // io.reactivex.rxjava3.core.MaybeObserver, io.reactivex.rxjava3.core.SingleObserver
        public void onSuccess(T value) {
            try {
                R apply = this.f96136f.apply(value);
                Objects.requireNonNull(apply, "The mapper returned a null item");
                this.f96135e.onSuccess(apply);
            } catch (Throwable th) {
                Exceptions.throwIfFatal(th);
                this.f96135e.onError(th);
            }
        }
    }

    public MaybeMap(MaybeSource<T> source, Function<? super T, ? extends R> mapper) {
        super(source);
        this.f96134e = mapper;
    }

    @Override // io.reactivex.rxjava3.core.Maybe
    public void subscribeActual(MaybeObserver<? super R> observer) {
        this.source.subscribe(new C17445a(observer, this.f96134e));
    }
}
