package org.apache.commons.lang3.concurrent;

import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.ScheduledFuture;
import java.util.concurrent.ScheduledThreadPoolExecutor;
import java.util.concurrent.TimeUnit;
import org.apache.commons.lang3.Validate;

/* loaded from: classes12.dex */
public class TimedSemaphore {
    public static final int NO_LIMIT = 0;

    /* renamed from: l */
    public static final int f107529l = 1;

    /* renamed from: a */
    public final ScheduledExecutorService f107530a;

    /* renamed from: b */
    public final long f107531b;

    /* renamed from: c */
    public final TimeUnit f107532c;

    /* renamed from: d */
    public final boolean f107533d;

    /* renamed from: e */
    public ScheduledFuture<?> f107534e;

    /* renamed from: f */
    public long f107535f;

    /* renamed from: g */
    public long f107536g;

    /* renamed from: h */
    public int f107537h;

    /* renamed from: i */
    public int f107538i;

    /* renamed from: j */
    public int f107539j;

    /* renamed from: k */
    public boolean f107540k;

    /* renamed from: org.apache.commons.lang3.concurrent.TimedSemaphore$a */
    /* loaded from: classes12.dex */
    public class RunnableC18955a implements Runnable {
        public RunnableC18955a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            TimedSemaphore.this.m67316b();
        }
    }

    public TimedSemaphore(long j, TimeUnit timeUnit, int i) {
        this(null, j, timeUnit, i);
    }

    /* renamed from: a */
    public final boolean m67315a() {
        if (getLimit() > 0 && this.f107538i >= getLimit()) {
            return false;
        }
        this.f107538i++;
        return true;
    }

    public synchronized void acquire() throws InterruptedException {
        boolean m67315a;
        m67317c();
        do {
            m67315a = m67315a();
            if (!m67315a) {
                wait();
            }
        } while (!m67315a);
    }

    /* renamed from: b */
    public synchronized void m67316b() {
        int i = this.f107538i;
        this.f107539j = i;
        this.f107535f += i;
        this.f107536g++;
        this.f107538i = 0;
        notifyAll();
    }

    /* renamed from: c */
    public final void m67317c() {
        if (isShutdown()) {
            throw new IllegalStateException("TimedSemaphore is shut down!");
        }
        if (this.f107534e == null) {
            this.f107534e = startTimer();
        }
    }

    public synchronized int getAcquireCount() {
        return this.f107538i;
    }

    public synchronized int getAvailablePermits() {
        return getLimit() - getAcquireCount();
    }

    public synchronized double getAverageCallsPerPeriod() {
        long j;
        j = this.f107536g;
        return j == 0 ? 0.0d : this.f107535f / j;
    }

    public ScheduledExecutorService getExecutorService() {
        return this.f107530a;
    }

    public synchronized int getLastAcquiresPerPeriod() {
        return this.f107539j;
    }

    public final synchronized int getLimit() {
        return this.f107537h;
    }

    public long getPeriod() {
        return this.f107531b;
    }

    public TimeUnit getUnit() {
        return this.f107532c;
    }

    public synchronized boolean isShutdown() {
        return this.f107540k;
    }

    public final synchronized void setLimit(int i) {
        this.f107537h = i;
    }

    public synchronized void shutdown() {
        if (!this.f107540k) {
            if (this.f107533d) {
                getExecutorService().shutdownNow();
            }
            ScheduledFuture<?> scheduledFuture = this.f107534e;
            if (scheduledFuture != null) {
                scheduledFuture.cancel(false);
            }
            this.f107540k = true;
        }
    }

    public ScheduledFuture<?> startTimer() {
        return getExecutorService().scheduleAtFixedRate(new RunnableC18955a(), getPeriod(), getPeriod(), getUnit());
    }

    public synchronized boolean tryAcquire() {
        m67317c();
        return m67315a();
    }

    public TimedSemaphore(ScheduledExecutorService scheduledExecutorService, long j, TimeUnit timeUnit, int i) {
        Validate.inclusiveBetween(1L, Long.MAX_VALUE, j, "Time period must be greater than 0!");
        this.f107531b = j;
        this.f107532c = timeUnit;
        if (scheduledExecutorService != null) {
            this.f107530a = scheduledExecutorService;
            this.f107533d = false;
        } else {
            ScheduledThreadPoolExecutor scheduledThreadPoolExecutor = new ScheduledThreadPoolExecutor(1);
            scheduledThreadPoolExecutor.setContinueExistingPeriodicTasksAfterShutdownPolicy(false);
            scheduledThreadPoolExecutor.setExecuteExistingDelayedTasksAfterShutdownPolicy(false);
            this.f107530a = scheduledThreadPoolExecutor;
            this.f107533d = true;
        }
        setLimit(i);
    }
}
