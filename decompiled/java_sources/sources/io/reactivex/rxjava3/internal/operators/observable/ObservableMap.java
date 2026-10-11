package io.reactivex.rxjava3.internal.operators.observable;

import io.reactivex.rxjava3.annotations.Nullable;
import io.reactivex.rxjava3.core.ObservableSource;
import io.reactivex.rxjava3.core.Observer;
import io.reactivex.rxjava3.functions.Function;
import io.reactivex.rxjava3.internal.observers.BasicFuseableObserver;
import java.util.Objects;

/* loaded from: classes10.dex */
public final class ObservableMap<T, U> extends AbstractC17568a<T, U> {

    /* renamed from: e */
    public final Function<? super T, ? extends U> f96692e;

    /* renamed from: io.reactivex.rxjava3.internal.operators.observable.ObservableMap$a */
    /* loaded from: classes10.dex */
    public static final class C17516a<T, U> extends BasicFuseableObserver<T, U> {

        /* renamed from: e */
        public final Function<? super T, ? extends U> f96693e;

        public C17516a(Observer<? super U> actual, Function<? super T, ? extends U> mapper) {
            super(actual);
            this.f96693e = mapper;
        }

        @Override // io.reactivex.rxjava3.core.Observer
        public void onNext(T t) {
            if (this.done) {
                return;
            }
            if (this.sourceMode != 0) {
                this.downstream.onNext(null);
                return;
            }
            try {
                U apply = this.f96693e.apply(t);
                Objects.requireNonNull(apply, "The mapper function returned a null value.");
                this.downstream.onNext(apply);
            } catch (Throwable th) {
                fail(th);
            }
        }

        @Override // io.reactivex.rxjava3.operators.SimpleQueue
        @Nullable
        public U poll() throws Throwable {
            T poll = this.f95167qd.poll();
            if (poll == null) {
                return null;
            }
            U apply = this.f96693e.apply(poll);
            Objects.requireNonNull(apply, "The mapper function returned a null value.");
            return apply;
        }

        @Override // io.reactivex.rxjava3.operators.QueueFuseable
        public int requestFusion(int mode) {
            return transitiveBoundaryFusion(mode);
        }
    }

    public ObservableMap(ObservableSource<T> source, Function<? super T, ? extends U> function) {
        super(source);
        this.f96692e = function;
    }

    @Override // io.reactivex.rxjava3.core.Observable
    public void subscribeActual(Observer<? super U> t) {
        this.source.subscribe(new C17516a(t, this.f96692e));
    }
}
