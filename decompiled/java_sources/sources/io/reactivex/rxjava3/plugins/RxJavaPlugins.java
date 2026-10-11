package io.reactivex.rxjava3.plugins;

import io.reactivex.rxjava3.annotations.NonNull;
import io.reactivex.rxjava3.annotations.Nullable;
import io.reactivex.rxjava3.core.Completable;
import io.reactivex.rxjava3.core.CompletableObserver;
import io.reactivex.rxjava3.core.Flowable;
import io.reactivex.rxjava3.core.Maybe;
import io.reactivex.rxjava3.core.MaybeObserver;
import io.reactivex.rxjava3.core.Observable;
import io.reactivex.rxjava3.core.Observer;
import io.reactivex.rxjava3.core.Scheduler;
import io.reactivex.rxjava3.core.Single;
import io.reactivex.rxjava3.core.SingleObserver;
import io.reactivex.rxjava3.exceptions.CompositeException;
import io.reactivex.rxjava3.exceptions.MissingBackpressureException;
import io.reactivex.rxjava3.exceptions.OnErrorNotImplementedException;
import io.reactivex.rxjava3.exceptions.QueueOverflowException;
import io.reactivex.rxjava3.exceptions.UndeliverableException;
import io.reactivex.rxjava3.flowables.ConnectableFlowable;
import io.reactivex.rxjava3.functions.BiFunction;
import io.reactivex.rxjava3.functions.BooleanSupplier;
import io.reactivex.rxjava3.functions.Consumer;
import io.reactivex.rxjava3.functions.Function;
import io.reactivex.rxjava3.functions.Supplier;
import io.reactivex.rxjava3.internal.schedulers.ComputationScheduler;
import io.reactivex.rxjava3.internal.schedulers.ExecutorScheduler;
import io.reactivex.rxjava3.internal.schedulers.IoScheduler;
import io.reactivex.rxjava3.internal.schedulers.NewThreadScheduler;
import io.reactivex.rxjava3.internal.schedulers.SingleScheduler;
import io.reactivex.rxjava3.internal.util.ExceptionHelper;
import io.reactivex.rxjava3.observables.ConnectableObservable;
import io.reactivex.rxjava3.parallel.ParallelFlowable;
import java.util.Objects;
import java.util.concurrent.Executor;
import java.util.concurrent.ThreadFactory;
import org.reactivestreams.Subscriber;

/* loaded from: classes10.dex */
public final class RxJavaPlugins {

    /* renamed from: A */
    public static volatile boolean f97469A;

    /* renamed from: a */
    @Nullable
    public static volatile Consumer<? super Throwable> f97470a;

    /* renamed from: b */
    @Nullable
    public static volatile Function<? super Runnable, ? extends Runnable> f97471b;

    /* renamed from: c */
    @Nullable
    public static volatile Function<? super Supplier<Scheduler>, ? extends Scheduler> f97472c;

    /* renamed from: d */
    @Nullable
    public static volatile Function<? super Supplier<Scheduler>, ? extends Scheduler> f97473d;

    /* renamed from: e */
    @Nullable
    public static volatile Function<? super Supplier<Scheduler>, ? extends Scheduler> f97474e;

    /* renamed from: f */
    @Nullable
    public static volatile Function<? super Supplier<Scheduler>, ? extends Scheduler> f97475f;

    /* renamed from: g */
    @Nullable
    public static volatile Function<? super Scheduler, ? extends Scheduler> f97476g;

    /* renamed from: h */
    @Nullable
    public static volatile Function<? super Scheduler, ? extends Scheduler> f97477h;

    /* renamed from: i */
    @Nullable
    public static volatile Function<? super Scheduler, ? extends Scheduler> f97478i;

    /* renamed from: j */
    @Nullable
    public static volatile Function<? super Scheduler, ? extends Scheduler> f97479j;

    /* renamed from: k */
    @Nullable
    public static volatile Function<? super Flowable, ? extends Flowable> f97480k;

    /* renamed from: l */
    @Nullable
    public static volatile Function<? super ConnectableFlowable, ? extends ConnectableFlowable> f97481l;

    /* renamed from: m */
    @Nullable
    public static volatile Function<? super Observable, ? extends Observable> f97482m;

    /* renamed from: n */
    @Nullable
    public static volatile Function<? super ConnectableObservable, ? extends ConnectableObservable> f97483n;

    /* renamed from: o */
    @Nullable
    public static volatile Function<? super Maybe, ? extends Maybe> f97484o;

    /* renamed from: p */
    @Nullable
    public static volatile Function<? super Single, ? extends Single> f97485p;

    /* renamed from: q */
    @Nullable
    public static volatile Function<? super Completable, ? extends Completable> f97486q;

    /* renamed from: r */
    @Nullable
    public static volatile Function<? super ParallelFlowable, ? extends ParallelFlowable> f97487r;

    /* renamed from: s */
    @Nullable
    public static volatile BiFunction<? super Flowable, ? super Subscriber, ? extends Subscriber> f97488s;

    /* renamed from: t */
    @Nullable
    public static volatile BiFunction<? super Maybe, ? super MaybeObserver, ? extends MaybeObserver> f97489t;

    /* renamed from: u */
    @Nullable
    public static volatile BiFunction<? super Observable, ? super Observer, ? extends Observer> f97490u;

    /* renamed from: v */
    @Nullable
    public static volatile BiFunction<? super Single, ? super SingleObserver, ? extends SingleObserver> f97491v;

    /* renamed from: w */
    @Nullable
    public static volatile BiFunction<? super Completable, ? super CompletableObserver, ? extends CompletableObserver> f97492w;

    /* renamed from: x */
    @Nullable
    public static volatile BiFunction<? super ParallelFlowable, ? super Subscriber[], ? extends Subscriber[]> f97493x;

    /* renamed from: y */
    @Nullable
    public static volatile BooleanSupplier f97494y;

    /* renamed from: z */
    public static volatile boolean f97495z;

    public RxJavaPlugins() {
        throw new IllegalStateException("No instances!");
    }

    @NonNull
    /* renamed from: a */
    public static <T, U, R> R m61315a(@NonNull BiFunction<T, U, R> f, @NonNull T t, @NonNull U u) {
        try {
            return f.apply(t, u);
        } catch (Throwable th) {
            throw ExceptionHelper.wrapOrThrow(th);
        }
    }

    @NonNull
    /* renamed from: b */
    public static <T, R> R m61316b(@NonNull Function<T, R> f, @NonNull T t) {
        try {
            return f.apply(t);
        } catch (Throwable th) {
            throw ExceptionHelper.wrapOrThrow(th);
        }
    }

    @NonNull
    /* renamed from: c */
    public static Scheduler m61317c(@NonNull Function<? super Supplier<Scheduler>, ? extends Scheduler> f, Supplier<Scheduler> s) {
        Object m61316b = m61316b(f, s);
        Objects.requireNonNull(m61316b, "Scheduler Supplier result can't be null");
        return (Scheduler) m61316b;
    }

    @NonNull
    public static Scheduler createComputationScheduler(@NonNull ThreadFactory threadFactory) {
        Objects.requireNonNull(threadFactory, "threadFactory is null");
        return new ComputationScheduler(threadFactory);
    }

    @NonNull
    public static Scheduler createExecutorScheduler(@NonNull Executor executor, boolean interruptibleWorker, boolean fair) {
        return new ExecutorScheduler(executor, interruptibleWorker, fair);
    }

    @NonNull
    public static Scheduler createIoScheduler(@NonNull ThreadFactory threadFactory) {
        Objects.requireNonNull(threadFactory, "threadFactory is null");
        return new IoScheduler(threadFactory);
    }

    @NonNull
    public static Scheduler createNewThreadScheduler(@NonNull ThreadFactory threadFactory) {
        Objects.requireNonNull(threadFactory, "threadFactory is null");
        return new NewThreadScheduler(threadFactory);
    }

    @NonNull
    public static Scheduler createSingleScheduler(@NonNull ThreadFactory threadFactory) {
        Objects.requireNonNull(threadFactory, "threadFactory is null");
        return new SingleScheduler(threadFactory);
    }

    @NonNull
    /* renamed from: d */
    public static Scheduler m61318d(@NonNull Supplier<Scheduler> s) {
        try {
            Scheduler scheduler = s.get();
            Objects.requireNonNull(scheduler, "Scheduler Supplier result can't be null");
            return scheduler;
        } catch (Throwable th) {
            throw ExceptionHelper.wrapOrThrow(th);
        }
    }

    /* renamed from: e */
    public static boolean m61319e(Throwable error) {
        return (error instanceof OnErrorNotImplementedException) || (error instanceof MissingBackpressureException) || (error instanceof QueueOverflowException) || (error instanceof IllegalStateException) || (error instanceof NullPointerException) || (error instanceof IllegalArgumentException) || (error instanceof CompositeException);
    }

    /* renamed from: f */
    public static void m61320f(@NonNull Throwable error) {
        Thread currentThread = Thread.currentThread();
        currentThread.getUncaughtExceptionHandler().uncaughtException(currentThread, error);
    }

    /* renamed from: g */
    public static void m61321g() {
        f97495z = false;
    }

    @Nullable
    public static Function<? super Scheduler, ? extends Scheduler> getComputationSchedulerHandler() {
        return f97476g;
    }

    @Nullable
    public static Consumer<? super Throwable> getErrorHandler() {
        return f97470a;
    }

    @Nullable
    public static Function<? super Supplier<Scheduler>, ? extends Scheduler> getInitComputationSchedulerHandler() {
        return f97472c;
    }

    @Nullable
    public static Function<? super Supplier<Scheduler>, ? extends Scheduler> getInitIoSchedulerHandler() {
        return f97474e;
    }

    @Nullable
    public static Function<? super Supplier<Scheduler>, ? extends Scheduler> getInitNewThreadSchedulerHandler() {
        return f97475f;
    }

    @Nullable
    public static Function<? super Supplier<Scheduler>, ? extends Scheduler> getInitSingleSchedulerHandler() {
        return f97473d;
    }

    @Nullable
    public static Function<? super Scheduler, ? extends Scheduler> getIoSchedulerHandler() {
        return f97478i;
    }

    @Nullable
    public static Function<? super Scheduler, ? extends Scheduler> getNewThreadSchedulerHandler() {
        return f97479j;
    }

    @Nullable
    public static BooleanSupplier getOnBeforeBlocking() {
        return f97494y;
    }

    @Nullable
    public static Function<? super Completable, ? extends Completable> getOnCompletableAssembly() {
        return f97486q;
    }

    @Nullable
    public static BiFunction<? super Completable, ? super CompletableObserver, ? extends CompletableObserver> getOnCompletableSubscribe() {
        return f97492w;
    }

    @Nullable
    public static Function<? super ConnectableFlowable, ? extends ConnectableFlowable> getOnConnectableFlowableAssembly() {
        return f97481l;
    }

    @Nullable
    public static Function<? super ConnectableObservable, ? extends ConnectableObservable> getOnConnectableObservableAssembly() {
        return f97483n;
    }

    @Nullable
    public static Function<? super Flowable, ? extends Flowable> getOnFlowableAssembly() {
        return f97480k;
    }

    @Nullable
    public static BiFunction<? super Flowable, ? super Subscriber, ? extends Subscriber> getOnFlowableSubscribe() {
        return f97488s;
    }

    @Nullable
    public static Function<? super Maybe, ? extends Maybe> getOnMaybeAssembly() {
        return f97484o;
    }

    @Nullable
    public static BiFunction<? super Maybe, ? super MaybeObserver, ? extends MaybeObserver> getOnMaybeSubscribe() {
        return f97489t;
    }

    @Nullable
    public static Function<? super Observable, ? extends Observable> getOnObservableAssembly() {
        return f97482m;
    }

    @Nullable
    public static BiFunction<? super Observable, ? super Observer, ? extends Observer> getOnObservableSubscribe() {
        return f97490u;
    }

    @Nullable
    public static Function<? super ParallelFlowable, ? extends ParallelFlowable> getOnParallelAssembly() {
        return f97487r;
    }

    @Nullable
    public static BiFunction<? super ParallelFlowable, ? super Subscriber[], ? extends Subscriber[]> getOnParallelSubscribe() {
        return f97493x;
    }

    @Nullable
    public static Function<? super Single, ? extends Single> getOnSingleAssembly() {
        return f97485p;
    }

    @Nullable
    public static BiFunction<? super Single, ? super SingleObserver, ? extends SingleObserver> getOnSingleSubscribe() {
        return f97491v;
    }

    @Nullable
    public static Function<? super Runnable, ? extends Runnable> getScheduleHandler() {
        return f97471b;
    }

    @Nullable
    public static Function<? super Scheduler, ? extends Scheduler> getSingleSchedulerHandler() {
        return f97477h;
    }

    @NonNull
    public static Scheduler initComputationScheduler(@NonNull Supplier<Scheduler> defaultScheduler) {
        Objects.requireNonNull(defaultScheduler, "Scheduler Supplier can't be null");
        Function<? super Supplier<Scheduler>, ? extends Scheduler> function = f97472c;
        return function == null ? m61318d(defaultScheduler) : m61317c(function, defaultScheduler);
    }

    @NonNull
    public static Scheduler initIoScheduler(@NonNull Supplier<Scheduler> defaultScheduler) {
        Objects.requireNonNull(defaultScheduler, "Scheduler Supplier can't be null");
        Function<? super Supplier<Scheduler>, ? extends Scheduler> function = f97474e;
        return function == null ? m61318d(defaultScheduler) : m61317c(function, defaultScheduler);
    }

    @NonNull
    public static Scheduler initNewThreadScheduler(@NonNull Supplier<Scheduler> defaultScheduler) {
        Objects.requireNonNull(defaultScheduler, "Scheduler Supplier can't be null");
        Function<? super Supplier<Scheduler>, ? extends Scheduler> function = f97475f;
        return function == null ? m61318d(defaultScheduler) : m61317c(function, defaultScheduler);
    }

    @NonNull
    public static Scheduler initSingleScheduler(@NonNull Supplier<Scheduler> defaultScheduler) {
        Objects.requireNonNull(defaultScheduler, "Scheduler Supplier can't be null");
        Function<? super Supplier<Scheduler>, ? extends Scheduler> function = f97473d;
        return function == null ? m61318d(defaultScheduler) : m61317c(function, defaultScheduler);
    }

    public static boolean isFailOnNonBlockingScheduler() {
        return f97469A;
    }

    public static boolean isLockdown() {
        return f97495z;
    }

    public static void lockdown() {
        f97495z = true;
    }

    @NonNull
    public static <T> Maybe<T> onAssembly(@NonNull Maybe<T> source) {
        Function<? super Maybe, ? extends Maybe> function = f97484o;
        return function != null ? (Maybe) m61316b(function, source) : source;
    }

    public static boolean onBeforeBlocking() {
        BooleanSupplier booleanSupplier = f97494y;
        if (booleanSupplier == null) {
            return false;
        }
        try {
            return booleanSupplier.getAsBoolean();
        } catch (Throwable th) {
            throw ExceptionHelper.wrapOrThrow(th);
        }
    }

    @NonNull
    public static Scheduler onComputationScheduler(@NonNull Scheduler defaultScheduler) {
        Function<? super Scheduler, ? extends Scheduler> function = f97476g;
        return function == null ? defaultScheduler : (Scheduler) m61316b(function, defaultScheduler);
    }

    public static void onError(@NonNull Throwable error) {
        Consumer<? super Throwable> consumer = f97470a;
        if (error == null) {
            error = ExceptionHelper.createNullPointerException("onError called with a null Throwable.");
        } else if (!m61319e(error)) {
            error = new UndeliverableException(error);
        }
        if (consumer != null) {
            try {
                consumer.accept(error);
                return;
            } catch (Throwable th) {
                th.printStackTrace();
                m61320f(th);
            }
        }
        error.printStackTrace();
        m61320f(error);
    }

    @NonNull
    public static Scheduler onIoScheduler(@NonNull Scheduler defaultScheduler) {
        Function<? super Scheduler, ? extends Scheduler> function = f97478i;
        return function == null ? defaultScheduler : (Scheduler) m61316b(function, defaultScheduler);
    }

    @NonNull
    public static Scheduler onNewThreadScheduler(@NonNull Scheduler defaultScheduler) {
        Function<? super Scheduler, ? extends Scheduler> function = f97479j;
        return function == null ? defaultScheduler : (Scheduler) m61316b(function, defaultScheduler);
    }

    @NonNull
    public static Runnable onSchedule(@NonNull Runnable run) {
        Objects.requireNonNull(run, "run is null");
        Function<? super Runnable, ? extends Runnable> function = f97471b;
        return function == null ? run : (Runnable) m61316b(function, run);
    }

    @NonNull
    public static Scheduler onSingleScheduler(@NonNull Scheduler defaultScheduler) {
        Function<? super Scheduler, ? extends Scheduler> function = f97477h;
        return function == null ? defaultScheduler : (Scheduler) m61316b(function, defaultScheduler);
    }

    @NonNull
    public static <T> Subscriber<? super T> onSubscribe(@NonNull Flowable<T> source, @NonNull Subscriber<? super T> subscriber) {
        BiFunction<? super Flowable, ? super Subscriber, ? extends Subscriber> biFunction = f97488s;
        return biFunction != null ? (Subscriber) m61315a(biFunction, source, subscriber) : subscriber;
    }

    public static void reset() {
        setErrorHandler(null);
        setScheduleHandler(null);
        setComputationSchedulerHandler(null);
        setInitComputationSchedulerHandler(null);
        setIoSchedulerHandler(null);
        setInitIoSchedulerHandler(null);
        setSingleSchedulerHandler(null);
        setInitSingleSchedulerHandler(null);
        setNewThreadSchedulerHandler(null);
        setInitNewThreadSchedulerHandler(null);
        setOnFlowableAssembly(null);
        setOnFlowableSubscribe(null);
        setOnObservableAssembly(null);
        setOnObservableSubscribe(null);
        setOnSingleAssembly(null);
        setOnSingleSubscribe(null);
        setOnCompletableAssembly(null);
        setOnCompletableSubscribe(null);
        setOnConnectableFlowableAssembly(null);
        setOnConnectableObservableAssembly(null);
        setOnMaybeAssembly(null);
        setOnMaybeSubscribe(null);
        setOnParallelAssembly(null);
        setOnParallelSubscribe(null);
        setFailOnNonBlockingScheduler(false);
        setOnBeforeBlocking(null);
    }

    public static void setComputationSchedulerHandler(@Nullable Function<? super Scheduler, ? extends Scheduler> handler) {
        if (f97495z) {
            throw new IllegalStateException("Plugins can't be changed anymore");
        }
        f97476g = handler;
    }

    public static void setErrorHandler(@Nullable Consumer<? super Throwable> handler) {
        if (f97495z) {
            throw new IllegalStateException("Plugins can't be changed anymore");
        }
        f97470a = handler;
    }

    public static void setFailOnNonBlockingScheduler(boolean enable) {
        if (f97495z) {
            throw new IllegalStateException("Plugins can't be changed anymore");
        }
        f97469A = enable;
    }

    public static void setInitComputationSchedulerHandler(@Nullable Function<? super Supplier<Scheduler>, ? extends Scheduler> handler) {
        if (f97495z) {
            throw new IllegalStateException("Plugins can't be changed anymore");
        }
        f97472c = handler;
    }

    public static void setInitIoSchedulerHandler(@Nullable Function<? super Supplier<Scheduler>, ? extends Scheduler> handler) {
        if (f97495z) {
            throw new IllegalStateException("Plugins can't be changed anymore");
        }
        f97474e = handler;
    }

    public static void setInitNewThreadSchedulerHandler(@Nullable Function<? super Supplier<Scheduler>, ? extends Scheduler> handler) {
        if (f97495z) {
            throw new IllegalStateException("Plugins can't be changed anymore");
        }
        f97475f = handler;
    }

    public static void setInitSingleSchedulerHandler(@Nullable Function<? super Supplier<Scheduler>, ? extends Scheduler> handler) {
        if (f97495z) {
            throw new IllegalStateException("Plugins can't be changed anymore");
        }
        f97473d = handler;
    }

    public static void setIoSchedulerHandler(@Nullable Function<? super Scheduler, ? extends Scheduler> handler) {
        if (f97495z) {
            throw new IllegalStateException("Plugins can't be changed anymore");
        }
        f97478i = handler;
    }

    public static void setNewThreadSchedulerHandler(@Nullable Function<? super Scheduler, ? extends Scheduler> handler) {
        if (f97495z) {
            throw new IllegalStateException("Plugins can't be changed anymore");
        }
        f97479j = handler;
    }

    public static void setOnBeforeBlocking(@Nullable BooleanSupplier handler) {
        if (f97495z) {
            throw new IllegalStateException("Plugins can't be changed anymore");
        }
        f97494y = handler;
    }

    public static void setOnCompletableAssembly(@Nullable Function<? super Completable, ? extends Completable> onCompletableAssembly) {
        if (f97495z) {
            throw new IllegalStateException("Plugins can't be changed anymore");
        }
        f97486q = onCompletableAssembly;
    }

    public static void setOnCompletableSubscribe(@Nullable BiFunction<? super Completable, ? super CompletableObserver, ? extends CompletableObserver> onCompletableSubscribe) {
        if (f97495z) {
            throw new IllegalStateException("Plugins can't be changed anymore");
        }
        f97492w = onCompletableSubscribe;
    }

    public static void setOnConnectableFlowableAssembly(@Nullable Function<? super ConnectableFlowable, ? extends ConnectableFlowable> onConnectableFlowableAssembly) {
        if (f97495z) {
            throw new IllegalStateException("Plugins can't be changed anymore");
        }
        f97481l = onConnectableFlowableAssembly;
    }

    public static void setOnConnectableObservableAssembly(@Nullable Function<? super ConnectableObservable, ? extends ConnectableObservable> onConnectableObservableAssembly) {
        if (f97495z) {
            throw new IllegalStateException("Plugins can't be changed anymore");
        }
        f97483n = onConnectableObservableAssembly;
    }

    public static void setOnFlowableAssembly(@Nullable Function<? super Flowable, ? extends Flowable> onFlowableAssembly) {
        if (f97495z) {
            throw new IllegalStateException("Plugins can't be changed anymore");
        }
        f97480k = onFlowableAssembly;
    }

    public static void setOnFlowableSubscribe(@Nullable BiFunction<? super Flowable, ? super Subscriber, ? extends Subscriber> onFlowableSubscribe) {
        if (f97495z) {
            throw new IllegalStateException("Plugins can't be changed anymore");
        }
        f97488s = onFlowableSubscribe;
    }

    public static void setOnMaybeAssembly(@Nullable Function<? super Maybe, ? extends Maybe> onMaybeAssembly) {
        if (f97495z) {
            throw new IllegalStateException("Plugins can't be changed anymore");
        }
        f97484o = onMaybeAssembly;
    }

    public static void setOnMaybeSubscribe(@Nullable BiFunction<? super Maybe, MaybeObserver, ? extends MaybeObserver> onMaybeSubscribe) {
        if (f97495z) {
            throw new IllegalStateException("Plugins can't be changed anymore");
        }
        f97489t = onMaybeSubscribe;
    }

    public static void setOnObservableAssembly(@Nullable Function<? super Observable, ? extends Observable> onObservableAssembly) {
        if (f97495z) {
            throw new IllegalStateException("Plugins can't be changed anymore");
        }
        f97482m = onObservableAssembly;
    }

    public static void setOnObservableSubscribe(@Nullable BiFunction<? super Observable, ? super Observer, ? extends Observer> onObservableSubscribe) {
        if (f97495z) {
            throw new IllegalStateException("Plugins can't be changed anymore");
        }
        f97490u = onObservableSubscribe;
    }

    public static void setOnParallelAssembly(@Nullable Function<? super ParallelFlowable, ? extends ParallelFlowable> handler) {
        if (f97495z) {
            throw new IllegalStateException("Plugins can't be changed anymore");
        }
        f97487r = handler;
    }

    public static void setOnParallelSubscribe(@Nullable BiFunction<? super ParallelFlowable, ? super Subscriber[], ? extends Subscriber[]> handler) {
        if (f97495z) {
            throw new IllegalStateException("Plugins can't be changed anymore");
        }
        f97493x = handler;
    }

    public static void setOnSingleAssembly(@Nullable Function<? super Single, ? extends Single> onSingleAssembly) {
        if (f97495z) {
            throw new IllegalStateException("Plugins can't be changed anymore");
        }
        f97485p = onSingleAssembly;
    }

    public static void setOnSingleSubscribe(@Nullable BiFunction<? super Single, ? super SingleObserver, ? extends SingleObserver> onSingleSubscribe) {
        if (f97495z) {
            throw new IllegalStateException("Plugins can't be changed anymore");
        }
        f97491v = onSingleSubscribe;
    }

    public static void setScheduleHandler(@Nullable Function<? super Runnable, ? extends Runnable> handler) {
        if (f97495z) {
            throw new IllegalStateException("Plugins can't be changed anymore");
        }
        f97471b = handler;
    }

    public static void setSingleSchedulerHandler(@Nullable Function<? super Scheduler, ? extends Scheduler> handler) {
        if (f97495z) {
            throw new IllegalStateException("Plugins can't be changed anymore");
        }
        f97477h = handler;
    }

    @NonNull
    public static <T> Flowable<T> onAssembly(@NonNull Flowable<T> source) {
        Function<? super Flowable, ? extends Flowable> function = f97480k;
        return function != null ? (Flowable) m61316b(function, source) : source;
    }

    @NonNull
    public static <T> Observer<? super T> onSubscribe(@NonNull Observable<T> source, @NonNull Observer<? super T> observer) {
        BiFunction<? super Observable, ? super Observer, ? extends Observer> biFunction = f97490u;
        return biFunction != null ? (Observer) m61315a(biFunction, source, observer) : observer;
    }

    @NonNull
    public static <T> ConnectableFlowable<T> onAssembly(@NonNull ConnectableFlowable<T> source) {
        Function<? super ConnectableFlowable, ? extends ConnectableFlowable> function = f97481l;
        return function != null ? (ConnectableFlowable) m61316b(function, source) : source;
    }

    @NonNull
    public static <T> SingleObserver<? super T> onSubscribe(@NonNull Single<T> source, @NonNull SingleObserver<? super T> observer) {
        BiFunction<? super Single, ? super SingleObserver, ? extends SingleObserver> biFunction = f97491v;
        return biFunction != null ? (SingleObserver) m61315a(biFunction, source, observer) : observer;
    }

    @NonNull
    public static <T> Observable<T> onAssembly(@NonNull Observable<T> source) {
        Function<? super Observable, ? extends Observable> function = f97482m;
        return function != null ? (Observable) m61316b(function, source) : source;
    }

    @NonNull
    public static CompletableObserver onSubscribe(@NonNull Completable source, @NonNull CompletableObserver observer) {
        BiFunction<? super Completable, ? super CompletableObserver, ? extends CompletableObserver> biFunction = f97492w;
        return biFunction != null ? (CompletableObserver) m61315a(biFunction, source, observer) : observer;
    }

    @NonNull
    public static <T> ConnectableObservable<T> onAssembly(@NonNull ConnectableObservable<T> source) {
        Function<? super ConnectableObservable, ? extends ConnectableObservable> function = f97483n;
        return function != null ? (ConnectableObservable) m61316b(function, source) : source;
    }

    @NonNull
    public static <T> MaybeObserver<? super T> onSubscribe(@NonNull Maybe<T> source, @NonNull MaybeObserver<? super T> observer) {
        BiFunction<? super Maybe, ? super MaybeObserver, ? extends MaybeObserver> biFunction = f97489t;
        return biFunction != null ? (MaybeObserver) m61315a(biFunction, source, observer) : observer;
    }

    @NonNull
    public static <T> Single<T> onAssembly(@NonNull Single<T> source) {
        Function<? super Single, ? extends Single> function = f97485p;
        return function != null ? (Single) m61316b(function, source) : source;
    }

    @NonNull
    public static <T> Subscriber<? super T>[] onSubscribe(@NonNull ParallelFlowable<T> source, @NonNull Subscriber<? super T>[] subscribers) {
        BiFunction<? super ParallelFlowable, ? super Subscriber[], ? extends Subscriber[]> biFunction = f97493x;
        return biFunction != null ? (Subscriber[]) m61315a(biFunction, source, subscribers) : subscribers;
    }

    @NonNull
    public static Completable onAssembly(@NonNull Completable source) {
        Function<? super Completable, ? extends Completable> function = f97486q;
        return function != null ? (Completable) m61316b(function, source) : source;
    }

    @NonNull
    public static <T> ParallelFlowable<T> onAssembly(@NonNull ParallelFlowable<T> source) {
        Function<? super ParallelFlowable, ? extends ParallelFlowable> function = f97487r;
        return function != null ? (ParallelFlowable) m61316b(function, source) : source;
    }
}
