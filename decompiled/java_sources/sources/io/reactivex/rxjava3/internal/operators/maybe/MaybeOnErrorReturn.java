package io.reactivex.rxjava3.internal.operators.maybe;

import com.sunia.HTREnginev2.AbstractC13470a4;
import io.reactivex.rxjava3.core.MaybeObserver;
import io.reactivex.rxjava3.core.MaybeSource;
import io.reactivex.rxjava3.disposables.Disposable;
import io.reactivex.rxjava3.exceptions.CompositeException;
import io.reactivex.rxjava3.exceptions.Exceptions;
import io.reactivex.rxjava3.functions.Function;
import io.reactivex.rxjava3.internal.disposables.DisposableHelper;
import java.util.Objects;

/* loaded from: classes10.dex */
public final class MaybeOnErrorReturn<T> extends AbstractC13470a4<T, T> {

    /* renamed from: e */
    public final Function<? super Throwable, ? extends T> f96148e;

    /* renamed from: io.reactivex.rxjava3.internal.operators.maybe.MaybeOnErrorReturn$a */
    /* loaded from: classes10.dex */
    public static final class C17448a<T> implements MaybeObserver<T>, Disposable {

        /* renamed from: e */
        public final MaybeObserver<? super T> f96149e;

        /* renamed from: f */
        public final Function<? super Throwable, ? extends T> f96150f;

        /* renamed from: g */
        public Disposable f96151g;

        public C17448a(MaybeObserver<? super T> actual, Function<? super Throwable, ? extends T> valueSupplier) {
            this.f96149e = actual;
            this.f96150f = valueSupplier;
        }

        @Override // io.reactivex.rxjava3.disposables.Disposable
        public void dispose() {
            this.f96151g.dispose();
        }

        @Override // io.reactivex.rxjava3.disposables.Disposable
        public boolean isDisposed() {
            return this.f96151g.isDisposed();
        }

        @Override // io.reactivex.rxjava3.core.MaybeObserver, io.reactivex.rxjava3.core.CompletableObserver
        public void onComplete() {
            this.f96149e.onComplete();
        }

        @Override // io.reactivex.rxjava3.core.MaybeObserver, io.reactivex.rxjava3.core.SingleObserver
        public void onError(Throwable e) {
            try {
                T apply = this.f96150f.apply(e);
                Objects.requireNonNull(apply, "The itemSupplier returned a null value");
                this.f96149e.onSuccess(apply);
            } catch (Throwable th) {
                Exceptions.throwIfFatal(th);
                this.f96149e.onError(new CompositeException(e, th));
            }
        }

        @Override // io.reactivex.rxjava3.core.MaybeObserver, io.reactivex.rxjava3.core.SingleObserver
        public void onSubscribe(Disposable d) {
            if (DisposableHelper.validate(this.f96151g, d)) {
                this.f96151g = d;
                this.f96149e.onSubscribe(this);
            }
        }

        @Override // io.reactivex.rxjava3.core.MaybeObserver, io.reactivex.rxjava3.core.SingleObserver
        public void onSuccess(T value) {
            this.f96149e.onSuccess(value);
        }
    }

    public MaybeOnErrorReturn(MaybeSource<T> source, Function<? super Throwable, ? extends T> itemSupplier) {
        super(source);
        this.f96148e = itemSupplier;
    }

    @Override // io.reactivex.rxjava3.core.Maybe
    public void subscribeActual(MaybeObserver<? super T> observer) {
        this.source.subscribe(new C17448a(observer, this.f96148e));
    }
}
