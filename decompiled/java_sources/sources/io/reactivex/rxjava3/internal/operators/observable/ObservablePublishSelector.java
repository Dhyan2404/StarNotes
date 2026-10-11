package io.reactivex.rxjava3.internal.operators.observable;

import io.reactivex.rxjava3.core.Observable;
import io.reactivex.rxjava3.core.ObservableSource;
import io.reactivex.rxjava3.core.Observer;
import io.reactivex.rxjava3.disposables.Disposable;
import io.reactivex.rxjava3.exceptions.Exceptions;
import io.reactivex.rxjava3.functions.Function;
import io.reactivex.rxjava3.internal.disposables.DisposableHelper;
import io.reactivex.rxjava3.internal.disposables.EmptyDisposable;
import io.reactivex.rxjava3.subjects.PublishSubject;
import java.util.Objects;
import java.util.concurrent.atomic.AtomicReference;

/* loaded from: classes10.dex */
public final class ObservablePublishSelector<T, R> extends AbstractC17568a<T, R> {

    /* renamed from: e */
    public final Function<? super Observable<T>, ? extends ObservableSource<R>> f96726e;

    /* loaded from: classes10.dex */
    public static final class TargetObserver<R> extends AtomicReference<Disposable> implements Observer<R>, Disposable {
        private static final long serialVersionUID = 854110278590336484L;
        final Observer<? super R> downstream;
        Disposable upstream;

        public TargetObserver(Observer<? super R> downstream) {
            this.downstream = downstream;
        }

        @Override // io.reactivex.rxjava3.disposables.Disposable
        public void dispose() {
            this.upstream.dispose();
            DisposableHelper.dispose(this);
        }

        @Override // io.reactivex.rxjava3.disposables.Disposable
        public boolean isDisposed() {
            return this.upstream.isDisposed();
        }

        @Override // io.reactivex.rxjava3.core.Observer
        public void onComplete() {
            DisposableHelper.dispose(this);
            this.downstream.onComplete();
        }

        @Override // io.reactivex.rxjava3.core.Observer
        public void onError(Throwable e) {
            DisposableHelper.dispose(this);
            this.downstream.onError(e);
        }

        @Override // io.reactivex.rxjava3.core.Observer
        public void onNext(R value) {
            this.downstream.onNext(value);
        }

        @Override // io.reactivex.rxjava3.core.Observer
        public void onSubscribe(Disposable d) {
            if (DisposableHelper.validate(this.upstream, d)) {
                this.upstream = d;
                this.downstream.onSubscribe(this);
            }
        }
    }

    /* renamed from: io.reactivex.rxjava3.internal.operators.observable.ObservablePublishSelector$a */
    /* loaded from: classes10.dex */
    public static final class C17521a<T> implements Observer<T> {

        /* renamed from: e */
        public final PublishSubject<T> f96727e;

        /* renamed from: f */
        public final AtomicReference<Disposable> f96728f;

        public C17521a(PublishSubject<T> subject, AtomicReference<Disposable> target) {
            this.f96727e = subject;
            this.f96728f = target;
        }

        @Override // io.reactivex.rxjava3.core.Observer
        public void onComplete() {
            this.f96727e.onComplete();
        }

        @Override // io.reactivex.rxjava3.core.Observer
        public void onError(Throwable e) {
            this.f96727e.onError(e);
        }

        @Override // io.reactivex.rxjava3.core.Observer
        public void onNext(T value) {
            this.f96727e.onNext(value);
        }

        @Override // io.reactivex.rxjava3.core.Observer
        public void onSubscribe(Disposable d) {
            DisposableHelper.setOnce(this.f96728f, d);
        }
    }

    public ObservablePublishSelector(final ObservableSource<T> source, final Function<? super Observable<T>, ? extends ObservableSource<R>> selector) {
        super(source);
        this.f96726e = selector;
    }

    @Override // io.reactivex.rxjava3.core.Observable
    public void subscribeActual(Observer<? super R> observer) {
        PublishSubject create = PublishSubject.create();
        try {
            ObservableSource<R> apply = this.f96726e.apply(create);
            Objects.requireNonNull(apply, "The selector returned a null ObservableSource");
            ObservableSource<R> observableSource = apply;
            TargetObserver targetObserver = new TargetObserver(observer);
            observableSource.subscribe(targetObserver);
            this.source.subscribe(new C17521a(create, targetObserver));
        } catch (Throwable th) {
            Exceptions.throwIfFatal(th);
            EmptyDisposable.error(th, observer);
        }
    }
}
