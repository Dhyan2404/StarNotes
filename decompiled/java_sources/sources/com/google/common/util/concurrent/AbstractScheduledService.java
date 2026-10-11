package com.google.common.util.concurrent;

import com.google.common.annotations.GwtIncompatible;
import com.google.common.base.Preconditions;
import com.google.common.base.Supplier;
import com.google.common.util.concurrent.Service;
import com.google.errorprone.annotations.CanIgnoreReturnValue;
import com.google.errorprone.annotations.concurrent.GuardedBy;
import com.onyx.android.sdk.data.account.bean.DevicePushAction;
import com.sunia.HTREnginev2.ipi;
import com.sunia.HTREnginev2.pnf;
import java.time.Duration;
import java.util.Objects;
import java.util.concurrent.Callable;
import java.util.concurrent.Executor;
import java.util.concurrent.Executors;
import java.util.concurrent.Future;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.ScheduledFuture;
import java.util.concurrent.ThreadFactory;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.TimeoutException;
import java.util.concurrent.locks.ReentrantLock;
import java.util.logging.Logger;
import javax.annotation.CheckForNull;
import org.apache.commons.collections4.IteratorUtils;

@GwtIncompatible
@pnf
/* loaded from: classes6.dex */
public abstract class AbstractScheduledService implements Service {

    /* renamed from: b */
    public static final Logger f35181b = Logger.getLogger(AbstractScheduledService.class.getName());

    /* renamed from: a */
    public final AbstractService f35182a = new C6317e(this, null);

    /* loaded from: classes6.dex */
    public static abstract class Scheduler {

        /* renamed from: com.google.common.util.concurrent.AbstractScheduledService$Scheduler$a */
        /* loaded from: classes6.dex */
        public class C6311a extends Scheduler {

            /* renamed from: a */
            public final /* synthetic */ long f35193a;

            /* renamed from: b */
            public final /* synthetic */ long f35194b;

            /* renamed from: c */
            public final /* synthetic */ TimeUnit f35195c;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            public C6311a(long j, long j2, TimeUnit timeUnit) {
                super(null);
                this.f35193a = j;
                this.f35194b = j2;
                this.f35195c = timeUnit;
            }

            @Override // com.google.common.util.concurrent.AbstractScheduledService.Scheduler
            /* renamed from: a */
            public InterfaceC6315c mo27575a(AbstractService abstractService, ScheduledExecutorService scheduledExecutorService, Runnable runnable) {
                return new C6316d(scheduledExecutorService.scheduleWithFixedDelay(runnable, this.f35193a, this.f35194b, this.f35195c));
            }
        }

        /* renamed from: com.google.common.util.concurrent.AbstractScheduledService$Scheduler$b */
        /* loaded from: classes6.dex */
        public class C6312b extends Scheduler {

            /* renamed from: a */
            public final /* synthetic */ long f35196a;

            /* renamed from: b */
            public final /* synthetic */ long f35197b;

            /* renamed from: c */
            public final /* synthetic */ TimeUnit f35198c;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            public C6312b(long j, long j2, TimeUnit timeUnit) {
                super(null);
                this.f35196a = j;
                this.f35197b = j2;
                this.f35198c = timeUnit;
            }

            @Override // com.google.common.util.concurrent.AbstractScheduledService.Scheduler
            /* renamed from: a */
            public InterfaceC6315c mo27575a(AbstractService abstractService, ScheduledExecutorService scheduledExecutorService, Runnable runnable) {
                return new C6316d(scheduledExecutorService.scheduleAtFixedRate(runnable, this.f35196a, this.f35197b, this.f35198c));
            }
        }

        public /* synthetic */ Scheduler(C6313a c6313a) {
            this();
        }

        public static Scheduler newFixedDelaySchedule(Duration duration, Duration duration2) {
            return newFixedDelaySchedule(ipi.m54767a(duration), ipi.m54767a(duration2), TimeUnit.NANOSECONDS);
        }

        public static Scheduler newFixedRateSchedule(Duration duration, Duration duration2) {
            return newFixedRateSchedule(ipi.m54767a(duration), ipi.m54767a(duration2), TimeUnit.NANOSECONDS);
        }

        /* renamed from: a */
        public abstract InterfaceC6315c mo27575a(AbstractService abstractService, ScheduledExecutorService scheduledExecutorService, Runnable runnable);

        public Scheduler() {
        }

        public static Scheduler newFixedDelaySchedule(long j, long j2, TimeUnit timeUnit) {
            Preconditions.checkNotNull(timeUnit);
            Preconditions.checkArgument(j2 > 0, "delay must be > 0, found %s", j2);
            return new C6311a(j, j2, timeUnit);
        }

        public static Scheduler newFixedRateSchedule(long j, long j2, TimeUnit timeUnit) {
            Preconditions.checkNotNull(timeUnit);
            Preconditions.checkArgument(j2 > 0, "period must be > 0, found %s", j2);
            return new C6312b(j, j2, timeUnit);
        }
    }

    /* renamed from: com.google.common.util.concurrent.AbstractScheduledService$a */
    /* loaded from: classes6.dex */
    public class C6313a extends Service.Listener {

        /* renamed from: a */
        public final /* synthetic */ ScheduledExecutorService f35199a;

        public C6313a(AbstractScheduledService abstractScheduledService, ScheduledExecutorService scheduledExecutorService) {
            this.f35199a = scheduledExecutorService;
        }

        @Override // com.google.common.util.concurrent.Service.Listener
        public void failed(Service.State state, Throwable th) {
            this.f35199a.shutdown();
        }

        @Override // com.google.common.util.concurrent.Service.Listener
        public void terminated(Service.State state) {
            this.f35199a.shutdown();
        }
    }

    /* renamed from: com.google.common.util.concurrent.AbstractScheduledService$b */
    /* loaded from: classes6.dex */
    public class ThreadFactoryC6314b implements ThreadFactory {
        public ThreadFactoryC6314b() {
        }

        @Override // java.util.concurrent.ThreadFactory
        public Thread newThread(Runnable runnable) {
            return MoreExecutors.m27751e(AbstractScheduledService.this.serviceName(), runnable);
        }
    }

    /* renamed from: com.google.common.util.concurrent.AbstractScheduledService$c */
    /* loaded from: classes6.dex */
    public interface InterfaceC6315c {
        void cancel(boolean z);

        boolean isCancelled();
    }

    /* renamed from: com.google.common.util.concurrent.AbstractScheduledService$d */
    /* loaded from: classes6.dex */
    public static final class C6316d implements InterfaceC6315c {

        /* renamed from: a */
        public final Future<?> f35201a;

        public C6316d(Future<?> future) {
            this.f35201a = future;
        }

        @Override // com.google.common.util.concurrent.AbstractScheduledService.InterfaceC6315c
        public void cancel(boolean z) {
            this.f35201a.cancel(z);
        }

        @Override // com.google.common.util.concurrent.AbstractScheduledService.InterfaceC6315c
        public boolean isCancelled() {
            return this.f35201a.isCancelled();
        }
    }

    @Override // com.google.common.util.concurrent.Service
    public final void addListener(Service.Listener listener, Executor executor) {
        this.f35182a.addListener(listener, executor);
    }

    @Override // com.google.common.util.concurrent.Service
    public final void awaitRunning() {
        this.f35182a.awaitRunning();
    }

    @Override // com.google.common.util.concurrent.Service
    public final void awaitTerminated() {
        this.f35182a.awaitTerminated();
    }

    public ScheduledExecutorService executor() {
        ScheduledExecutorService newSingleThreadScheduledExecutor = Executors.newSingleThreadScheduledExecutor(new ThreadFactoryC6314b());
        addListener(new C6313a(this, newSingleThreadScheduledExecutor), MoreExecutors.directExecutor());
        return newSingleThreadScheduledExecutor;
    }

    @Override // com.google.common.util.concurrent.Service
    public final Throwable failureCause() {
        return this.f35182a.failureCause();
    }

    @Override // com.google.common.util.concurrent.Service
    public final boolean isRunning() {
        return this.f35182a.isRunning();
    }

    public abstract void runOneIteration() throws Exception;

    public abstract Scheduler scheduler();

    public String serviceName() {
        return getClass().getSimpleName();
    }

    public void shutDown() throws Exception {
    }

    @Override // com.google.common.util.concurrent.Service
    @CanIgnoreReturnValue
    public final Service startAsync() {
        this.f35182a.startAsync();
        return this;
    }

    public void startUp() throws Exception {
    }

    @Override // com.google.common.util.concurrent.Service
    public final Service.State state() {
        return this.f35182a.state();
    }

    @Override // com.google.common.util.concurrent.Service
    @CanIgnoreReturnValue
    public final Service stopAsync() {
        this.f35182a.stopAsync();
        return this;
    }

    public String toString() {
        String serviceName = serviceName();
        String valueOf = String.valueOf(state());
        StringBuilder sb = new StringBuilder(String.valueOf(serviceName).length() + 3 + valueOf.length());
        sb.append(serviceName);
        sb.append(" [");
        sb.append(valueOf);
        sb.append(IteratorUtils.f104924b);
        return sb.toString();
    }

    /* loaded from: classes6.dex */
    public static abstract class CustomScheduler extends Scheduler {

        /* renamed from: com.google.common.util.concurrent.AbstractScheduledService$CustomScheduler$a */
        /* loaded from: classes6.dex */
        public final class CallableC6309a implements Callable<Void> {

            /* renamed from: e */
            public final Runnable f35185e;

            /* renamed from: f */
            public final ScheduledExecutorService f35186f;

            /* renamed from: g */
            public final AbstractService f35187g;

            /* renamed from: h */
            public final ReentrantLock f35188h = new ReentrantLock();

            /* renamed from: i */
            @CheckForNull
            @GuardedBy(DevicePushAction.LOCK_DEVICE)
            public C6310b f35189i;

            public CallableC6309a(AbstractService abstractService, ScheduledExecutorService scheduledExecutorService, Runnable runnable) {
                this.f35185e = runnable;
                this.f35186f = scheduledExecutorService;
                this.f35187g = abstractService;
            }

            @Override // java.util.concurrent.Callable
            @CheckForNull
            /* renamed from: a, reason: merged with bridge method [inline-methods] */
            public Void call() throws Exception {
                this.f35185e.run();
                m27580c();
                return null;
            }

            @GuardedBy(DevicePushAction.LOCK_DEVICE)
            /* renamed from: b */
            public final InterfaceC6315c m27579b(Schedule schedule) {
                C6310b c6310b = this.f35189i;
                if (c6310b == null) {
                    C6310b c6310b2 = new C6310b(this.f35188h, m27581d(schedule));
                    this.f35189i = c6310b2;
                    return c6310b2;
                }
                if (!c6310b.f35192b.isCancelled()) {
                    this.f35189i.f35192b = m27581d(schedule);
                }
                return this.f35189i;
            }

            @CanIgnoreReturnValue
            /* renamed from: c */
            public InterfaceC6315c m27580c() {
                InterfaceC6315c c6316d;
                try {
                    Schedule nextSchedule = CustomScheduler.this.getNextSchedule();
                    this.f35188h.lock();
                    try {
                        c6316d = m27579b(nextSchedule);
                        this.f35188h.unlock();
                        th = null;
                    } catch (Throwable th) {
                        th = th;
                        try {
                            c6316d = new C6316d(Futures.immediateCancelledFuture());
                        } finally {
                            this.f35188h.unlock();
                        }
                    }
                    if (th != null) {
                        this.f35187g.notifyFailed(th);
                    }
                    return c6316d;
                } catch (Throwable th2) {
                    this.f35187g.notifyFailed(th2);
                    return new C6316d(Futures.immediateCancelledFuture());
                }
            }

            /* renamed from: d */
            public final ScheduledFuture<Void> m27581d(Schedule schedule) {
                return this.f35186f.schedule(this, schedule.f35183a, schedule.f35184b);
            }
        }

        /* renamed from: com.google.common.util.concurrent.AbstractScheduledService$CustomScheduler$b */
        /* loaded from: classes6.dex */
        public static final class C6310b implements InterfaceC6315c {

            /* renamed from: a */
            public final ReentrantLock f35191a;

            /* renamed from: b */
            @GuardedBy(DevicePushAction.LOCK_DEVICE)
            public Future<Void> f35192b;

            public C6310b(ReentrantLock reentrantLock, Future<Void> future) {
                this.f35191a = reentrantLock;
                this.f35192b = future;
            }

            @Override // com.google.common.util.concurrent.AbstractScheduledService.InterfaceC6315c
            public void cancel(boolean z) {
                this.f35191a.lock();
                try {
                    this.f35192b.cancel(z);
                } finally {
                    this.f35191a.unlock();
                }
            }

            @Override // com.google.common.util.concurrent.AbstractScheduledService.InterfaceC6315c
            public boolean isCancelled() {
                this.f35191a.lock();
                try {
                    return this.f35192b.isCancelled();
                } finally {
                    this.f35191a.unlock();
                }
            }
        }

        public CustomScheduler() {
            super(null);
        }

        @Override // com.google.common.util.concurrent.AbstractScheduledService.Scheduler
        /* renamed from: a */
        public final InterfaceC6315c mo27575a(AbstractService abstractService, ScheduledExecutorService scheduledExecutorService, Runnable runnable) {
            return new CallableC6309a(abstractService, scheduledExecutorService, runnable).m27580c();
        }

        public abstract Schedule getNextSchedule() throws Exception;

        /* loaded from: classes6.dex */
        public static final class Schedule {

            /* renamed from: a */
            public final long f35183a;

            /* renamed from: b */
            public final TimeUnit f35184b;

            public Schedule(long j, TimeUnit timeUnit) {
                this.f35183a = j;
                this.f35184b = (TimeUnit) Preconditions.checkNotNull(timeUnit);
            }

            public Schedule(Duration duration) {
                this(ipi.m54767a(duration), TimeUnit.NANOSECONDS);
            }
        }
    }

    @Override // com.google.common.util.concurrent.Service
    public final void awaitRunning(Duration duration) throws TimeoutException {
        super.awaitRunning(duration);
    }

    @Override // com.google.common.util.concurrent.Service
    public final void awaitTerminated(Duration duration) throws TimeoutException {
        super.awaitTerminated(duration);
    }

    /* renamed from: com.google.common.util.concurrent.AbstractScheduledService$e */
    /* loaded from: classes6.dex */
    public final class C6317e extends AbstractService {

        /* renamed from: p */
        @CheckForNull
        public volatile InterfaceC6315c f35202p;

        /* renamed from: q */
        @CheckForNull
        public volatile ScheduledExecutorService f35203q;

        /* renamed from: r */
        public final ReentrantLock f35204r;

        /* renamed from: s */
        public final Runnable f35205s;

        /* renamed from: com.google.common.util.concurrent.AbstractScheduledService$e$a */
        /* loaded from: classes6.dex */
        public class a implements Supplier<String> {
            public a() {
            }

            @Override // com.google.common.base.Supplier, java.util.function.Supplier
            /* renamed from: a, reason: merged with bridge method [inline-methods] */
            public String get() {
                String serviceName = AbstractScheduledService.this.serviceName();
                String valueOf = String.valueOf(C6317e.this.state());
                StringBuilder sb = new StringBuilder(String.valueOf(serviceName).length() + 1 + valueOf.length());
                sb.append(serviceName);
                sb.append(" ");
                sb.append(valueOf);
                return sb.toString();
            }
        }

        /* renamed from: com.google.common.util.concurrent.AbstractScheduledService$e$b */
        /* loaded from: classes6.dex */
        public class b implements Runnable {
            public b() {
            }

            @Override // java.lang.Runnable
            public void run() {
                C6317e.this.f35204r.lock();
                try {
                    AbstractScheduledService.this.startUp();
                    C6317e c6317e = C6317e.this;
                    c6317e.f35202p = AbstractScheduledService.this.scheduler().mo27575a(AbstractScheduledService.this.f35182a, C6317e.this.f35203q, C6317e.this.f35205s);
                    C6317e.this.notifyStarted();
                } finally {
                    try {
                    } finally {
                    }
                }
            }
        }

        /* renamed from: com.google.common.util.concurrent.AbstractScheduledService$e$c */
        /* loaded from: classes6.dex */
        public class c implements Runnable {
            public c() {
            }

            @Override // java.lang.Runnable
            public void run() {
                try {
                    C6317e.this.f35204r.lock();
                    try {
                        if (C6317e.this.state() != Service.State.STOPPING) {
                            return;
                        }
                        AbstractScheduledService.this.shutDown();
                        C6317e.this.f35204r.unlock();
                        C6317e.this.notifyStopped();
                    } finally {
                        C6317e.this.f35204r.unlock();
                    }
                } catch (Throwable th) {
                    C6317e.this.notifyFailed(th);
                }
            }
        }

        /* renamed from: com.google.common.util.concurrent.AbstractScheduledService$e$d */
        /* loaded from: classes6.dex */
        public class d implements Runnable {
            public d() {
            }

            @Override // java.lang.Runnable
            public void run() {
                InterfaceC6315c interfaceC6315c;
                C6317e.this.f35204r.lock();
                try {
                    interfaceC6315c = C6317e.this.f35202p;
                    Objects.requireNonNull(interfaceC6315c);
                } finally {
                    try {
                    } finally {
                    }
                }
                if (interfaceC6315c.isCancelled()) {
                    return;
                }
                AbstractScheduledService.this.runOneIteration();
            }
        }

        public C6317e() {
            this.f35204r = new ReentrantLock();
            this.f35205s = new d();
        }

        @Override // com.google.common.util.concurrent.AbstractService
        public final void doStart() {
            this.f35203q = MoreExecutors.m27755i(AbstractScheduledService.this.executor(), new a());
            this.f35203q.execute(new b());
        }

        @Override // com.google.common.util.concurrent.AbstractService
        public final void doStop() {
            Objects.requireNonNull(this.f35202p);
            Objects.requireNonNull(this.f35203q);
            this.f35202p.cancel(false);
            this.f35203q.execute(new c());
        }

        @Override // com.google.common.util.concurrent.AbstractService
        public String toString() {
            return AbstractScheduledService.this.toString();
        }

        public /* synthetic */ C6317e(AbstractScheduledService abstractScheduledService, C6313a c6313a) {
            this();
        }
    }

    @Override // com.google.common.util.concurrent.Service
    public final void awaitRunning(long j, TimeUnit timeUnit) throws TimeoutException {
        this.f35182a.awaitRunning(j, timeUnit);
    }

    @Override // com.google.common.util.concurrent.Service
    public final void awaitTerminated(long j, TimeUnit timeUnit) throws TimeoutException {
        this.f35182a.awaitTerminated(j, timeUnit);
    }
}
