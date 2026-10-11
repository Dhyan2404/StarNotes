package io.reactivex.rxjava3.internal.operators.observable;

import io.reactivex.rxjava3.annotations.Nullable;
import io.reactivex.rxjava3.core.ObservableSource;
import io.reactivex.rxjava3.core.Observer;
import io.reactivex.rxjava3.functions.BiPredicate;
import io.reactivex.rxjava3.functions.Function;
import io.reactivex.rxjava3.internal.observers.BasicFuseableObserver;

/* loaded from: classes10.dex */
public final class ObservableDistinctUntilChanged<T, K> extends AbstractC17568a<T, T> {

    /* renamed from: e */
    public final Function<? super T, K> f96517e;

    /* renamed from: f */
    public final BiPredicate<? super K, ? super K> f96518f;

    /* renamed from: io.reactivex.rxjava3.internal.operators.observable.ObservableDistinctUntilChanged$a */
    /* loaded from: classes10.dex */
    public static final class C17484a<T, K> extends BasicFuseableObserver<T, T> {

        /* renamed from: e */
        public final Function<? super T, K> f96519e;

        /* renamed from: f */
        public final BiPredicate<? super K, ? super K> f96520f;

        /* renamed from: g */
        public K f96521g;

        /* renamed from: h */
        public boolean f96522h;

        public C17484a(Observer<? super T> actual, Function<? super T, K> keySelector, BiPredicate<? super K, ? super K> comparer) {
            super(actual);
            this.f96519e = keySelector;
            this.f96520f = comparer;
        }

        @Override // io.reactivex.rxjava3.core.Observer
        public void onNext(T t) {
            if (this.done) {
                return;
            }
            if (this.sourceMode != 0) {
                this.downstream.onNext(t);
                return;
            }
            try {
                K apply = this.f96519e.apply(t);
                if (this.f96522h) {
                    boolean test = this.f96520f.test(this.f96521g, apply);
                    this.f96521g = apply;
                    if (test) {
                        return;
                    }
                } else {
                    this.f96522h = true;
                    this.f96521g = apply;
                }
                this.downstream.onNext(t);
            } catch (Throwable th) {
                fail(th);
            }
        }

        @Override // io.reactivex.rxjava3.operators.SimpleQueue
        @Nullable
        public T poll() throws Throwable {
            while (true) {
                T poll = this.f95167qd.poll();
                if (poll == null) {
                    return null;
                }
                K apply = this.f96519e.apply(poll);
                if (!this.f96522h) {
                    this.f96522h = true;
                    this.f96521g = apply;
                    return poll;
                }
                if (!this.f96520f.test(this.f96521g, apply)) {
                    this.f96521g = apply;
                    return poll;
                }
                this.f96521g = apply;
            }
        }

        @Override // io.reactivex.rxjava3.operators.QueueFuseable
        public int requestFusion(int mode) {
            return transitiveBoundaryFusion(mode);
        }
    }

    public ObservableDistinctUntilChanged(ObservableSource<T> source, Function<? super T, K> keySelector, BiPredicate<? super K, ? super K> comparer) {
        super(source);
        this.f96517e = keySelector;
        this.f96518f = comparer;
    }

    @Override // io.reactivex.rxjava3.core.Observable
    public void subscribeActual(Observer<? super T> observer) {
        this.source.subscribe(new C17484a(observer, this.f96517e, this.f96518f));
    }
}
