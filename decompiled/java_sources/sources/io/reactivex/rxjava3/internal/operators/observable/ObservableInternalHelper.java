package io.reactivex.rxjava3.internal.operators.observable;

import io.reactivex.rxjava3.core.Emitter;
import io.reactivex.rxjava3.core.Observable;
import io.reactivex.rxjava3.core.ObservableSource;
import io.reactivex.rxjava3.core.Observer;
import io.reactivex.rxjava3.core.Scheduler;
import io.reactivex.rxjava3.functions.Action;
import io.reactivex.rxjava3.functions.BiConsumer;
import io.reactivex.rxjava3.functions.BiFunction;
import io.reactivex.rxjava3.functions.Consumer;
import io.reactivex.rxjava3.functions.Function;
import io.reactivex.rxjava3.functions.Supplier;
import io.reactivex.rxjava3.internal.functions.Functions;
import io.reactivex.rxjava3.observables.ConnectableObservable;
import java.util.Objects;
import java.util.concurrent.TimeUnit;

/* loaded from: classes10.dex */
public final class ObservableInternalHelper {

    /* loaded from: classes10.dex */
    public enum MapToInt implements Function<Object, Object> {
        INSTANCE;

        @Override // io.reactivex.rxjava3.functions.Function
        public Object apply(Object t) {
            return 0;
        }
    }

    /* renamed from: io.reactivex.rxjava3.internal.operators.observable.ObservableInternalHelper$a */
    /* loaded from: classes10.dex */
    public static final class C17501a<T> implements Supplier<ConnectableObservable<T>> {

        /* renamed from: e */
        public final Observable<T> f96640e;

        /* renamed from: f */
        public final int f96641f;

        /* renamed from: g */
        public final boolean f96642g;

        public C17501a(Observable<T> parent, int bufferSize, boolean eagerTruncate) {
            this.f96640e = parent;
            this.f96641f = bufferSize;
            this.f96642g = eagerTruncate;
        }

        @Override // io.reactivex.rxjava3.functions.Supplier
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public ConnectableObservable<T> get() {
            return this.f96640e.replay(this.f96641f, this.f96642g);
        }
    }

    /* renamed from: io.reactivex.rxjava3.internal.operators.observable.ObservableInternalHelper$b */
    /* loaded from: classes10.dex */
    public static final class C17502b<T> implements Supplier<ConnectableObservable<T>> {

        /* renamed from: e */
        public final Observable<T> f96643e;

        /* renamed from: f */
        public final int f96644f;

        /* renamed from: g */
        public final long f96645g;

        /* renamed from: h */
        public final TimeUnit f96646h;

        /* renamed from: i */
        public final Scheduler f96647i;

        /* renamed from: j */
        public final boolean f96648j;

        public C17502b(Observable<T> parent, int bufferSize, long time, TimeUnit unit, Scheduler scheduler, boolean eagerTruncate) {
            this.f96643e = parent;
            this.f96644f = bufferSize;
            this.f96645g = time;
            this.f96646h = unit;
            this.f96647i = scheduler;
            this.f96648j = eagerTruncate;
        }

        @Override // io.reactivex.rxjava3.functions.Supplier
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public ConnectableObservable<T> get() {
            return this.f96643e.replay(this.f96644f, this.f96645g, this.f96646h, this.f96647i, this.f96648j);
        }
    }

    /* renamed from: io.reactivex.rxjava3.internal.operators.observable.ObservableInternalHelper$c */
    /* loaded from: classes10.dex */
    public static final class C17503c<T, U> implements Function<T, ObservableSource<U>> {

        /* renamed from: e */
        public final Function<? super T, ? extends Iterable<? extends U>> f96649e;

        public C17503c(Function<? super T, ? extends Iterable<? extends U>> mapper) {
            this.f96649e = mapper;
        }

        @Override // io.reactivex.rxjava3.functions.Function
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public ObservableSource<U> apply(T t) throws Throwable {
            Iterable<? extends U> apply = this.f96649e.apply(t);
            Objects.requireNonNull(apply, "The mapper returned a null Iterable");
            return new ObservableFromIterable(apply);
        }
    }

    /* renamed from: io.reactivex.rxjava3.internal.operators.observable.ObservableInternalHelper$d */
    /* loaded from: classes10.dex */
    public static final class C17504d<U, R, T> implements Function<U, R> {

        /* renamed from: e */
        public final BiFunction<? super T, ? super U, ? extends R> f96650e;

        /* renamed from: f */
        public final T f96651f;

        public C17504d(BiFunction<? super T, ? super U, ? extends R> combiner, T t) {
            this.f96650e = combiner;
            this.f96651f = t;
        }

        @Override // io.reactivex.rxjava3.functions.Function
        public R apply(U u) throws Throwable {
            return this.f96650e.apply(this.f96651f, u);
        }
    }

    /* renamed from: io.reactivex.rxjava3.internal.operators.observable.ObservableInternalHelper$e */
    /* loaded from: classes10.dex */
    public static final class C17505e<T, R, U> implements Function<T, ObservableSource<R>> {

        /* renamed from: e */
        public final BiFunction<? super T, ? super U, ? extends R> f96652e;

        /* renamed from: f */
        public final Function<? super T, ? extends ObservableSource<? extends U>> f96653f;

        public C17505e(BiFunction<? super T, ? super U, ? extends R> combiner, Function<? super T, ? extends ObservableSource<? extends U>> mapper) {
            this.f96652e = combiner;
            this.f96653f = mapper;
        }

        @Override // io.reactivex.rxjava3.functions.Function
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public ObservableSource<R> apply(final T t) throws Throwable {
            ObservableSource<? extends U> apply = this.f96653f.apply(t);
            Objects.requireNonNull(apply, "The mapper returned a null ObservableSource");
            return new ObservableMap(apply, new C17504d(this.f96652e, t));
        }
    }

    /* renamed from: io.reactivex.rxjava3.internal.operators.observable.ObservableInternalHelper$f */
    /* loaded from: classes10.dex */
    public static final class C17506f<T, U> implements Function<T, ObservableSource<T>> {

        /* renamed from: e */
        public final Function<? super T, ? extends ObservableSource<U>> f96654e;

        public C17506f(Function<? super T, ? extends ObservableSource<U>> itemDelay) {
            this.f96654e = itemDelay;
        }

        @Override // io.reactivex.rxjava3.functions.Function
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public ObservableSource<T> apply(final T v) throws Throwable {
            ObservableSource<U> apply = this.f96654e.apply(v);
            Objects.requireNonNull(apply, "The itemDelay returned a null ObservableSource");
            return new ObservableTake(apply, 1L).map(Functions.justFunction(v)).defaultIfEmpty(v);
        }
    }

    /* renamed from: io.reactivex.rxjava3.internal.operators.observable.ObservableInternalHelper$g */
    /* loaded from: classes10.dex */
    public static final class C17507g<T> implements Action {

        /* renamed from: e */
        public final Observer<T> f96655e;

        public C17507g(Observer<T> observer) {
            this.f96655e = observer;
        }

        @Override // io.reactivex.rxjava3.functions.Action
        public void run() {
            this.f96655e.onComplete();
        }
    }

    /* renamed from: io.reactivex.rxjava3.internal.operators.observable.ObservableInternalHelper$h */
    /* loaded from: classes10.dex */
    public static final class C17508h<T> implements Consumer<Throwable> {

        /* renamed from: e */
        public final Observer<T> f96656e;

        public C17508h(Observer<T> observer) {
            this.f96656e = observer;
        }

        @Override // io.reactivex.rxjava3.functions.Consumer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public void accept(Throwable v) {
            this.f96656e.onError(v);
        }
    }

    /* renamed from: io.reactivex.rxjava3.internal.operators.observable.ObservableInternalHelper$i */
    /* loaded from: classes10.dex */
    public static final class C17509i<T> implements Consumer<T> {

        /* renamed from: e */
        public final Observer<T> f96657e;

        public C17509i(Observer<T> observer) {
            this.f96657e = observer;
        }

        @Override // io.reactivex.rxjava3.functions.Consumer
        public void accept(T v) {
            this.f96657e.onNext(v);
        }
    }

    /* renamed from: io.reactivex.rxjava3.internal.operators.observable.ObservableInternalHelper$j */
    /* loaded from: classes10.dex */
    public static final class C17510j<T> implements Supplier<ConnectableObservable<T>> {

        /* renamed from: e */
        public final Observable<T> f96658e;

        public C17510j(Observable<T> parent) {
            this.f96658e = parent;
        }

        @Override // io.reactivex.rxjava3.functions.Supplier
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public ConnectableObservable<T> get() {
            return this.f96658e.replay();
        }
    }

    /* renamed from: io.reactivex.rxjava3.internal.operators.observable.ObservableInternalHelper$k */
    /* loaded from: classes10.dex */
    public static final class C17511k<T, S> implements BiFunction<S, Emitter<T>, S> {

        /* renamed from: e */
        public final BiConsumer<S, Emitter<T>> f96659e;

        public C17511k(BiConsumer<S, Emitter<T>> consumer) {
            this.f96659e = consumer;
        }

        @Override // io.reactivex.rxjava3.functions.BiFunction
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public S apply(S t1, Emitter<T> t2) throws Throwable {
            this.f96659e.accept(t1, t2);
            return t1;
        }
    }

    /* renamed from: io.reactivex.rxjava3.internal.operators.observable.ObservableInternalHelper$l */
    /* loaded from: classes10.dex */
    public static final class C17512l<T, S> implements BiFunction<S, Emitter<T>, S> {

        /* renamed from: e */
        public final Consumer<Emitter<T>> f96660e;

        public C17512l(Consumer<Emitter<T>> consumer) {
            this.f96660e = consumer;
        }

        @Override // io.reactivex.rxjava3.functions.BiFunction
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public S apply(S t1, Emitter<T> t2) throws Throwable {
            this.f96660e.accept(t2);
            return t1;
        }
    }

    /* renamed from: io.reactivex.rxjava3.internal.operators.observable.ObservableInternalHelper$m */
    /* loaded from: classes10.dex */
    public static final class C17513m<T> implements Supplier<ConnectableObservable<T>> {

        /* renamed from: e */
        public final Observable<T> f96661e;

        /* renamed from: f */
        public final long f96662f;

        /* renamed from: g */
        public final TimeUnit f96663g;

        /* renamed from: h */
        public final Scheduler f96664h;

        /* renamed from: i */
        public final boolean f96665i;

        public C17513m(Observable<T> parent, long time, TimeUnit unit, Scheduler scheduler, boolean eagerTruncate) {
            this.f96661e = parent;
            this.f96662f = time;
            this.f96663g = unit;
            this.f96664h = scheduler;
            this.f96665i = eagerTruncate;
        }

        @Override // io.reactivex.rxjava3.functions.Supplier
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public ConnectableObservable<T> get() {
            return this.f96661e.replay(this.f96662f, this.f96663g, this.f96664h, this.f96665i);
        }
    }

    public ObservableInternalHelper() {
        throw new IllegalStateException("No instances!");
    }

    public static <T, U> Function<T, ObservableSource<U>> flatMapIntoIterable(final Function<? super T, ? extends Iterable<? extends U>> mapper) {
        return new C17503c(mapper);
    }

    public static <T, U, R> Function<T, ObservableSource<R>> flatMapWithCombiner(final Function<? super T, ? extends ObservableSource<? extends U>> mapper, final BiFunction<? super T, ? super U, ? extends R> combiner) {
        return new C17505e(combiner, mapper);
    }

    public static <T, U> Function<T, ObservableSource<T>> itemDelay(final Function<? super T, ? extends ObservableSource<U>> itemDelay) {
        return new C17506f(itemDelay);
    }

    public static <T> Action observerOnComplete(Observer<T> observer) {
        return new C17507g(observer);
    }

    public static <T> Consumer<Throwable> observerOnError(Observer<T> observer) {
        return new C17508h(observer);
    }

    public static <T> Consumer<T> observerOnNext(Observer<T> observer) {
        return new C17509i(observer);
    }

    public static <T> Supplier<ConnectableObservable<T>> replaySupplier(final Observable<T> parent) {
        return new C17510j(parent);
    }

    public static <T, S> BiFunction<S, Emitter<T>, S> simpleBiGenerator(BiConsumer<S, Emitter<T>> consumer) {
        return new C17511k(consumer);
    }

    public static <T, S> BiFunction<S, Emitter<T>, S> simpleGenerator(Consumer<Emitter<T>> consumer) {
        return new C17512l(consumer);
    }

    public static <T> Supplier<ConnectableObservable<T>> replaySupplier(final Observable<T> parent, final int bufferSize, boolean eagerTruncate) {
        return new C17501a(parent, bufferSize, eagerTruncate);
    }

    public static <T> Supplier<ConnectableObservable<T>> replaySupplier(final Observable<T> parent, final int bufferSize, final long time, final TimeUnit unit, final Scheduler scheduler, boolean eagerTruncate) {
        return new C17502b(parent, bufferSize, time, unit, scheduler, eagerTruncate);
    }

    public static <T> Supplier<ConnectableObservable<T>> replaySupplier(final Observable<T> parent, final long time, final TimeUnit unit, final Scheduler scheduler, boolean eagerTruncate) {
        return new C17513m(parent, time, unit, scheduler, eagerTruncate);
    }
}
