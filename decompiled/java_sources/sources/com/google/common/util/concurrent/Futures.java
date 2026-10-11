package com.google.common.util.concurrent;

import com.google.common.annotations.Beta;
import com.google.common.annotations.GwtCompatible;
import com.google.common.annotations.GwtIncompatible;
import com.google.common.base.Function;
import com.google.common.base.MoreObjects;
import com.google.common.base.Preconditions;
import com.google.common.collect.ImmutableList;
import com.google.common.util.concurrent.AbstractC6412d;
import com.google.common.util.concurrent.AbstractFuture;
import com.google.common.util.concurrent.C6414f;
import com.google.common.util.concurrent.C6416h;
import com.google.common.util.concurrent.internal.InternalFutureFailureAccess;
import com.google.common.util.concurrent.internal.InternalFutures;
import com.google.errorprone.annotations.CanIgnoreReturnValue;
import com.sunia.HTREnginev2.ipi;
import com.sunia.HTREnginev2.pnf;
import com.sunia.HTREnginev2.t6h;
import com.sunia.HTREnginev2.uvk;
import java.time.Duration;
import java.util.Collection;
import java.util.List;
import java.util.Objects;
import java.util.concurrent.Callable;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.Executor;
import java.util.concurrent.Future;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.TimeoutException;
import java.util.concurrent.atomic.AtomicInteger;
import javax.annotation.CheckForNull;
import org.apache.commons.collections4.IteratorUtils;

@GwtCompatible(emulated = true)
@pnf
/* loaded from: classes6.dex */
public final class Futures extends t6h {

    @Beta
    @GwtCompatible
    @CanIgnoreReturnValue
    /* loaded from: classes6.dex */
    public static final class FutureCombiner<V> {

        /* renamed from: a */
        public final boolean f35332a;

        /* renamed from: b */
        public final ImmutableList<ListenableFuture<? extends V>> f35333b;

        /* renamed from: com.google.common.util.concurrent.Futures$FutureCombiner$a */
        /* loaded from: classes6.dex */
        public class CallableC6363a implements Callable<Void> {

            /* renamed from: e */
            public final /* synthetic */ Runnable f35334e;

            public CallableC6363a(FutureCombiner futureCombiner, Runnable runnable) {
                this.f35334e = runnable;
            }

            @Override // java.util.concurrent.Callable
            @CheckForNull
            /* renamed from: a, reason: merged with bridge method [inline-methods] */
            public Void call() throws Exception {
                this.f35334e.run();
                return null;
            }
        }

        public /* synthetic */ FutureCombiner(boolean z, ImmutableList immutableList, RunnableC6364a runnableC6364a) {
            this(z, immutableList);
        }

        @CanIgnoreReturnValue
        public <C> ListenableFuture<C> call(Callable<C> callable, Executor executor) {
            return new CombinedFuture(this.f35333b, this.f35332a, executor, callable);
        }

        public <C> ListenableFuture<C> callAsync(AsyncCallable<C> asyncCallable, Executor executor) {
            return new CombinedFuture(this.f35333b, this.f35332a, executor, asyncCallable);
        }

        public ListenableFuture<?> run(Runnable runnable, Executor executor) {
            return call(new CallableC6363a(this, runnable), executor);
        }

        public FutureCombiner(boolean z, ImmutableList<ListenableFuture<? extends V>> immutableList) {
            this.f35332a = z;
            this.f35333b = immutableList;
        }
    }

    /* renamed from: com.google.common.util.concurrent.Futures$a */
    /* loaded from: classes6.dex */
    public class RunnableC6364a implements Runnable {

        /* renamed from: e */
        public final /* synthetic */ Future f35335e;

        public RunnableC6364a(Future future) {
            this.f35335e = future;
        }

        @Override // java.lang.Runnable
        public void run() {
            this.f35335e.cancel(false);
        }
    }

    /* JADX INFO: Add missing generic type declarations: [O] */
    /* renamed from: com.google.common.util.concurrent.Futures$b */
    /* loaded from: classes6.dex */
    public class FutureC6365b<O> implements Future<O> {

        /* renamed from: e */
        public final /* synthetic */ Future f35336e;

        /* renamed from: f */
        public final /* synthetic */ Function f35337f;

        public FutureC6365b(Future future, Function function) {
            this.f35336e = future;
            this.f35337f = function;
        }

        /* renamed from: a */
        public final O m27709a(I i) throws ExecutionException {
            try {
                return (O) this.f35337f.apply(i);
            } catch (Throwable th) {
                throw new ExecutionException(th);
            }
        }

        @Override // java.util.concurrent.Future
        public boolean cancel(boolean z) {
            return this.f35336e.cancel(z);
        }

        @Override // java.util.concurrent.Future
        public O get() throws InterruptedException, ExecutionException {
            return m27709a(this.f35336e.get());
        }

        @Override // java.util.concurrent.Future
        public boolean isCancelled() {
            return this.f35336e.isCancelled();
        }

        @Override // java.util.concurrent.Future
        public boolean isDone() {
            return this.f35336e.isDone();
        }

        @Override // java.util.concurrent.Future
        public O get(long j, TimeUnit timeUnit) throws InterruptedException, ExecutionException, TimeoutException {
            return m27709a(this.f35336e.get(j, timeUnit));
        }
    }

    /* renamed from: com.google.common.util.concurrent.Futures$c */
    /* loaded from: classes6.dex */
    public class RunnableC6366c implements Runnable {

        /* renamed from: e */
        public final /* synthetic */ C6369f f35338e;

        /* renamed from: f */
        public final /* synthetic */ ImmutableList f35339f;

        /* renamed from: g */
        public final /* synthetic */ int f35340g;

        public RunnableC6366c(C6369f c6369f, ImmutableList immutableList, int i) {
            this.f35338e = c6369f;
            this.f35339f = immutableList;
            this.f35340g = i;
        }

        @Override // java.lang.Runnable
        public void run() {
            this.f35338e.m27715f(this.f35339f, this.f35340g);
        }
    }

    /* renamed from: com.google.common.util.concurrent.Futures$d */
    /* loaded from: classes6.dex */
    public static final class RunnableC6367d<V> implements Runnable {

        /* renamed from: e */
        public final Future<V> f35341e;

        /* renamed from: f */
        public final FutureCallback<? super V> f35342f;

        public RunnableC6367d(Future<V> future, FutureCallback<? super V> futureCallback) {
            this.f35341e = future;
            this.f35342f = futureCallback;
        }

        @Override // java.lang.Runnable
        public void run() {
            Throwable tryInternalFastPathGetFailure;
            Future<V> future = this.f35341e;
            if ((future instanceof InternalFutureFailureAccess) && (tryInternalFastPathGetFailure = InternalFutures.tryInternalFastPathGetFailure((InternalFutureFailureAccess) future)) != null) {
                this.f35342f.onFailure(tryInternalFastPathGetFailure);
                return;
            }
            try {
                this.f35342f.onSuccess(Futures.getDone(this.f35341e));
            } catch (Error | RuntimeException e) {
                this.f35342f.onFailure(e);
            } catch (ExecutionException e2) {
                this.f35342f.onFailure(e2.getCause());
            }
        }

        public String toString() {
            return MoreObjects.toStringHelper(this).addValue(this.f35342f).toString();
        }
    }

    /* renamed from: com.google.common.util.concurrent.Futures$e */
    /* loaded from: classes6.dex */
    public static final class C6368e<T> extends AbstractFuture<T> {

        /* renamed from: m */
        @CheckForNull
        public C6369f<T> f35343m;

        public /* synthetic */ C6368e(C6369f c6369f, RunnableC6364a runnableC6364a) {
            this(c6369f);
        }

        @Override // com.google.common.util.concurrent.AbstractFuture
        public void afterDone() {
            this.f35343m = null;
        }

        @Override // com.google.common.util.concurrent.AbstractFuture, java.util.concurrent.Future
        public boolean cancel(boolean z) {
            C6369f<T> c6369f = this.f35343m;
            if (!super.cancel(z)) {
                return false;
            }
            Objects.requireNonNull(c6369f);
            c6369f.m27716g(z);
            return true;
        }

        @Override // com.google.common.util.concurrent.AbstractFuture
        @CheckForNull
        public String pendingToString() {
            C6369f<T> c6369f = this.f35343m;
            if (c6369f == null) {
                return null;
            }
            int length = c6369f.f35347d.length;
            int i = c6369f.f35346c.get();
            StringBuilder sb = new StringBuilder(49);
            sb.append("inputCount=[");
            sb.append(length);
            sb.append("], remaining=[");
            sb.append(i);
            sb.append(IteratorUtils.f104924b);
            return sb.toString();
        }

        public C6368e(C6369f<T> c6369f) {
            this.f35343m = c6369f;
        }
    }

    /* renamed from: com.google.common.util.concurrent.Futures$f */
    /* loaded from: classes6.dex */
    public static final class C6369f<T> {

        /* renamed from: a */
        public boolean f35344a;

        /* renamed from: b */
        public boolean f35345b;

        /* renamed from: c */
        public final AtomicInteger f35346c;

        /* renamed from: d */
        public final ListenableFuture<? extends T>[] f35347d;

        /* renamed from: e */
        public volatile int f35348e;

        public /* synthetic */ C6369f(ListenableFuture[] listenableFutureArr, RunnableC6364a runnableC6364a) {
            this(listenableFutureArr);
        }

        /* renamed from: e */
        public final void m27714e() {
            if (this.f35346c.decrementAndGet() == 0 && this.f35344a) {
                for (ListenableFuture<? extends T> listenableFuture : this.f35347d) {
                    if (listenableFuture != null) {
                        listenableFuture.cancel(this.f35345b);
                    }
                }
            }
        }

        /* renamed from: f */
        public final void m27715f(ImmutableList<AbstractFuture<T>> immutableList, int i) {
            ListenableFuture<? extends T> listenableFuture = this.f35347d[i];
            Objects.requireNonNull(listenableFuture);
            ListenableFuture<? extends T> listenableFuture2 = listenableFuture;
            this.f35347d[i] = null;
            for (int i2 = this.f35348e; i2 < immutableList.size(); i2++) {
                if (immutableList.get(i2).setFuture(listenableFuture2)) {
                    m27714e();
                    this.f35348e = i2 + 1;
                    return;
                }
            }
            this.f35348e = immutableList.size();
        }

        /* renamed from: g */
        public final void m27716g(boolean z) {
            this.f35344a = true;
            if (!z) {
                this.f35345b = false;
            }
            m27714e();
        }

        public C6369f(ListenableFuture<? extends T>[] listenableFutureArr) {
            this.f35344a = false;
            this.f35345b = true;
            this.f35348e = 0;
            this.f35347d = listenableFutureArr;
            this.f35346c = new AtomicInteger(listenableFutureArr.length);
        }
    }

    /* renamed from: com.google.common.util.concurrent.Futures$g */
    /* loaded from: classes6.dex */
    public static final class RunnableC6370g<V> extends AbstractFuture.AbstractC6303i<V> implements Runnable {

        /* renamed from: m */
        @CheckForNull
        public ListenableFuture<V> f35349m;

        public RunnableC6370g(ListenableFuture<V> listenableFuture) {
            this.f35349m = listenableFuture;
        }

        @Override // com.google.common.util.concurrent.AbstractFuture
        public void afterDone() {
            this.f35349m = null;
        }

        @Override // com.google.common.util.concurrent.AbstractFuture
        @CheckForNull
        public String pendingToString() {
            ListenableFuture<V> listenableFuture = this.f35349m;
            if (listenableFuture == null) {
                return null;
            }
            String valueOf = String.valueOf(listenableFuture);
            StringBuilder sb = new StringBuilder(valueOf.length() + 11);
            sb.append("delegate=[");
            sb.append(valueOf);
            sb.append(IteratorUtils.f104924b);
            return sb.toString();
        }

        @Override // java.lang.Runnable
        public void run() {
            ListenableFuture<V> listenableFuture = this.f35349m;
            if (listenableFuture != null) {
                setFuture(listenableFuture);
            }
        }
    }

    /* renamed from: a */
    public static <T> ListenableFuture<? extends T>[] m27706a(Iterable<? extends ListenableFuture<? extends T>> iterable) {
        return (ListenableFuture[]) (iterable instanceof Collection ? (Collection) iterable : ImmutableList.copyOf(iterable)).toArray(new ListenableFuture[0]);
    }

    public static <V> void addCallback(ListenableFuture<V> listenableFuture, FutureCallback<? super V> futureCallback, Executor executor) {
        Preconditions.checkNotNull(futureCallback);
        listenableFuture.addListener(new RunnableC6367d(listenableFuture, futureCallback), executor);
    }

    @SafeVarargs
    @Beta
    public static <V> ListenableFuture<List<V>> allAsList(ListenableFuture<? extends V>... listenableFutureArr) {
        return new AbstractC6412d.a(ImmutableList.copyOf(listenableFutureArr), true);
    }

    /* renamed from: b */
    public static void m27707b(Throwable th) {
        if (!(th instanceof Error)) {
            throw new UncheckedExecutionException(th);
        }
        throw new ExecutionError((Error) th);
    }

    @C6416h.a("AVAILABLE but requires exceptionType to be Throwable.class")
    @Beta
    public static <V, X extends Throwable> ListenableFuture<V> catching(ListenableFuture<? extends V> listenableFuture, Class<X> cls, Function<? super X, ? extends V> function, Executor executor) {
        return AbstractRunnableC6409a.m27849x(listenableFuture, cls, function, executor);
    }

    @C6416h.a("AVAILABLE but requires exceptionType to be Throwable.class")
    @Beta
    public static <V, X extends Throwable> ListenableFuture<V> catchingAsync(ListenableFuture<? extends V> listenableFuture, Class<X> cls, AsyncFunction<? super X, ? extends V> asyncFunction, Executor executor) {
        return AbstractRunnableC6409a.m27850y(listenableFuture, cls, asyncFunction, executor);
    }

    @Beta
    @GwtIncompatible
    @CanIgnoreReturnValue
    @uvk
    public static <V, X extends Exception> V getChecked(Future<V> future, Class<X> cls) throws Exception {
        return (V) FuturesGetChecked.m27721e(future, cls);
    }

    @CanIgnoreReturnValue
    @uvk
    public static <V> V getDone(Future<V> future) throws ExecutionException {
        Preconditions.checkState(future.isDone(), "Future was expected to be done: %s", future);
        return (V) Uninterruptibles.getUninterruptibly(future);
    }

    @CanIgnoreReturnValue
    @uvk
    public static <V> V getUnchecked(Future<V> future) {
        Preconditions.checkNotNull(future);
        try {
            return (V) Uninterruptibles.getUninterruptibly(future);
        } catch (ExecutionException e) {
            m27707b(e.getCause());
            throw new AssertionError();
        }
    }

    public static <V> ListenableFuture<V> immediateCancelledFuture() {
        C6414f.a<Object> aVar = C6414f.a.f35480m;
        return aVar != null ? aVar : new C6414f.a();
    }

    public static <V> ListenableFuture<V> immediateFailedFuture(Throwable th) {
        Preconditions.checkNotNull(th);
        return new C6414f.b(th);
    }

    public static <V> ListenableFuture<V> immediateFuture(@uvk V v) {
        return v == null ? (ListenableFuture<V>) C6414f.f35477f : new C6414f(v);
    }

    public static ListenableFuture<Void> immediateVoidFuture() {
        return C6414f.f35477f;
    }

    public static <T> ImmutableList<ListenableFuture<T>> inCompletionOrder(Iterable<? extends ListenableFuture<? extends T>> iterable) {
        ListenableFuture[] m27706a = m27706a(iterable);
        RunnableC6364a runnableC6364a = null;
        C6369f c6369f = new C6369f(m27706a, runnableC6364a);
        ImmutableList.Builder builderWithExpectedSize = ImmutableList.builderWithExpectedSize(m27706a.length);
        for (int i = 0; i < m27706a.length; i++) {
            builderWithExpectedSize.add((ImmutableList.Builder) new C6368e(c6369f, runnableC6364a));
        }
        ImmutableList<ListenableFuture<T>> build = builderWithExpectedSize.build();
        for (int i2 = 0; i2 < m27706a.length; i2++) {
            m27706a[i2].addListener(new RunnableC6366c(c6369f, build, i2), MoreExecutors.directExecutor());
        }
        return build;
    }

    @Beta
    @GwtIncompatible
    public static <I, O> Future<O> lazyTransform(Future<I> future, Function<? super I, ? extends O> function) {
        Preconditions.checkNotNull(future);
        Preconditions.checkNotNull(function);
        return new FutureC6365b(future, function);
    }

    public static <V> ListenableFuture<V> nonCancellationPropagating(ListenableFuture<V> listenableFuture) {
        if (listenableFuture.isDone()) {
            return listenableFuture;
        }
        RunnableC6370g runnableC6370g = new RunnableC6370g(listenableFuture);
        listenableFuture.addListener(runnableC6370g, MoreExecutors.directExecutor());
        return runnableC6370g;
    }

    @GwtIncompatible
    public static <O> ListenableFuture<O> scheduleAsync(AsyncCallable<O> asyncCallable, Duration duration, ScheduledExecutorService scheduledExecutorService) {
        return scheduleAsync(asyncCallable, ipi.m54767a(duration), TimeUnit.NANOSECONDS, scheduledExecutorService);
    }

    public static <O> ListenableFuture<O> submit(Callable<O> callable, Executor executor) {
        TrustedListenableFutureTask m27848z = TrustedListenableFutureTask.m27848z(callable);
        executor.execute(m27848z);
        return m27848z;
    }

    public static <O> ListenableFuture<O> submitAsync(AsyncCallable<O> asyncCallable, Executor executor) {
        TrustedListenableFutureTask m27846x = TrustedListenableFutureTask.m27846x(asyncCallable);
        executor.execute(m27846x);
        return m27846x;
    }

    @SafeVarargs
    @Beta
    public static <V> ListenableFuture<List<V>> successfulAsList(ListenableFuture<? extends V>... listenableFutureArr) {
        return new AbstractC6412d.a(ImmutableList.copyOf(listenableFutureArr), false);
    }

    @Beta
    public static <I, O> ListenableFuture<O> transform(ListenableFuture<I> listenableFuture, Function<? super I, ? extends O> function, Executor executor) {
        return AbstractRunnableC6410b.m27856x(listenableFuture, function, executor);
    }

    @Beta
    public static <I, O> ListenableFuture<O> transformAsync(ListenableFuture<I> listenableFuture, AsyncFunction<? super I, ? extends O> asyncFunction, Executor executor) {
        return AbstractRunnableC6410b.m27857y(listenableFuture, asyncFunction, executor);
    }

    @SafeVarargs
    @Beta
    public static <V> FutureCombiner<V> whenAllComplete(ListenableFuture<? extends V>... listenableFutureArr) {
        return new FutureCombiner<>(false, ImmutableList.copyOf(listenableFutureArr), null);
    }

    @SafeVarargs
    @Beta
    public static <V> FutureCombiner<V> whenAllSucceed(ListenableFuture<? extends V>... listenableFutureArr) {
        return new FutureCombiner<>(true, ImmutableList.copyOf(listenableFutureArr), null);
    }

    @Beta
    @GwtIncompatible
    public static <V> ListenableFuture<V> withTimeout(ListenableFuture<V> listenableFuture, Duration duration, ScheduledExecutorService scheduledExecutorService) {
        return withTimeout(listenableFuture, ipi.m54767a(duration), TimeUnit.NANOSECONDS, scheduledExecutorService);
    }

    @Beta
    @GwtIncompatible
    @CanIgnoreReturnValue
    @uvk
    public static <V, X extends Exception> V getChecked(Future<V> future, Class<X> cls, Duration duration) throws Exception {
        return (V) getChecked(future, cls, ipi.m54767a(duration), TimeUnit.NANOSECONDS);
    }

    @GwtIncompatible
    public static <O> ListenableFuture<O> scheduleAsync(AsyncCallable<O> asyncCallable, long j, TimeUnit timeUnit, ScheduledExecutorService scheduledExecutorService) {
        TrustedListenableFutureTask m27846x = TrustedListenableFutureTask.m27846x(asyncCallable);
        m27846x.addListener(new RunnableC6364a(scheduledExecutorService.schedule(m27846x, j, timeUnit)), MoreExecutors.directExecutor());
        return m27846x;
    }

    @Beta
    public static <V> ListenableFuture<List<V>> successfulAsList(Iterable<? extends ListenableFuture<? extends V>> iterable) {
        return new AbstractC6412d.a(ImmutableList.copyOf(iterable), false);
    }

    @Beta
    public static <V> FutureCombiner<V> whenAllComplete(Iterable<? extends ListenableFuture<? extends V>> iterable) {
        return new FutureCombiner<>(false, ImmutableList.copyOf(iterable), null);
    }

    @Beta
    public static <V> FutureCombiner<V> whenAllSucceed(Iterable<? extends ListenableFuture<? extends V>> iterable) {
        return new FutureCombiner<>(true, ImmutableList.copyOf(iterable), null);
    }

    @Beta
    @GwtIncompatible
    public static <V> ListenableFuture<V> withTimeout(ListenableFuture<V> listenableFuture, long j, TimeUnit timeUnit, ScheduledExecutorService scheduledExecutorService) {
        return listenableFuture.isDone() ? listenableFuture : TimeoutFuture.m27842A(listenableFuture, j, timeUnit, scheduledExecutorService);
    }

    @Beta
    public static <V> ListenableFuture<List<V>> allAsList(Iterable<? extends ListenableFuture<? extends V>> iterable) {
        return new AbstractC6412d.a(ImmutableList.copyOf(iterable), true);
    }

    @Beta
    @GwtIncompatible
    @CanIgnoreReturnValue
    @uvk
    public static <V, X extends Exception> V getChecked(Future<V> future, Class<X> cls, long j, TimeUnit timeUnit) throws Exception {
        return (V) FuturesGetChecked.m27722f(future, cls, j, timeUnit);
    }

    public static ListenableFuture<Void> submit(Runnable runnable, Executor executor) {
        TrustedListenableFutureTask m27847y = TrustedListenableFutureTask.m27847y(runnable, null);
        executor.execute(m27847y);
        return m27847y;
    }
}
