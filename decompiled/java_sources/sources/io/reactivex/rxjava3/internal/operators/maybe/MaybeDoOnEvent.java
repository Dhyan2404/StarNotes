package io.reactivex.rxjava3.internal.operators.maybe;

import com.sunia.HTREnginev2.AbstractC13470a4;
import io.reactivex.rxjava3.core.MaybeObserver;
import io.reactivex.rxjava3.core.MaybeSource;
import io.reactivex.rxjava3.disposables.Disposable;
import io.reactivex.rxjava3.exceptions.CompositeException;
import io.reactivex.rxjava3.exceptions.Exceptions;
import io.reactivex.rxjava3.functions.BiConsumer;
import io.reactivex.rxjava3.internal.disposables.DisposableHelper;

/* loaded from: classes10.dex */
public final class MaybeDoOnEvent<T> extends AbstractC13470a4<T, T> {

    /* renamed from: e */
    public final BiConsumer<? super T, ? super Throwable> f96052e;

    /* renamed from: io.reactivex.rxjava3.internal.operators.maybe.MaybeDoOnEvent$a */
    /* loaded from: classes10.dex */
    public static final class C17429a<T> implements MaybeObserver<T>, Disposable {

        /* renamed from: e */
        public final MaybeObserver<? super T> f96053e;

        /* renamed from: f */
        public final BiConsumer<? super T, ? super Throwable> f96054f;

        /* renamed from: g */
        public Disposable f96055g;

        public C17429a(MaybeObserver<? super T> actual, BiConsumer<? super T, ? super Throwable> onEvent) {
            this.f96053e = actual;
            this.f96054f = onEvent;
        }

        @Override // io.reactivex.rxjava3.disposables.Disposable
        public void dispose() {
            this.f96055g.dispose();
            this.f96055g = DisposableHelper.DISPOSED;
        }

        @Override // io.reactivex.rxjava3.disposables.Disposable
        public boolean isDisposed() {
            return this.f96055g.isDisposed();
        }

        @Override // io.reactivex.rxjava3.core.MaybeObserver, io.reactivex.rxjava3.core.CompletableObserver
        public void onComplete() {
            this.f96055g = DisposableHelper.DISPOSED;
            try {
                this.f96054f.accept(null, null);
                this.f96053e.onComplete();
            } catch (Throwable th) {
                Exceptions.throwIfFatal(th);
                this.f96053e.onError(th);
            }
        }

        @Override // io.reactivex.rxjava3.core.MaybeObserver, io.reactivex.rxjava3.core.SingleObserver
        public void onError(Throwable e) {
            this.f96055g = DisposableHelper.DISPOSED;
            try {
                this.f96054f.accept(null, e);
            } catch (Throwable th) {
                Exceptions.throwIfFatal(th);
                e = new CompositeException(e, th);
            }
            this.f96053e.onError(e);
        }

        @Override // io.reactivex.rxjava3.core.MaybeObserver, io.reactivex.rxjava3.core.SingleObserver
        public void onSubscribe(Disposable d) {
            if (DisposableHelper.validate(this.f96055g, d)) {
                this.f96055g = d;
                this.f96053e.onSubscribe(this);
            }
        }

        @Override // io.reactivex.rxjava3.core.MaybeObserver, io.reactivex.rxjava3.core.SingleObserver
        public void onSuccess(T value) {
            this.f96055g = DisposableHelper.DISPOSED;
            try {
                this.f96054f.accept(value, null);
                this.f96053e.onSuccess(value);
            } catch (Throwable th) {
                Exceptions.throwIfFatal(th);
                this.f96053e.onError(th);
            }
        }
    }

    public MaybeDoOnEvent(MaybeSource<T> source, BiConsumer<? super T, ? super Throwable> onEvent) {
        super(source);
        this.f96052e = onEvent;
    }

    @Override // io.reactivex.rxjava3.core.Maybe
    public void subscribeActual(MaybeObserver<? super T> observer) {
        this.source.subscribe(new C17429a(observer, this.f96052e));
    }
}
