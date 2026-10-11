package io.reactivex.rxjava3.internal.operators.observable;

import io.reactivex.rxjava3.core.ObservableSource;
import io.reactivex.rxjava3.core.Observer;
import io.reactivex.rxjava3.disposables.Disposable;
import io.reactivex.rxjava3.exceptions.CompositeException;
import io.reactivex.rxjava3.exceptions.Exceptions;
import io.reactivex.rxjava3.functions.Function;
import io.reactivex.rxjava3.functions.Supplier;
import io.reactivex.rxjava3.internal.disposables.DisposableHelper;
import java.util.Objects;

/* loaded from: classes10.dex */
public final class ObservableMapNotification<T, R> extends AbstractC17568a<T, ObservableSource<? extends R>> {

    /* renamed from: e */
    public final Function<? super T, ? extends ObservableSource<? extends R>> f96694e;

    /* renamed from: f */
    public final Function<? super Throwable, ? extends ObservableSource<? extends R>> f96695f;

    /* renamed from: g */
    public final Supplier<? extends ObservableSource<? extends R>> f96696g;

    /* renamed from: io.reactivex.rxjava3.internal.operators.observable.ObservableMapNotification$a */
    /* loaded from: classes10.dex */
    public static final class C17517a<T, R> implements Observer<T>, Disposable {

        /* renamed from: e */
        public final Observer<? super ObservableSource<? extends R>> f96697e;

        /* renamed from: f */
        public final Function<? super T, ? extends ObservableSource<? extends R>> f96698f;

        /* renamed from: g */
        public final Function<? super Throwable, ? extends ObservableSource<? extends R>> f96699g;

        /* renamed from: h */
        public final Supplier<? extends ObservableSource<? extends R>> f96700h;

        /* renamed from: i */
        public Disposable f96701i;

        public C17517a(Observer<? super ObservableSource<? extends R>> actual, Function<? super T, ? extends ObservableSource<? extends R>> onNextMapper, Function<? super Throwable, ? extends ObservableSource<? extends R>> onErrorMapper, Supplier<? extends ObservableSource<? extends R>> onCompleteSupplier) {
            this.f96697e = actual;
            this.f96698f = onNextMapper;
            this.f96699g = onErrorMapper;
            this.f96700h = onCompleteSupplier;
        }

        @Override // io.reactivex.rxjava3.disposables.Disposable
        public void dispose() {
            this.f96701i.dispose();
        }

        @Override // io.reactivex.rxjava3.disposables.Disposable
        public boolean isDisposed() {
            return this.f96701i.isDisposed();
        }

        @Override // io.reactivex.rxjava3.core.Observer
        public void onComplete() {
            try {
                ObservableSource<? extends R> observableSource = this.f96700h.get();
                Objects.requireNonNull(observableSource, "The onComplete ObservableSource returned is null");
                this.f96697e.onNext(observableSource);
                this.f96697e.onComplete();
            } catch (Throwable th) {
                Exceptions.throwIfFatal(th);
                this.f96697e.onError(th);
            }
        }

        @Override // io.reactivex.rxjava3.core.Observer
        public void onError(Throwable t) {
            try {
                ObservableSource<? extends R> apply = this.f96699g.apply(t);
                Objects.requireNonNull(apply, "The onError ObservableSource returned is null");
                this.f96697e.onNext(apply);
                this.f96697e.onComplete();
            } catch (Throwable th) {
                Exceptions.throwIfFatal(th);
                this.f96697e.onError(new CompositeException(t, th));
            }
        }

        @Override // io.reactivex.rxjava3.core.Observer
        public void onNext(T t) {
            try {
                ObservableSource<? extends R> apply = this.f96698f.apply(t);
                Objects.requireNonNull(apply, "The onNext ObservableSource returned is null");
                this.f96697e.onNext(apply);
            } catch (Throwable th) {
                Exceptions.throwIfFatal(th);
                this.f96697e.onError(th);
            }
        }

        @Override // io.reactivex.rxjava3.core.Observer
        public void onSubscribe(Disposable d) {
            if (DisposableHelper.validate(this.f96701i, d)) {
                this.f96701i = d;
                this.f96697e.onSubscribe(this);
            }
        }
    }

    public ObservableMapNotification(ObservableSource<T> source, Function<? super T, ? extends ObservableSource<? extends R>> onNextMapper, Function<? super Throwable, ? extends ObservableSource<? extends R>> onErrorMapper, Supplier<? extends ObservableSource<? extends R>> onCompleteSupplier) {
        super(source);
        this.f96694e = onNextMapper;
        this.f96695f = onErrorMapper;
        this.f96696g = onCompleteSupplier;
    }

    @Override // io.reactivex.rxjava3.core.Observable
    public void subscribeActual(Observer<? super ObservableSource<? extends R>> t) {
        this.source.subscribe(new C17517a(t, this.f96694e, this.f96695f, this.f96696g));
    }
}
