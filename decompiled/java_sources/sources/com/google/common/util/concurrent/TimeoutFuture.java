package com.google.common.util.concurrent;

import com.google.common.annotations.GwtIncompatible;
import com.google.common.base.Preconditions;
import com.google.common.util.concurrent.FluentFuture;
import com.sunia.HTREnginev2.pnf;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.ScheduledFuture;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.TimeoutException;
import javax.annotation.CheckForNull;
import org.apache.commons.collections4.IteratorUtils;

@GwtIncompatible
@pnf
/* loaded from: classes6.dex */
public final class TimeoutFuture<V> extends FluentFuture.AbstractC6362a<V> {

    /* renamed from: m */
    @CheckForNull
    public ListenableFuture<V> f35453m;

    /* renamed from: n */
    @CheckForNull
    public ScheduledFuture<?> f35454n;

    /* loaded from: classes6.dex */
    public static final class TimeoutFutureException extends TimeoutException {
        @Override // java.lang.Throwable
        public synchronized Throwable fillInStackTrace() {
            setStackTrace(new StackTraceElement[0]);
            return this;
        }

        private TimeoutFutureException(String str) {
            super(str);
        }
    }

    /* renamed from: com.google.common.util.concurrent.TimeoutFuture$b */
    /* loaded from: classes6.dex */
    public static final class RunnableC6407b<V> implements Runnable {

        /* renamed from: e */
        @CheckForNull
        public TimeoutFuture<V> f35455e;

        public RunnableC6407b(TimeoutFuture<V> timeoutFuture) {
            this.f35455e = timeoutFuture;
        }

        @Override // java.lang.Runnable
        public void run() {
            ListenableFuture<? extends V> listenableFuture;
            TimeoutFuture<V> timeoutFuture = this.f35455e;
            if (timeoutFuture == null || (listenableFuture = timeoutFuture.f35453m) == null) {
                return;
            }
            this.f35455e = null;
            if (listenableFuture.isDone()) {
                timeoutFuture.setFuture(listenableFuture);
                return;
            }
            try {
                ScheduledFuture scheduledFuture = timeoutFuture.f35454n;
                timeoutFuture.f35454n = null;
                String str = "Timed out";
                if (scheduledFuture != null) {
                    try {
                        long abs = Math.abs(scheduledFuture.getDelay(TimeUnit.MILLISECONDS));
                        if (abs > 10) {
                            StringBuilder sb = new StringBuilder("Timed out".length() + 66);
                            sb.append("Timed out");
                            sb.append(" (timeout delayed by ");
                            sb.append(abs);
                            sb.append(" ms after scheduled time)");
                            str = sb.toString();
                        }
                    } catch (Throwable th) {
                        timeoutFuture.setException(new TimeoutFutureException(str));
                        throw th;
                    }
                }
                String valueOf = String.valueOf(str);
                String valueOf2 = String.valueOf(listenableFuture);
                StringBuilder sb2 = new StringBuilder(valueOf.length() + 2 + valueOf2.length());
                sb2.append(valueOf);
                sb2.append(": ");
                sb2.append(valueOf2);
                timeoutFuture.setException(new TimeoutFutureException(sb2.toString()));
            } finally {
                listenableFuture.cancel(true);
            }
        }
    }

    public TimeoutFuture(ListenableFuture<V> listenableFuture) {
        this.f35453m = (ListenableFuture) Preconditions.checkNotNull(listenableFuture);
    }

    /* renamed from: A */
    public static <V> ListenableFuture<V> m27842A(ListenableFuture<V> listenableFuture, long j, TimeUnit timeUnit, ScheduledExecutorService scheduledExecutorService) {
        TimeoutFuture timeoutFuture = new TimeoutFuture(listenableFuture);
        RunnableC6407b runnableC6407b = new RunnableC6407b(timeoutFuture);
        timeoutFuture.f35454n = scheduledExecutorService.schedule(runnableC6407b, j, timeUnit);
        listenableFuture.addListener(runnableC6407b, MoreExecutors.directExecutor());
        return timeoutFuture;
    }

    @Override // com.google.common.util.concurrent.AbstractFuture
    public void afterDone() {
        m27559u(this.f35453m);
        ScheduledFuture<?> scheduledFuture = this.f35454n;
        if (scheduledFuture != null) {
            scheduledFuture.cancel(false);
        }
        this.f35453m = null;
        this.f35454n = null;
    }

    @Override // com.google.common.util.concurrent.AbstractFuture
    @CheckForNull
    public String pendingToString() {
        ListenableFuture<V> listenableFuture = this.f35453m;
        ScheduledFuture<?> scheduledFuture = this.f35454n;
        if (listenableFuture == null) {
            return null;
        }
        String valueOf = String.valueOf(listenableFuture);
        StringBuilder sb = new StringBuilder(valueOf.length() + 14);
        sb.append("inputFuture=[");
        sb.append(valueOf);
        sb.append(IteratorUtils.f104924b);
        String sb2 = sb.toString();
        if (scheduledFuture == null) {
            return sb2;
        }
        long delay = scheduledFuture.getDelay(TimeUnit.MILLISECONDS);
        if (delay <= 0) {
            return sb2;
        }
        String valueOf2 = String.valueOf(sb2);
        StringBuilder sb3 = new StringBuilder(valueOf2.length() + 43);
        sb3.append(valueOf2);
        sb3.append(", remaining delay=[");
        sb3.append(delay);
        sb3.append(" ms]");
        return sb3.toString();
    }
}
