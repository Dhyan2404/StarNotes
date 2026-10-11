package com.google.common.util.concurrent;

import com.google.common.annotations.Beta;
import com.google.common.annotations.GwtIncompatible;
import com.google.common.base.Supplier;
import com.google.common.util.concurrent.Service;
import com.google.errorprone.annotations.CanIgnoreReturnValue;
import com.sunia.HTREnginev2.pnf;
import java.time.Duration;
import java.util.concurrent.Executor;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.TimeoutException;
import java.util.logging.Level;
import java.util.logging.Logger;
import org.apache.commons.collections4.IteratorUtils;

@GwtIncompatible
@pnf
/* loaded from: classes6.dex */
public abstract class AbstractExecutionThreadService implements Service {

    /* renamed from: b */
    public static final Logger f35134b = Logger.getLogger(AbstractExecutionThreadService.class.getName());

    /* renamed from: a */
    public final Service f35135a = new C6292a();

    /* renamed from: com.google.common.util.concurrent.AbstractExecutionThreadService$a */
    /* loaded from: classes6.dex */
    public class C6292a extends AbstractService {

        /* renamed from: com.google.common.util.concurrent.AbstractExecutionThreadService$a$a */
        /* loaded from: classes6.dex */
        public class a implements Supplier<String> {
            public a() {
            }

            @Override // com.google.common.base.Supplier, java.util.function.Supplier
            /* renamed from: a, reason: merged with bridge method [inline-methods] */
            public String get() {
                return AbstractExecutionThreadService.this.serviceName();
            }
        }

        /* renamed from: com.google.common.util.concurrent.AbstractExecutionThreadService$a$b */
        /* loaded from: classes6.dex */
        public class b implements Runnable {
            public b() {
            }

            @Override // java.lang.Runnable
            public void run() {
                try {
                    AbstractExecutionThreadService.this.startUp();
                    C6292a.this.notifyStarted();
                    if (C6292a.this.isRunning()) {
                        try {
                            AbstractExecutionThreadService.this.run();
                        } catch (Throwable th) {
                            try {
                                AbstractExecutionThreadService.this.shutDown();
                            } catch (Exception e) {
                                AbstractExecutionThreadService.f35134b.log(Level.WARNING, "Error while attempting to shut down the service after failure.", (Throwable) e);
                            }
                            C6292a.this.notifyFailed(th);
                            return;
                        }
                    }
                    AbstractExecutionThreadService.this.shutDown();
                    C6292a.this.notifyStopped();
                } catch (Throwable th2) {
                    C6292a.this.notifyFailed(th2);
                }
            }
        }

        public C6292a() {
        }

        @Override // com.google.common.util.concurrent.AbstractService
        public final void doStart() {
            MoreExecutors.m27753g(AbstractExecutionThreadService.this.executor(), new a()).execute(new b());
        }

        @Override // com.google.common.util.concurrent.AbstractService
        public void doStop() {
            AbstractExecutionThreadService.this.triggerShutdown();
        }

        @Override // com.google.common.util.concurrent.AbstractService
        public String toString() {
            return AbstractExecutionThreadService.this.toString();
        }
    }

    /* renamed from: com.google.common.util.concurrent.AbstractExecutionThreadService$b */
    /* loaded from: classes6.dex */
    public class ExecutorC6293b implements Executor {
        public ExecutorC6293b() {
        }

        @Override // java.util.concurrent.Executor
        public void execute(Runnable runnable) {
            MoreExecutors.m27751e(AbstractExecutionThreadService.this.serviceName(), runnable).start();
        }
    }

    @Override // com.google.common.util.concurrent.Service
    public final void addListener(Service.Listener listener, Executor executor) {
        this.f35135a.addListener(listener, executor);
    }

    @Override // com.google.common.util.concurrent.Service
    public final void awaitRunning() {
        this.f35135a.awaitRunning();
    }

    @Override // com.google.common.util.concurrent.Service
    public final void awaitTerminated() {
        this.f35135a.awaitTerminated();
    }

    public Executor executor() {
        return new ExecutorC6293b();
    }

    @Override // com.google.common.util.concurrent.Service
    public final Throwable failureCause() {
        return this.f35135a.failureCause();
    }

    @Override // com.google.common.util.concurrent.Service
    public final boolean isRunning() {
        return this.f35135a.isRunning();
    }

    public abstract void run() throws Exception;

    public String serviceName() {
        return getClass().getSimpleName();
    }

    public void shutDown() throws Exception {
    }

    @Override // com.google.common.util.concurrent.Service
    @CanIgnoreReturnValue
    public final Service startAsync() {
        this.f35135a.startAsync();
        return this;
    }

    public void startUp() throws Exception {
    }

    @Override // com.google.common.util.concurrent.Service
    public final Service.State state() {
        return this.f35135a.state();
    }

    @Override // com.google.common.util.concurrent.Service
    @CanIgnoreReturnValue
    public final Service stopAsync() {
        this.f35135a.stopAsync();
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

    @Beta
    public void triggerShutdown() {
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
        this.f35135a.awaitRunning(j, timeUnit);
    }

    @Override // com.google.common.util.concurrent.Service
    public final void awaitTerminated(long j, TimeUnit timeUnit) throws TimeoutException {
        this.f35135a.awaitTerminated(j, timeUnit);
    }
}
