package io.reactivex.rxjava3.internal.operators.observable;

import io.reactivex.rxjava3.annotations.Nullable;
import io.reactivex.rxjava3.core.ObservableSource;
import io.reactivex.rxjava3.core.Observer;
import io.reactivex.rxjava3.functions.Consumer;
import io.reactivex.rxjava3.internal.observers.BasicFuseableObserver;

/* loaded from: classes10.dex */
public final class ObservableDoAfterNext<T> extends AbstractC17568a<T, T> {

    /* renamed from: e */
    public final Consumer<? super T> f96523e;

    /* renamed from: io.reactivex.rxjava3.internal.operators.observable.ObservableDoAfterNext$a */
    /* loaded from: classes10.dex */
    public static final class C17485a<T> extends BasicFuseableObserver<T, T> {

        /* renamed from: e */
        public final Consumer<? super T> f96524e;

        public C17485a(Observer<? super T> actual, Consumer<? super T> onAfterNext) {
            super(actual);
            this.f96524e = onAfterNext;
        }

        @Override // io.reactivex.rxjava3.core.Observer
        public void onNext(T t) {
            this.downstream.onNext(t);
            if (this.sourceMode == 0) {
                try {
                    this.f96524e.accept(t);
                } catch (Throwable th) {
                    fail(th);
                }
            }
        }

        @Override // io.reactivex.rxjava3.operators.SimpleQueue
        @Nullable
        public T poll() throws Throwable {
            T poll = this.f95167qd.poll();
            if (poll != null) {
                this.f96524e.accept(poll);
            }
            return poll;
        }

        @Override // io.reactivex.rxjava3.operators.QueueFuseable
        public int requestFusion(int mode) {
            return transitiveBoundaryFusion(mode);
        }
    }

    public ObservableDoAfterNext(ObservableSource<T> source, Consumer<? super T> onAfterNext) {
        super(source);
        this.f96523e = onAfterNext;
    }

    @Override // io.reactivex.rxjava3.core.Observable
    public void subscribeActual(Observer<? super T> observer) {
        this.source.subscribe(new C17485a(observer, this.f96523e));
    }
}
