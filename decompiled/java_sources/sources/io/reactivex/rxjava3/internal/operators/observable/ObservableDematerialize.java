package io.reactivex.rxjava3.internal.operators.observable;

import io.reactivex.rxjava3.core.Notification;
import io.reactivex.rxjava3.core.ObservableSource;
import io.reactivex.rxjava3.core.Observer;
import io.reactivex.rxjava3.disposables.Disposable;
import io.reactivex.rxjava3.exceptions.Exceptions;
import io.reactivex.rxjava3.functions.Function;
import io.reactivex.rxjava3.internal.disposables.DisposableHelper;
import io.reactivex.rxjava3.plugins.RxJavaPlugins;
import java.util.Objects;

/* loaded from: classes10.dex */
public final class ObservableDematerialize<T, R> extends AbstractC17568a<T, R> {

    /* renamed from: e */
    public final Function<? super T, ? extends Notification<R>> f96506e;

    /* renamed from: io.reactivex.rxjava3.internal.operators.observable.ObservableDematerialize$a */
    /* loaded from: classes10.dex */
    public static final class C17481a<T, R> implements Observer<T>, Disposable {

        /* renamed from: e */
        public final Observer<? super R> f96507e;

        /* renamed from: f */
        public final Function<? super T, ? extends Notification<R>> f96508f;

        /* renamed from: g */
        public boolean f96509g;

        /* renamed from: h */
        public Disposable f96510h;

        public C17481a(Observer<? super R> downstream, Function<? super T, ? extends Notification<R>> selector) {
            this.f96507e = downstream;
            this.f96508f = selector;
        }

        @Override // io.reactivex.rxjava3.disposables.Disposable
        public void dispose() {
            this.f96510h.dispose();
        }

        @Override // io.reactivex.rxjava3.disposables.Disposable
        public boolean isDisposed() {
            return this.f96510h.isDisposed();
        }

        @Override // io.reactivex.rxjava3.core.Observer
        public void onComplete() {
            if (this.f96509g) {
                return;
            }
            this.f96509g = true;
            this.f96507e.onComplete();
        }

        @Override // io.reactivex.rxjava3.core.Observer
        public void onError(Throwable t) {
            if (this.f96509g) {
                RxJavaPlugins.onError(t);
            } else {
                this.f96509g = true;
                this.f96507e.onError(t);
            }
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // io.reactivex.rxjava3.core.Observer
        public void onNext(T item) {
            if (this.f96509g) {
                if (item instanceof Notification) {
                    Notification notification = (Notification) item;
                    if (notification.isOnError()) {
                        RxJavaPlugins.onError(notification.getError());
                        return;
                    }
                    return;
                }
                return;
            }
            try {
                Notification<R> apply = this.f96508f.apply(item);
                Objects.requireNonNull(apply, "The selector returned a null Notification");
                Notification<R> notification2 = apply;
                if (notification2.isOnError()) {
                    this.f96510h.dispose();
                    onError(notification2.getError());
                } else if (!notification2.isOnComplete()) {
                    this.f96507e.onNext(notification2.getValue());
                } else {
                    this.f96510h.dispose();
                    onComplete();
                }
            } catch (Throwable th) {
                Exceptions.throwIfFatal(th);
                this.f96510h.dispose();
                onError(th);
            }
        }

        @Override // io.reactivex.rxjava3.core.Observer
        public void onSubscribe(Disposable d) {
            if (DisposableHelper.validate(this.f96510h, d)) {
                this.f96510h = d;
                this.f96507e.onSubscribe(this);
            }
        }
    }

    public ObservableDematerialize(ObservableSource<T> source, Function<? super T, ? extends Notification<R>> selector) {
        super(source);
        this.f96506e = selector;
    }

    @Override // io.reactivex.rxjava3.core.Observable
    public void subscribeActual(Observer<? super R> observer) {
        this.source.subscribe(new C17481a(observer, this.f96506e));
    }
}
