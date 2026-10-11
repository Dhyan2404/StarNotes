package io.reactivex.rxjava3.internal.operators.observable;

import io.reactivex.rxjava3.annotations.Nullable;
import io.reactivex.rxjava3.core.ObservableSource;
import io.reactivex.rxjava3.core.Observer;
import io.reactivex.rxjava3.functions.Predicate;
import io.reactivex.rxjava3.internal.observers.BasicFuseableObserver;

/* loaded from: classes10.dex */
public final class ObservableFilter<T> extends AbstractC17568a<T, T> {

    /* renamed from: e */
    public final Predicate<? super T> f96567e;

    /* renamed from: io.reactivex.rxjava3.internal.operators.observable.ObservableFilter$a */
    /* loaded from: classes10.dex */
    public static final class C17490a<T> extends BasicFuseableObserver<T, T> {

        /* renamed from: e */
        public final Predicate<? super T> f96568e;

        public C17490a(Observer<? super T> actual, Predicate<? super T> filter) {
            super(actual);
            this.f96568e = filter;
        }

        @Override // io.reactivex.rxjava3.core.Observer
        public void onNext(T t) {
            if (this.sourceMode != 0) {
                this.downstream.onNext(null);
                return;
            }
            try {
                if (this.f96568e.test(t)) {
                    this.downstream.onNext(t);
                }
            } catch (Throwable th) {
                fail(th);
            }
        }

        @Override // io.reactivex.rxjava3.operators.SimpleQueue
        @Nullable
        public T poll() throws Throwable {
            T poll;
            do {
                poll = this.f95167qd.poll();
                if (poll == null) {
                    break;
                }
            } while (!this.f96568e.test(poll));
            return poll;
        }

        @Override // io.reactivex.rxjava3.operators.QueueFuseable
        public int requestFusion(int mode) {
            return transitiveBoundaryFusion(mode);
        }
    }

    public ObservableFilter(ObservableSource<T> source, Predicate<? super T> predicate) {
        super(source);
        this.f96567e = predicate;
    }

    @Override // io.reactivex.rxjava3.core.Observable
    public void subscribeActual(Observer<? super T> observer) {
        this.source.subscribe(new C17490a(observer, this.f96567e));
    }
}
