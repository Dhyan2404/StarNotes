package com.google.common.util.concurrent;

import com.google.common.annotations.GwtIncompatible;
import com.google.common.base.Supplier;
import com.google.common.util.concurrent.Service;
import com.google.errorprone.annotations.CanIgnoreReturnValue;
import com.sunia.HTREnginev2.pnf;
import java.time.Duration;
import java.util.concurrent.Executor;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.TimeoutException;
import org.apache.commons.collections4.IteratorUtils;

@GwtIncompatible
@pnf
/* loaded from: classes6.dex */
public abstract class AbstractIdleService implements Service {

    /* renamed from: a */
    public final Supplier<String> f35174a;

    /* renamed from: b */
    public final Service f35175b;

    /* renamed from: com.google.common.util.concurrent.AbstractIdleService$a */
    /* loaded from: classes6.dex */
    public class ExecutorC6306a implements Executor {
        public ExecutorC6306a() {
        }

        @Override // java.util.concurrent.Executor
        public void execute(Runnable runnable) {
            MoreExecutors.m27751e((String) AbstractIdleService.this.f35174a.get(), runnable).start();
        }
    }

    /* renamed from: com.google.common.util.concurrent.AbstractIdleService$b */
    /* loaded from: classes6.dex */
    public final class C6307b extends AbstractService {

        /* renamed from: com.google.common.util.concurrent.AbstractIdleService$b$a */
        /* loaded from: classes6.dex */
        public class a implements Runnable {
            public a() {
            }

            @Override // java.lang.Runnable
            public void run() {
                try {
                    AbstractIdleService.this.startUp();
                    C6307b.this.notifyStarted();
                } catch (Throwable th) {
                    C6307b.this.notifyFailed(th);
                }
            }
        }

        /* renamed from: com.google.common.util.concurrent.AbstractIdleService$b$b */
        /* loaded from: classes6.dex */
        public class b implements Runnable {
            public b() {
            }

            @Override // java.lang.Runnable
            public void run() {
                try {
                    AbstractIdleService.this.shutDown();
                    C6307b.this.notifyStopped();
                } catch (Throwable th) {
                    C6307b.this.notifyFailed(th);
                }
            }
        }

        public C6307b() {
        }

        @Override // com.google.common.util.concurrent.AbstractService
        public final void doStart() {
            MoreExecutors.m27753g(AbstractIdleService.this.executor(), AbstractIdleService.this.f35174a).execute(new a());
        }

        @Override // com.google.common.util.concurrent.AbstractService
        public final void doStop() {
            MoreExecutors.m27753g(AbstractIdleService.this.executor(), AbstractIdleService.this.f35174a).execute(new b());
        }

        @Override // com.google.common.util.concurrent.AbstractService
        public String toString() {
            return AbstractIdleService.this.toString();
        }

        public /* synthetic */ C6307b(AbstractIdleService abstractIdleService, ExecutorC6306a executorC6306a) {
            this();
        }
    }

    /* renamed from: com.google.common.util.concurrent.AbstractIdleService$c */
    /* loaded from: classes6.dex */
    public final class C6308c implements Supplier<String> {
        public C6308c() {
        }

        @Override // com.google.common.base.Supplier, java.util.function.Supplier
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public String get() {
            String serviceName = AbstractIdleService.this.serviceName();
            String valueOf = String.valueOf(AbstractIdleService.this.state());
            StringBuilder sb = new StringBuilder(String.valueOf(serviceName).length() + 1 + valueOf.length());
            sb.append(serviceName);
            sb.append(" ");
            sb.append(valueOf);
            return sb.toString();
        }

        public /* synthetic */ C6308c(AbstractIdleService abstractIdleService, ExecutorC6306a executorC6306a) {
            this();
        }
    }

    public AbstractIdleService() {
        ExecutorC6306a executorC6306a = null;
        this.f35174a = new C6308c(this, executorC6306a);
        this.f35175b = new C6307b(this, executorC6306a);
    }

    @Override // com.google.common.util.concurrent.Service
    public final void addListener(Service.Listener listener, Executor executor) {
        this.f35175b.addListener(listener, executor);
    }

    @Override // com.google.common.util.concurrent.Service
    public final void awaitRunning() {
        this.f35175b.awaitRunning();
    }

    @Override // com.google.common.util.concurrent.Service
    public final void awaitTerminated() {
        this.f35175b.awaitTerminated();
    }

    public Executor executor() {
        return new ExecutorC6306a();
    }

    @Override // com.google.common.util.concurrent.Service
    public final Throwable failureCause() {
        return this.f35175b.failureCause();
    }

    @Override // com.google.common.util.concurrent.Service
    public final boolean isRunning() {
        return this.f35175b.isRunning();
    }

    public String serviceName() {
        return getClass().getSimpleName();
    }

    public abstract void shutDown() throws Exception;

    @Override // com.google.common.util.concurrent.Service
    @CanIgnoreReturnValue
    public final Service startAsync() {
        this.f35175b.startAsync();
        return this;
    }

    public abstract void startUp() throws Exception;

    @Override // com.google.common.util.concurrent.Service
    public final Service.State state() {
        return this.f35175b.state();
    }

    @Override // com.google.common.util.concurrent.Service
    @CanIgnoreReturnValue
    public final Service stopAsync() {
        this.f35175b.stopAsync();
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

    @Override // com.google.common.util.concurrent.Service
    public final void awaitRunning(Duration duration) throws TimeoutException {
        super.awaitRunning(duration);
    }

    @Override // com.google.common.util.concurrent.Service
    public final void awaitTerminated(Duration duration) throws TimeoutException {
        super.awaitTerminated(duration);
    }

    @Override // com.google.common.util.concurrent.Service
    public final void awaitRunning(long j, TimeUnit timeUnit) throws TimeoutException {
        this.f35175b.awaitRunning(j, timeUnit);
    }

    @Override // com.google.common.util.concurrent.Service
    public final void awaitTerminated(long j, TimeUnit timeUnit) throws TimeoutException {
        this.f35175b.awaitTerminated(j, timeUnit);
    }
}
