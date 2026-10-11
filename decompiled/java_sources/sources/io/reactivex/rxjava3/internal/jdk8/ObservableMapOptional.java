package io.reactivex.rxjava3.internal.jdk8;

import io.reactivex.rxjava3.core.Observable;
import io.reactivex.rxjava3.core.Observer;
import io.reactivex.rxjava3.functions.Function;
import io.reactivex.rxjava3.internal.observers.BasicFuseableObserver;
import java.util.Objects;
import java.util.Optional;

/* loaded from: classes10.dex */
public final class ObservableMapOptional<T, R> extends Observable<R> {

    /* renamed from: e */
    public final Observable<T> f95121e;

    /* renamed from: f */
    public final Function<? super T, Optional<? extends R>> f95122f;

    /* renamed from: io.reactivex.rxjava3.internal.jdk8.ObservableMapOptional$a */
    /* loaded from: classes10.dex */
    public static final class C17295a<T, R> extends BasicFuseableObserver<T, R> {

        /* renamed from: e */
        public final Function<? super T, Optional<? extends R>> f95123e;

        public C17295a(Observer<? super R> downstream, Function<? super T, Optional<? extends R>> mapper) {
            super(downstream);
            this.f95123e = mapper;
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
                Optional<? extends R> apply = this.f95123e.apply(t);
                Objects.requireNonNull(apply, "The mapper returned a null Optional");
                Optional<? extends R> optional = apply;
                if (optional.isPresent()) {
                    this.downstream.onNext(optional.get());
                }
            } catch (Throwable th) {
                fail(th);
            }
        }

        @Override // io.reactivex.rxjava3.operators.SimpleQueue
        public R poll() throws Throwable {
            Optional<? extends R> optional;
            do {
                T poll = this.f95167qd.poll();
                if (poll == null) {
                    return null;
                }
                Optional<? extends R> apply = this.f95123e.apply(poll);
                Objects.requireNonNull(apply, "The mapper returned a null Optional");
                optional = apply;
            } while (!optional.isPresent());
            return optional.get();
        }

        @Override // io.reactivex.rxjava3.operators.QueueFuseable
        public int requestFusion(int mode) {
            return transitiveBoundaryFusion(mode);
        }
    }

    public ObservableMapOptional(Observable<T> source, Function<? super T, Optional<? extends R>> mapper) {
        this.f95121e = source;
        this.f95122f = mapper;
    }

    @Override // io.reactivex.rxjava3.core.Observable
    public void subscribeActual(Observer<? super R> observer) {
        this.f95121e.subscribe(new C17295a(observer, this.f95122f));
    }
}
