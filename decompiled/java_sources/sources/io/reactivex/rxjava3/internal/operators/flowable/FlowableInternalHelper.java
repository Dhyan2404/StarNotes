package io.reactivex.rxjava3.internal.operators.flowable;

import io.reactivex.rxjava3.core.Emitter;
import io.reactivex.rxjava3.core.Flowable;
import io.reactivex.rxjava3.core.Scheduler;
import io.reactivex.rxjava3.flowables.ConnectableFlowable;
import io.reactivex.rxjava3.functions.Action;
import io.reactivex.rxjava3.functions.BiConsumer;
import io.reactivex.rxjava3.functions.BiFunction;
import io.reactivex.rxjava3.functions.Consumer;
import io.reactivex.rxjava3.functions.Function;
import io.reactivex.rxjava3.functions.Supplier;
import io.reactivex.rxjava3.internal.functions.Functions;
import java.util.Objects;
import java.util.concurrent.TimeUnit;
import org.reactivestreams.Publisher;
import org.reactivestreams.Subscriber;
import org.reactivestreams.Subscription;

/* loaded from: classes10.dex */
public final class FlowableInternalHelper {

    /* loaded from: classes10.dex */
    public enum RequestMax implements Consumer<Subscription> {
        INSTANCE;

        @Override // io.reactivex.rxjava3.functions.Consumer
        public void accept(Subscription t) {
            t.request(Long.MAX_VALUE);
        }
    }

    /* renamed from: io.reactivex.rxjava3.internal.operators.flowable.FlowableInternalHelper$a */
    /* loaded from: classes10.dex */
    public static final class C17364a<T> implements Supplier<ConnectableFlowable<T>> {

        /* renamed from: e */
        public final Flowable<T> f95651e;

        /* renamed from: f */
        public final int f95652f;

        /* renamed from: g */
        public final boolean f95653g;

        public C17364a(Flowable<T> parent, int bufferSize, boolean eagerTruncate) {
            this.f95651e = parent;
            this.f95652f = bufferSize;
            this.f95653g = eagerTruncate;
        }

        @Override // io.reactivex.rxjava3.functions.Supplier
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public ConnectableFlowable<T> get() {
            return this.f95651e.replay(this.f95652f, this.f95653g);
        }
    }

    /* renamed from: io.reactivex.rxjava3.internal.operators.flowable.FlowableInternalHelper$b */
    /* loaded from: classes10.dex */
    public static final class C17365b<T> implements Supplier<ConnectableFlowable<T>> {

        /* renamed from: e */
        public final Flowable<T> f95654e;

        /* renamed from: f */
        public final int f95655f;

        /* renamed from: g */
        public final long f95656g;

        /* renamed from: h */
        public final TimeUnit f95657h;

        /* renamed from: i */
        public final Scheduler f95658i;

        /* renamed from: j */
        public final boolean f95659j;

        public C17365b(Flowable<T> parent, int bufferSize, long time, TimeUnit unit, Scheduler scheduler, boolean eagerTruncate) {
            this.f95654e = parent;
            this.f95655f = bufferSize;
            this.f95656g = time;
            this.f95657h = unit;
            this.f95658i = scheduler;
            this.f95659j = eagerTruncate;
        }

        @Override // io.reactivex.rxjava3.functions.Supplier
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public ConnectableFlowable<T> get() {
            return this.f95654e.replay(this.f95655f, this.f95656g, this.f95657h, this.f95658i, this.f95659j);
        }
    }

    /* renamed from: io.reactivex.rxjava3.internal.operators.flowable.FlowableInternalHelper$c */
    /* loaded from: classes10.dex */
    public static final class C17366c<T, U> implements Function<T, Publisher<U>> {

        /* renamed from: e */
        public final Function<? super T, ? extends Iterable<? extends U>> f95660e;

        public C17366c(Function<? super T, ? extends Iterable<? extends U>> mapper) {
            this.f95660e = mapper;
        }

        @Override // io.reactivex.rxjava3.functions.Function
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public Publisher<U> apply(T t) throws Throwable {
            Iterable<? extends U> apply = this.f95660e.apply(t);
            Objects.requireNonNull(apply, "The mapper returned a null Iterable");
            return new FlowableFromIterable(apply);
        }
    }

    /* renamed from: io.reactivex.rxjava3.internal.operators.flowable.FlowableInternalHelper$d */
    /* loaded from: classes10.dex */
    public static final class C17367d<U, R, T> implements Function<U, R> {

        /* renamed from: e */
        public final BiFunction<? super T, ? super U, ? extends R> f95661e;

        /* renamed from: f */
        public final T f95662f;

        public C17367d(BiFunction<? super T, ? super U, ? extends R> combiner, T t) {
            this.f95661e = combiner;
            this.f95662f = t;
        }

        @Override // io.reactivex.rxjava3.functions.Function
        public R apply(U u) throws Throwable {
            return this.f95661e.apply(this.f95662f, u);
        }
    }

    /* renamed from: io.reactivex.rxjava3.internal.operators.flowable.FlowableInternalHelper$e */
    /* loaded from: classes10.dex */
    public static final class C17368e<T, R, U> implements Function<T, Publisher<R>> {

        /* renamed from: e */
        public final BiFunction<? super T, ? super U, ? extends R> f95663e;

        /* renamed from: f */
        public final Function<? super T, ? extends Publisher<? extends U>> f95664f;

        public C17368e(BiFunction<? super T, ? super U, ? extends R> combiner, Function<? super T, ? extends Publisher<? extends U>> mapper) {
            this.f95663e = combiner;
            this.f95664f = mapper;
        }

        @Override // io.reactivex.rxjava3.functions.Function
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public Publisher<R> apply(final T t) throws Throwable {
            Publisher<? extends U> apply = this.f95664f.apply(t);
            Objects.requireNonNull(apply, "The mapper returned a null Publisher");
            return new FlowableMapPublisher(apply, new C17367d(this.f95663e, t));
        }
    }

    /* renamed from: io.reactivex.rxjava3.internal.operators.flowable.FlowableInternalHelper$f */
    /* loaded from: classes10.dex */
    public static final class C17369f<T, U> implements Function<T, Publisher<T>> {

        /* renamed from: e */
        public final Function<? super T, ? extends Publisher<U>> f95665e;

        public C17369f(Function<? super T, ? extends Publisher<U>> itemDelay) {
            this.f95665e = itemDelay;
        }

        @Override // io.reactivex.rxjava3.functions.Function
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public Publisher<T> apply(final T v) throws Throwable {
            Publisher<U> apply = this.f95665e.apply(v);
            Objects.requireNonNull(apply, "The itemDelay returned a null Publisher");
            return new FlowableTakePublisher(apply, 1L).map(Functions.justFunction(v)).defaultIfEmpty(v);
        }
    }

    /* renamed from: io.reactivex.rxjava3.internal.operators.flowable.FlowableInternalHelper$g */
    /* loaded from: classes10.dex */
    public static final class C17370g<T> implements Supplier<ConnectableFlowable<T>> {

        /* renamed from: e */
        public final Flowable<T> f95666e;

        public C17370g(Flowable<T> parent) {
            this.f95666e = parent;
        }

        @Override // io.reactivex.rxjava3.functions.Supplier
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public ConnectableFlowable<T> get() {
            return this.f95666e.replay();
        }
    }

    /* renamed from: io.reactivex.rxjava3.internal.operators.flowable.FlowableInternalHelper$h */
    /* loaded from: classes10.dex */
    public static final class C17371h<T, S> implements BiFunction<S, Emitter<T>, S> {

        /* renamed from: e */
        public final BiConsumer<S, Emitter<T>> f95667e;

        public C17371h(BiConsumer<S, Emitter<T>> consumer) {
            this.f95667e = consumer;
        }

        @Override // io.reactivex.rxjava3.functions.BiFunction
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public S apply(S t1, Emitter<T> t2) throws Throwable {
            this.f95667e.accept(t1, t2);
            return t1;
        }
    }

    /* renamed from: io.reactivex.rxjava3.internal.operators.flowable.FlowableInternalHelper$i */
    /* loaded from: classes10.dex */
    public static final class C17372i<T, S> implements BiFunction<S, Emitter<T>, S> {

        /* renamed from: e */
        public final Consumer<Emitter<T>> f95668e;

        public C17372i(Consumer<Emitter<T>> consumer) {
            this.f95668e = consumer;
        }

        @Override // io.reactivex.rxjava3.functions.BiFunction
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public S apply(S t1, Emitter<T> t2) throws Throwable {
            this.f95668e.accept(t2);
            return t1;
        }
    }

    /* renamed from: io.reactivex.rxjava3.internal.operators.flowable.FlowableInternalHelper$j */
    /* loaded from: classes10.dex */
    public static final class C17373j<T> implements Action {

        /* renamed from: e */
        public final Subscriber<T> f95669e;

        public C17373j(Subscriber<T> subscriber) {
            this.f95669e = subscriber;
        }

        @Override // io.reactivex.rxjava3.functions.Action
        public void run() {
            this.f95669e.onComplete();
        }
    }

    /* renamed from: io.reactivex.rxjava3.internal.operators.flowable.FlowableInternalHelper$k */
    /* loaded from: classes10.dex */
    public static final class C17374k<T> implements Consumer<Throwable> {

        /* renamed from: e */
        public final Subscriber<T> f95670e;

        public C17374k(Subscriber<T> subscriber) {
            this.f95670e = subscriber;
        }

        @Override // io.reactivex.rxjava3.functions.Consumer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public void accept(Throwable v) {
            this.f95670e.onError(v);
        }
    }

    /* renamed from: io.reactivex.rxjava3.internal.operators.flowable.FlowableInternalHelper$l */
    /* loaded from: classes10.dex */
    public static final class C17375l<T> implements Consumer<T> {

        /* renamed from: e */
        public final Subscriber<T> f95671e;

        public C17375l(Subscriber<T> subscriber) {
            this.f95671e = subscriber;
        }

        @Override // io.reactivex.rxjava3.functions.Consumer
        public void accept(T v) {
            this.f95671e.onNext(v);
        }
    }

    /* renamed from: io.reactivex.rxjava3.internal.operators.flowable.FlowableInternalHelper$m */
    /* loaded from: classes10.dex */
    public static final class C17376m<T> implements Supplier<ConnectableFlowable<T>> {

        /* renamed from: e */
        public final Flowable<T> f95672e;

        /* renamed from: f */
        public final long f95673f;

        /* renamed from: g */
        public final TimeUnit f95674g;

        /* renamed from: h */
        public final Scheduler f95675h;

        /* renamed from: i */
        public final boolean f95676i;

        public C17376m(Flowable<T> parent, long time, TimeUnit unit, Scheduler scheduler, boolean eagerTruncate) {
            this.f95672e = parent;
            this.f95673f = time;
            this.f95674g = unit;
            this.f95675h = scheduler;
            this.f95676i = eagerTruncate;
        }

        @Override // io.reactivex.rxjava3.functions.Supplier
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public ConnectableFlowable<T> get() {
            return this.f95672e.replay(this.f95673f, this.f95674g, this.f95675h, this.f95676i);
        }
    }

    public FlowableInternalHelper() {
        throw new IllegalStateException("No instances!");
    }

    public static <T, U> Function<T, Publisher<U>> flatMapIntoIterable(final Function<? super T, ? extends Iterable<? extends U>> mapper) {
        return new C17366c(mapper);
    }

    public static <T, U, R> Function<T, Publisher<R>> flatMapWithCombiner(final Function<? super T, ? extends Publisher<? extends U>> mapper, final BiFunction<? super T, ? super U, ? extends R> combiner) {
        return new C17368e(combiner, mapper);
    }

    public static <T, U> Function<T, Publisher<T>> itemDelay(final Function<? super T, ? extends Publisher<U>> itemDelay) {
        return new C17369f(itemDelay);
    }

    public static <T> Supplier<ConnectableFlowable<T>> replaySupplier(final Flowable<T> parent) {
        return new C17370g(parent);
    }

    public static <T, S> BiFunction<S, Emitter<T>, S> simpleBiGenerator(BiConsumer<S, Emitter<T>> consumer) {
        return new C17371h(consumer);
    }

    public static <T, S> BiFunction<S, Emitter<T>, S> simpleGenerator(Consumer<Emitter<T>> consumer) {
        return new C17372i(consumer);
    }

    public static <T> Action subscriberOnComplete(Subscriber<T> subscriber) {
        return new C17373j(subscriber);
    }

    public static <T> Consumer<Throwable> subscriberOnError(Subscriber<T> subscriber) {
        return new C17374k(subscriber);
    }

    public static <T> Consumer<T> subscriberOnNext(Subscriber<T> subscriber) {
        return new C17375l(subscriber);
    }

    public static <T> Supplier<ConnectableFlowable<T>> replaySupplier(final Flowable<T> parent, final int bufferSize, boolean eagerTruncate) {
        return new C17364a(parent, bufferSize, eagerTruncate);
    }

    public static <T> Supplier<ConnectableFlowable<T>> replaySupplier(final Flowable<T> parent, final int bufferSize, final long time, final TimeUnit unit, final Scheduler scheduler, boolean eagerTruncate) {
        return new C17365b(parent, bufferSize, time, unit, scheduler, eagerTruncate);
    }

    public static <T> Supplier<ConnectableFlowable<T>> replaySupplier(final Flowable<T> parent, final long time, final TimeUnit unit, final Scheduler scheduler, boolean eagerTruncate) {
        return new C17376m(parent, time, unit, scheduler, eagerTruncate);
    }
}
