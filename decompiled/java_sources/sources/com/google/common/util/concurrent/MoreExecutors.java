package com.google.common.util.concurrent;

import com.google.common.annotations.Beta;
import com.google.common.annotations.GwtCompatible;
import com.google.common.annotations.GwtIncompatible;
import com.google.common.annotations.VisibleForTesting;
import com.google.common.base.Preconditions;
import com.google.common.base.Supplier;
import com.google.common.base.Throwables;
import com.google.common.util.concurrent.AbstractFuture;
import com.google.common.util.concurrent.ForwardingListenableFuture;
import com.google.errorprone.annotations.CanIgnoreReturnValue;
import com.google.errorprone.annotations.concurrent.GuardedBy;
import com.onyx.android.sdk.data.account.bean.DevicePushAction;
import com.sunia.HTREnginev2.abo;
import com.sunia.HTREnginev2.bbo;
import com.sunia.HTREnginev2.ipi;
import com.sunia.HTREnginev2.pnf;
import com.sunia.HTREnginev2.uvk;
import java.lang.reflect.InvocationTargetException;
import java.time.Duration;
import java.util.Collection;
import java.util.Collections;
import java.util.List;
import java.util.concurrent.BlockingQueue;
import java.util.concurrent.Callable;
import java.util.concurrent.Delayed;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.Executor;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import java.util.concurrent.Future;
import java.util.concurrent.RejectedExecutionException;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.ScheduledFuture;
import java.util.concurrent.ScheduledThreadPoolExecutor;
import java.util.concurrent.ThreadFactory;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.TimeoutException;
import org.apache.commons.collections4.IteratorUtils;

@GwtCompatible(emulated = true)
@pnf
/* loaded from: classes6.dex */
public final class MoreExecutors {

    /* renamed from: com.google.common.util.concurrent.MoreExecutors$a */
    /* loaded from: classes6.dex */
    public class RunnableC6378a implements Runnable {

        /* renamed from: e */
        public final /* synthetic */ BlockingQueue f35368e;

        /* renamed from: f */
        public final /* synthetic */ ListenableFuture f35369f;

        public RunnableC6378a(BlockingQueue blockingQueue, ListenableFuture listenableFuture) {
            this.f35368e = blockingQueue;
            this.f35369f = listenableFuture;
        }

        @Override // java.lang.Runnable
        public void run() {
            this.f35368e.add(this.f35369f);
        }
    }

    /* renamed from: com.google.common.util.concurrent.MoreExecutors$b */
    /* loaded from: classes6.dex */
    public class ExecutorC6379b implements Executor {

        /* renamed from: e */
        public final /* synthetic */ Executor f35370e;

        /* renamed from: f */
        public final /* synthetic */ Supplier f35371f;

        public ExecutorC6379b(Executor executor, Supplier supplier) {
            this.f35370e = executor;
            this.f35371f = supplier;
        }

        @Override // java.util.concurrent.Executor
        public void execute(Runnable runnable) {
            this.f35370e.execute(Callables.m27641i(runnable, this.f35371f));
        }
    }

    /* renamed from: com.google.common.util.concurrent.MoreExecutors$c */
    /* loaded from: classes6.dex */
    public class C6380c extends abo {

        /* renamed from: f */
        public final /* synthetic */ Supplier f35372f;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C6380c(ExecutorService executorService, Supplier supplier) {
            super(executorService);
            this.f35372f = supplier;
        }

        @Override // com.sunia.HTREnginev2.abo
        /* renamed from: c */
        public Runnable mo27758c(Runnable runnable) {
            return Callables.m27641i(runnable, this.f35372f);
        }

        @Override // com.sunia.HTREnginev2.abo
        /* renamed from: d */
        public <T> Callable<T> mo27759d(Callable<T> callable) {
            return Callables.m27642j(callable, this.f35372f);
        }
    }

    /* renamed from: com.google.common.util.concurrent.MoreExecutors$d */
    /* loaded from: classes6.dex */
    public class C6381d extends bbo {

        /* renamed from: g */
        public final /* synthetic */ Supplier f35373g;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C6381d(ScheduledExecutorService scheduledExecutorService, Supplier supplier) {
            super(scheduledExecutorService);
            this.f35373g = supplier;
        }

        @Override // com.sunia.HTREnginev2.abo
        /* renamed from: c */
        public Runnable mo27758c(Runnable runnable) {
            return Callables.m27641i(runnable, this.f35373g);
        }

        @Override // com.sunia.HTREnginev2.abo
        /* renamed from: d */
        public <T> Callable<T> mo27759d(Callable<T> callable) {
            return Callables.m27642j(callable, this.f35373g);
        }
    }

    /* renamed from: com.google.common.util.concurrent.MoreExecutors$e */
    /* loaded from: classes6.dex */
    public class ExecutorC6382e implements Executor {

        /* renamed from: e */
        public final /* synthetic */ Executor f35374e;

        /* renamed from: f */
        public final /* synthetic */ AbstractFuture f35375f;

        public ExecutorC6382e(Executor executor, AbstractFuture abstractFuture) {
            this.f35374e = executor;
            this.f35375f = abstractFuture;
        }

        @Override // java.util.concurrent.Executor
        public void execute(Runnable runnable) {
            try {
                this.f35374e.execute(runnable);
            } catch (RejectedExecutionException e) {
                this.f35375f.setException(e);
            }
        }
    }

    @VisibleForTesting
    @GwtIncompatible
    /* renamed from: com.google.common.util.concurrent.MoreExecutors$f */
    /* loaded from: classes6.dex */
    public static class C6383f {

        /* renamed from: com.google.common.util.concurrent.MoreExecutors$f$a */
        /* loaded from: classes6.dex */
        public class a implements Runnable {

            /* renamed from: e */
            public final /* synthetic */ ExecutorService f35376e;

            /* renamed from: f */
            public final /* synthetic */ long f35377f;

            /* renamed from: g */
            public final /* synthetic */ TimeUnit f35378g;

            public a(C6383f c6383f, ExecutorService executorService, long j, TimeUnit timeUnit) {
                this.f35376e = executorService;
                this.f35377f = j;
                this.f35378g = timeUnit;
            }

            @Override // java.lang.Runnable
            public void run() {
                try {
                    this.f35376e.shutdown();
                    this.f35376e.awaitTermination(this.f35377f, this.f35378g);
                } catch (InterruptedException unused) {
                }
            }
        }

        /* renamed from: a */
        public final void m27760a(ExecutorService executorService, long j, TimeUnit timeUnit) {
            Preconditions.checkNotNull(executorService);
            Preconditions.checkNotNull(timeUnit);
            String valueOf = String.valueOf(executorService);
            StringBuilder sb = new StringBuilder(valueOf.length() + 24);
            sb.append("DelayedShutdownHook-for-");
            sb.append(valueOf);
            m27761b(MoreExecutors.m27751e(sb.toString(), new a(this, executorService, j, timeUnit)));
        }

        @VisibleForTesting
        /* renamed from: b */
        public void m27761b(Thread thread) {
            Runtime.getRuntime().addShutdownHook(thread);
        }

        /* renamed from: c */
        public final ExecutorService m27762c(ThreadPoolExecutor threadPoolExecutor) {
            return m27763d(threadPoolExecutor, 120L, TimeUnit.SECONDS);
        }

        /* renamed from: d */
        public final ExecutorService m27763d(ThreadPoolExecutor threadPoolExecutor, long j, TimeUnit timeUnit) {
            MoreExecutors.m27757k(threadPoolExecutor);
            ExecutorService unconfigurableExecutorService = Executors.unconfigurableExecutorService(threadPoolExecutor);
            m27760a(threadPoolExecutor, j, timeUnit);
            return unconfigurableExecutorService;
        }

        /* renamed from: e */
        public final ScheduledExecutorService m27764e(ScheduledThreadPoolExecutor scheduledThreadPoolExecutor) {
            return m27765f(scheduledThreadPoolExecutor, 120L, TimeUnit.SECONDS);
        }

        /* renamed from: f */
        public final ScheduledExecutorService m27765f(ScheduledThreadPoolExecutor scheduledThreadPoolExecutor, long j, TimeUnit timeUnit) {
            MoreExecutors.m27757k(scheduledThreadPoolExecutor);
            ScheduledExecutorService unconfigurableScheduledExecutorService = Executors.unconfigurableScheduledExecutorService(scheduledThreadPoolExecutor);
            m27760a(scheduledThreadPoolExecutor, j, timeUnit);
            return unconfigurableScheduledExecutorService;
        }
    }

    @GwtIncompatible
    /* renamed from: com.google.common.util.concurrent.MoreExecutors$h */
    /* loaded from: classes6.dex */
    public static class C6385h extends AbstractListeningExecutorService {

        /* renamed from: e */
        public final ExecutorService f35382e;

        public C6385h(ExecutorService executorService) {
            this.f35382e = (ExecutorService) Preconditions.checkNotNull(executorService);
        }

        @Override // java.util.concurrent.ExecutorService
        public final boolean awaitTermination(long j, TimeUnit timeUnit) throws InterruptedException {
            return this.f35382e.awaitTermination(j, timeUnit);
        }

        @Override // java.util.concurrent.Executor
        public final void execute(Runnable runnable) {
            this.f35382e.execute(runnable);
        }

        @Override // java.util.concurrent.ExecutorService
        public final boolean isShutdown() {
            return this.f35382e.isShutdown();
        }

        @Override // java.util.concurrent.ExecutorService
        public final boolean isTerminated() {
            return this.f35382e.isTerminated();
        }

        @Override // java.util.concurrent.ExecutorService
        public final void shutdown() {
            this.f35382e.shutdown();
        }

        @Override // java.util.concurrent.ExecutorService
        public final List<Runnable> shutdownNow() {
            return this.f35382e.shutdownNow();
        }

        public final String toString() {
            String obj = super.toString();
            String valueOf = String.valueOf(this.f35382e);
            StringBuilder sb = new StringBuilder(String.valueOf(obj).length() + 2 + valueOf.length());
            sb.append(obj);
            sb.append(IteratorUtils.f104923a);
            sb.append(valueOf);
            sb.append(IteratorUtils.f104924b);
            return sb.toString();
        }
    }

    @GwtIncompatible
    /* renamed from: com.google.common.util.concurrent.MoreExecutors$i */
    /* loaded from: classes6.dex */
    public static final class C6386i extends C6385h implements ListeningScheduledExecutorService {

        /* renamed from: f */
        public final ScheduledExecutorService f35383f;

        /* renamed from: com.google.common.util.concurrent.MoreExecutors$i$a */
        /* loaded from: classes6.dex */
        public static final class a<V> extends ForwardingListenableFuture.SimpleForwardingListenableFuture<V> implements ListenableScheduledFuture<V> {

            /* renamed from: f */
            public final ScheduledFuture<?> f35384f;

            public a(ListenableFuture<V> listenableFuture, ScheduledFuture<?> scheduledFuture) {
                super(listenableFuture);
                this.f35384f = scheduledFuture;
            }

            @Override // com.google.common.util.concurrent.ForwardingFuture, java.util.concurrent.Future
            public boolean cancel(boolean z) {
                boolean cancel = super.cancel(z);
                if (cancel) {
                    this.f35384f.cancel(z);
                }
                return cancel;
            }

            @Override // java.lang.Comparable
            /* renamed from: e, reason: merged with bridge method [inline-methods] */
            public int compareTo(Delayed delayed) {
                return this.f35384f.compareTo(delayed);
            }

            @Override // java.util.concurrent.Delayed
            public long getDelay(TimeUnit timeUnit) {
                return this.f35384f.getDelay(timeUnit);
            }
        }

        @GwtIncompatible
        /* renamed from: com.google.common.util.concurrent.MoreExecutors$i$b */
        /* loaded from: classes6.dex */
        public static final class b extends AbstractFuture.AbstractC6303i<Void> implements Runnable {

            /* renamed from: m */
            public final Runnable f35385m;

            public b(Runnable runnable) {
                this.f35385m = (Runnable) Preconditions.checkNotNull(runnable);
            }

            @Override // com.google.common.util.concurrent.AbstractFuture
            public String pendingToString() {
                String valueOf = String.valueOf(this.f35385m);
                StringBuilder sb = new StringBuilder(valueOf.length() + 7);
                sb.append("task=[");
                sb.append(valueOf);
                sb.append(IteratorUtils.f104924b);
                return sb.toString();
            }

            @Override // java.lang.Runnable
            public void run() {
                try {
                    this.f35385m.run();
                } catch (Throwable th) {
                    setException(th);
                    throw Throwables.propagate(th);
                }
            }
        }

        public C6386i(ScheduledExecutorService scheduledExecutorService) {
            super(scheduledExecutorService);
            this.f35383f = (ScheduledExecutorService) Preconditions.checkNotNull(scheduledExecutorService);
        }

        @Override // com.google.common.util.concurrent.ListeningScheduledExecutorService, java.util.concurrent.ScheduledExecutorService
        public ListenableScheduledFuture<?> scheduleAtFixedRate(Runnable runnable, long j, long j2, TimeUnit timeUnit) {
            b bVar = new b(runnable);
            return new a(bVar, this.f35383f.scheduleAtFixedRate(bVar, j, j2, timeUnit));
        }

        @Override // com.google.common.util.concurrent.ListeningScheduledExecutorService, java.util.concurrent.ScheduledExecutorService
        public ListenableScheduledFuture<?> scheduleWithFixedDelay(Runnable runnable, long j, long j2, TimeUnit timeUnit) {
            b bVar = new b(runnable);
            return new a(bVar, this.f35383f.scheduleWithFixedDelay(bVar, j, j2, timeUnit));
        }

        @Override // com.google.common.util.concurrent.ListeningScheduledExecutorService, java.util.concurrent.ScheduledExecutorService
        public ListenableScheduledFuture<?> schedule(Runnable runnable, long j, TimeUnit timeUnit) {
            TrustedListenableFutureTask m27847y = TrustedListenableFutureTask.m27847y(runnable, null);
            return new a(m27847y, this.f35383f.schedule(m27847y, j, timeUnit));
        }

        @Override // com.google.common.util.concurrent.ListeningScheduledExecutorService, java.util.concurrent.ScheduledExecutorService
        public <V> ListenableScheduledFuture<V> schedule(Callable<V> callable, long j, TimeUnit timeUnit) {
            TrustedListenableFutureTask m27848z = TrustedListenableFutureTask.m27848z(callable);
            return new a(m27848z, this.f35383f.schedule(m27848z, j, timeUnit));
        }
    }

    @Beta
    @GwtIncompatible
    public static void addDelayedShutdownHook(ExecutorService executorService, Duration duration) {
        addDelayedShutdownHook(executorService, ipi.m54767a(duration), TimeUnit.NANOSECONDS);
    }

    /* JADX WARN: Removed duplicated region for block: B:19:0x0092  */
    /* JADX WARN: Removed duplicated region for block: B:47:0x00b7 A[SYNTHETIC] */
    @com.google.common.annotations.GwtIncompatible
    @com.sunia.HTREnginev2.uvk
    /* renamed from: b */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static <T> T m27748b(com.google.common.util.concurrent.ListeningExecutorService r16, java.util.Collection<? extends java.util.concurrent.Callable<T>> r17, boolean r18, long r19, java.util.concurrent.TimeUnit r21) throws java.lang.InterruptedException, java.util.concurrent.ExecutionException, java.util.concurrent.TimeoutException {
        /*
            r1 = r16
            com.google.common.base.Preconditions.checkNotNull(r16)
            com.google.common.base.Preconditions.checkNotNull(r21)
            int r0 = r17.size()
            r2 = 1
            if (r0 <= 0) goto L11
            r3 = r2
            goto L12
        L11:
            r3 = 0
        L12:
            com.google.common.base.Preconditions.checkArgument(r3)
            java.util.ArrayList r3 = com.google.common.collect.Lists.newArrayListWithCapacity(r0)
            java.util.concurrent.LinkedBlockingQueue r4 = com.google.common.collect.Queues.newLinkedBlockingQueue()
            r5 = r19
            r7 = r21
            long r5 = r7.toNanos(r5)
            if (r18 == 0) goto L2f
            long r7 = java.lang.System.nanoTime()     // Catch: java.lang.Throwable -> L2c
            goto L31
        L2c:
            r0 = move-exception
            goto Lbb
        L2f:
            r7 = 0
        L31:
            java.util.Iterator r9 = r17.iterator()     // Catch: java.lang.Throwable -> L2c
            java.lang.Object r10 = r9.next()     // Catch: java.lang.Throwable -> L2c
            java.util.concurrent.Callable r10 = (java.util.concurrent.Callable) r10     // Catch: java.lang.Throwable -> L2c
            com.google.common.util.concurrent.ListenableFuture r10 = m27756j(r1, r10, r4)     // Catch: java.lang.Throwable -> L2c
            r3.add(r10)     // Catch: java.lang.Throwable -> L2c
            int r0 = r0 + (-1)
            r10 = 0
            r11 = r2
            r12 = r10
        L47:
            java.lang.Object r13 = r4.poll()     // Catch: java.lang.Throwable -> L2c
            java.util.concurrent.Future r13 = (java.util.concurrent.Future) r13     // Catch: java.lang.Throwable -> L2c
            if (r13 != 0) goto L8d
            if (r0 <= 0) goto L63
            int r0 = r0 + (-1)
            java.lang.Object r14 = r9.next()     // Catch: java.lang.Throwable -> L2c
            java.util.concurrent.Callable r14 = (java.util.concurrent.Callable) r14     // Catch: java.lang.Throwable -> L2c
            com.google.common.util.concurrent.ListenableFuture r14 = m27756j(r1, r14, r4)     // Catch: java.lang.Throwable -> L2c
            r3.add(r14)     // Catch: java.lang.Throwable -> L2c
            int r11 = r11 + 1
            goto L8d
        L63:
            if (r11 != 0) goto L6d
            if (r12 != 0) goto L6c
            java.util.concurrent.ExecutionException r12 = new java.util.concurrent.ExecutionException     // Catch: java.lang.Throwable -> L2c
            r12.<init>(r10)     // Catch: java.lang.Throwable -> L2c
        L6c:
            throw r12     // Catch: java.lang.Throwable -> L2c
        L6d:
            if (r18 == 0) goto L87
            java.util.concurrent.TimeUnit r13 = java.util.concurrent.TimeUnit.NANOSECONDS     // Catch: java.lang.Throwable -> L2c
            java.lang.Object r13 = r4.poll(r5, r13)     // Catch: java.lang.Throwable -> L2c
            java.util.concurrent.Future r13 = (java.util.concurrent.Future) r13     // Catch: java.lang.Throwable -> L2c
            if (r13 == 0) goto L81
            long r14 = java.lang.System.nanoTime()     // Catch: java.lang.Throwable -> L2c
            long r7 = r14 - r7
            long r5 = r5 - r7
            goto L8e
        L81:
            java.util.concurrent.TimeoutException r0 = new java.util.concurrent.TimeoutException     // Catch: java.lang.Throwable -> L2c
            r0.<init>()     // Catch: java.lang.Throwable -> L2c
            throw r0     // Catch: java.lang.Throwable -> L2c
        L87:
            java.lang.Object r13 = r4.take()     // Catch: java.lang.Throwable -> L2c
            java.util.concurrent.Future r13 = (java.util.concurrent.Future) r13     // Catch: java.lang.Throwable -> L2c
        L8d:
            r14 = r7
        L8e:
            r6 = r5
            r5 = r0
            if (r13 == 0) goto Lb7
            int r11 = r11 + (-1)
            java.lang.Object r0 = r13.get()     // Catch: java.lang.Throwable -> L2c java.lang.RuntimeException -> Lad java.util.concurrent.ExecutionException -> Lb5
            java.util.Iterator r1 = r3.iterator()
        L9c:
            boolean r3 = r1.hasNext()
            if (r3 == 0) goto Lac
            java.lang.Object r3 = r1.next()
            java.util.concurrent.Future r3 = (java.util.concurrent.Future) r3
            r3.cancel(r2)
            goto L9c
        Lac:
            return r0
        Lad:
            r0 = move-exception
            r8 = r0
            java.util.concurrent.ExecutionException r12 = new java.util.concurrent.ExecutionException     // Catch: java.lang.Throwable -> L2c
            r12.<init>(r8)     // Catch: java.lang.Throwable -> L2c
            goto Lb7
        Lb5:
            r0 = move-exception
            r12 = r0
        Lb7:
            r0 = r5
            r5 = r6
            r7 = r14
            goto L47
        Lbb:
            java.util.Iterator r1 = r3.iterator()
        Lbf:
            boolean r3 = r1.hasNext()
            if (r3 == 0) goto Lcf
            java.lang.Object r3 = r1.next()
            java.util.concurrent.Future r3 = (java.util.concurrent.Future) r3
            r3.cancel(r2)
            goto Lbf
        Lcf:
            throw r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.common.util.concurrent.MoreExecutors.m27748b(com.google.common.util.concurrent.ListeningExecutorService, java.util.Collection, boolean, long, java.util.concurrent.TimeUnit):java.lang.Object");
    }

    @GwtIncompatible
    @uvk
    /* renamed from: c */
    public static <T> T m27749c(ListeningExecutorService listeningExecutorService, Collection<? extends Callable<T>> collection, boolean z, Duration duration) throws InterruptedException, ExecutionException, TimeoutException {
        return (T) m27748b(listeningExecutorService, collection, z, ipi.m54767a(duration), TimeUnit.NANOSECONDS);
    }

    @GwtIncompatible
    /* renamed from: d */
    public static boolean m27750d() {
        if (System.getProperty("com.google.appengine.runtime.environment") == null) {
            return false;
        }
        try {
            Class.forName("com.google.appengine.api.utils.SystemProperty");
            return Class.forName("com.google.apphosting.api.ApiProxy").getMethod("getCurrentEnvironment", new Class[0]).invoke(null, new Object[0]) != null;
        } catch (ClassNotFoundException | IllegalAccessException | NoSuchMethodException | InvocationTargetException unused) {
            return false;
        }
    }

    public static Executor directExecutor() {
        return DirectExecutor.INSTANCE;
    }

    @GwtIncompatible
    /* renamed from: e */
    public static Thread m27751e(String str, Runnable runnable) {
        Preconditions.checkNotNull(str);
        Preconditions.checkNotNull(runnable);
        Thread newThread = platformThreadFactory().newThread(runnable);
        try {
            newThread.setName(str);
        } catch (SecurityException unused) {
        }
        return newThread;
    }

    /* renamed from: f */
    public static Executor m27752f(Executor executor, AbstractFuture<?> abstractFuture) {
        Preconditions.checkNotNull(executor);
        Preconditions.checkNotNull(abstractFuture);
        return executor == directExecutor() ? executor : new ExecutorC6382e(executor, abstractFuture);
    }

    @GwtIncompatible
    /* renamed from: g */
    public static Executor m27753g(Executor executor, Supplier<String> supplier) {
        Preconditions.checkNotNull(executor);
        Preconditions.checkNotNull(supplier);
        return new ExecutorC6379b(executor, supplier);
    }

    @Beta
    @GwtIncompatible
    public static ExecutorService getExitingExecutorService(ThreadPoolExecutor threadPoolExecutor, Duration duration) {
        return getExitingExecutorService(threadPoolExecutor, ipi.m54767a(duration), TimeUnit.NANOSECONDS);
    }

    @Beta
    @GwtIncompatible
    public static ScheduledExecutorService getExitingScheduledExecutorService(ScheduledThreadPoolExecutor scheduledThreadPoolExecutor, Duration duration) {
        return getExitingScheduledExecutorService(scheduledThreadPoolExecutor, ipi.m54767a(duration), TimeUnit.NANOSECONDS);
    }

    @GwtIncompatible
    /* renamed from: h */
    public static ExecutorService m27754h(ExecutorService executorService, Supplier<String> supplier) {
        Preconditions.checkNotNull(executorService);
        Preconditions.checkNotNull(supplier);
        return new C6380c(executorService, supplier);
    }

    @GwtIncompatible
    /* renamed from: i */
    public static ScheduledExecutorService m27755i(ScheduledExecutorService scheduledExecutorService, Supplier<String> supplier) {
        Preconditions.checkNotNull(scheduledExecutorService);
        Preconditions.checkNotNull(supplier);
        return new C6381d(scheduledExecutorService, supplier);
    }

    @GwtIncompatible
    /* renamed from: j */
    public static <T> ListenableFuture<T> m27756j(ListeningExecutorService listeningExecutorService, Callable<T> callable, BlockingQueue<Future<T>> blockingQueue) {
        ListenableFuture<T> submit = listeningExecutorService.submit((Callable) callable);
        submit.addListener(new RunnableC6378a(blockingQueue, submit), directExecutor());
        return submit;
    }

    @GwtIncompatible
    /* renamed from: k */
    public static void m27757k(ThreadPoolExecutor threadPoolExecutor) {
        threadPoolExecutor.setThreadFactory(new ThreadFactoryBuilder().setDaemon(true).setThreadFactory(threadPoolExecutor.getThreadFactory()).build());
    }

    @GwtIncompatible
    public static ListeningExecutorService listeningDecorator(ExecutorService executorService) {
        ListeningExecutorService c6385h;
        if (executorService instanceof ListeningExecutorService) {
            return (ListeningExecutorService) executorService;
        }
        if (executorService instanceof ScheduledExecutorService) {
            c6385h = new C6386i((ScheduledExecutorService) executorService);
        } else {
            c6385h = new C6385h(executorService);
        }
        return c6385h;
    }

    @GwtIncompatible
    public static ListeningExecutorService newDirectExecutorService() {
        return new C6384g(null);
    }

    @GwtIncompatible
    public static Executor newSequentialExecutor(Executor executor) {
        return new SequentialExecutor(executor);
    }

    @Beta
    @GwtIncompatible
    public static ThreadFactory platformThreadFactory() {
        if (!m27750d()) {
            return Executors.defaultThreadFactory();
        }
        try {
            return (ThreadFactory) Class.forName("com.google.appengine.api.ThreadManager").getMethod("currentRequestThreadFactory", new Class[0]).invoke(null, new Object[0]);
        } catch (ClassNotFoundException e) {
            throw new RuntimeException("Couldn't invoke ThreadManager.currentRequestThreadFactory", e);
        } catch (IllegalAccessException e2) {
            throw new RuntimeException("Couldn't invoke ThreadManager.currentRequestThreadFactory", e2);
        } catch (NoSuchMethodException e3) {
            throw new RuntimeException("Couldn't invoke ThreadManager.currentRequestThreadFactory", e3);
        } catch (InvocationTargetException e4) {
            throw Throwables.propagate(e4.getCause());
        }
    }

    @CanIgnoreReturnValue
    @Beta
    @GwtIncompatible
    public static boolean shutdownAndAwaitTermination(ExecutorService executorService, Duration duration) {
        return shutdownAndAwaitTermination(executorService, ipi.m54767a(duration), TimeUnit.NANOSECONDS);
    }

    @Beta
    @GwtIncompatible
    public static void addDelayedShutdownHook(ExecutorService executorService, long j, TimeUnit timeUnit) {
        new C6383f().m27760a(executorService, j, timeUnit);
    }

    @CanIgnoreReturnValue
    @Beta
    @GwtIncompatible
    public static boolean shutdownAndAwaitTermination(ExecutorService executorService, long j, TimeUnit timeUnit) {
        long nanos = timeUnit.toNanos(j) / 2;
        executorService.shutdown();
        try {
            TimeUnit timeUnit2 = TimeUnit.NANOSECONDS;
            if (!executorService.awaitTermination(nanos, timeUnit2)) {
                executorService.shutdownNow();
                executorService.awaitTermination(nanos, timeUnit2);
            }
        } catch (InterruptedException unused) {
            Thread.currentThread().interrupt();
            executorService.shutdownNow();
        }
        return executorService.isTerminated();
    }

    @Beta
    @GwtIncompatible
    public static ExecutorService getExitingExecutorService(ThreadPoolExecutor threadPoolExecutor, long j, TimeUnit timeUnit) {
        return new C6383f().m27763d(threadPoolExecutor, j, timeUnit);
    }

    @Beta
    @GwtIncompatible
    public static ScheduledExecutorService getExitingScheduledExecutorService(ScheduledThreadPoolExecutor scheduledThreadPoolExecutor, long j, TimeUnit timeUnit) {
        return new C6383f().m27765f(scheduledThreadPoolExecutor, j, timeUnit);
    }

    @GwtIncompatible
    /* renamed from: com.google.common.util.concurrent.MoreExecutors$g */
    /* loaded from: classes6.dex */
    public static final class C6384g extends AbstractListeningExecutorService {

        /* renamed from: e */
        public final Object f35379e;

        /* renamed from: f */
        @GuardedBy(DevicePushAction.LOCK_DEVICE)
        public int f35380f;

        /* renamed from: g */
        @GuardedBy(DevicePushAction.LOCK_DEVICE)
        public boolean f35381g;

        public C6384g() {
            this.f35379e = new Object();
            this.f35380f = 0;
            this.f35381g = false;
        }

        /* renamed from: a */
        public final void m27766a() {
            synchronized (this.f35379e) {
                int i = this.f35380f - 1;
                this.f35380f = i;
                if (i == 0) {
                    this.f35379e.notifyAll();
                }
            }
        }

        @Override // java.util.concurrent.ExecutorService
        public boolean awaitTermination(long j, TimeUnit timeUnit) throws InterruptedException {
            long nanos = timeUnit.toNanos(j);
            synchronized (this.f35379e) {
                while (true) {
                    if (this.f35381g && this.f35380f == 0) {
                        return true;
                    }
                    if (nanos <= 0) {
                        return false;
                    }
                    long nanoTime = System.nanoTime();
                    TimeUnit.NANOSECONDS.timedWait(this.f35379e, nanos);
                    nanos -= System.nanoTime() - nanoTime;
                }
            }
        }

        /* renamed from: b */
        public final void m27767b() {
            synchronized (this.f35379e) {
                if (this.f35381g) {
                    throw new RejectedExecutionException("Executor already shutdown");
                }
                this.f35380f++;
            }
        }

        @Override // java.util.concurrent.Executor
        public void execute(Runnable runnable) {
            m27767b();
            try {
                runnable.run();
            } finally {
                m27766a();
            }
        }

        @Override // java.util.concurrent.ExecutorService
        public boolean isShutdown() {
            boolean z;
            synchronized (this.f35379e) {
                z = this.f35381g;
            }
            return z;
        }

        @Override // java.util.concurrent.ExecutorService
        public boolean isTerminated() {
            boolean z;
            synchronized (this.f35379e) {
                z = this.f35381g && this.f35380f == 0;
            }
            return z;
        }

        @Override // java.util.concurrent.ExecutorService
        public void shutdown() {
            synchronized (this.f35379e) {
                this.f35381g = true;
                if (this.f35380f == 0) {
                    this.f35379e.notifyAll();
                }
            }
        }

        @Override // java.util.concurrent.ExecutorService
        public List<Runnable> shutdownNow() {
            shutdown();
            return Collections.emptyList();
        }

        public /* synthetic */ C6384g(RunnableC6378a runnableC6378a) {
            this();
        }
    }

    @Beta
    @GwtIncompatible
    public static ExecutorService getExitingExecutorService(ThreadPoolExecutor threadPoolExecutor) {
        return new C6383f().m27762c(threadPoolExecutor);
    }

    @Beta
    @GwtIncompatible
    public static ScheduledExecutorService getExitingScheduledExecutorService(ScheduledThreadPoolExecutor scheduledThreadPoolExecutor) {
        return new C6383f().m27764e(scheduledThreadPoolExecutor);
    }

    @GwtIncompatible
    public static ListeningScheduledExecutorService listeningDecorator(ScheduledExecutorService scheduledExecutorService) {
        if (scheduledExecutorService instanceof ListeningScheduledExecutorService) {
            return (ListeningScheduledExecutorService) scheduledExecutorService;
        }
        return new C6386i(scheduledExecutorService);
    }
}
