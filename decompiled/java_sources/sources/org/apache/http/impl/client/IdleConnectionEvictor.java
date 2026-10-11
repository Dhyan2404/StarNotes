package org.apache.http.impl.client;

import java.util.concurrent.ThreadFactory;
import java.util.concurrent.TimeUnit;
import org.apache.http.conn.HttpClientConnectionManager;
import org.apache.http.util.Args;

/* loaded from: classes12.dex */
public final class IdleConnectionEvictor {

    /* renamed from: a */
    public final HttpClientConnectionManager f110660a;

    /* renamed from: b */
    public final ThreadFactory f110661b;

    /* renamed from: c */
    public final Thread f110662c;

    /* renamed from: d */
    public final long f110663d;

    /* renamed from: e */
    public final long f110664e;

    /* renamed from: f */
    public volatile Exception f110665f;

    /* renamed from: org.apache.http.impl.client.IdleConnectionEvictor$a */
    /* loaded from: classes12.dex */
    public class RunnableC19362a implements Runnable {

        /* renamed from: e */
        public final /* synthetic */ HttpClientConnectionManager f110666e;

        public RunnableC19362a(HttpClientConnectionManager httpClientConnectionManager) {
            this.f110666e = httpClientConnectionManager;
        }

        @Override // java.lang.Runnable
        public void run() {
            while (!Thread.currentThread().isInterrupted()) {
                try {
                    Thread.sleep(IdleConnectionEvictor.this.f110663d);
                    this.f110666e.closeExpiredConnections();
                    if (IdleConnectionEvictor.this.f110664e > 0) {
                        this.f110666e.closeIdleConnections(IdleConnectionEvictor.this.f110664e, TimeUnit.MILLISECONDS);
                    }
                } catch (Exception e) {
                    IdleConnectionEvictor.this.f110665f = e;
                    return;
                }
            }
        }
    }

    /* renamed from: org.apache.http.impl.client.IdleConnectionEvictor$b */
    /* loaded from: classes12.dex */
    public static class ThreadFactoryC19363b implements ThreadFactory {
        @Override // java.util.concurrent.ThreadFactory
        public Thread newThread(Runnable runnable) {
            Thread thread = new Thread(runnable, "Connection evictor");
            thread.setDaemon(true);
            return thread;
        }
    }

    public IdleConnectionEvictor(HttpClientConnectionManager httpClientConnectionManager, ThreadFactory threadFactory, long j, TimeUnit timeUnit, long j2, TimeUnit timeUnit2) {
        this.f110660a = (HttpClientConnectionManager) Args.notNull(httpClientConnectionManager, "Connection manager");
        threadFactory = threadFactory == null ? new ThreadFactoryC19363b() : threadFactory;
        this.f110661b = threadFactory;
        this.f110663d = timeUnit != null ? timeUnit.toMillis(j) : j;
        this.f110664e = timeUnit2 != null ? timeUnit2.toMillis(j2) : j2;
        this.f110662c = threadFactory.newThread(new RunnableC19362a(httpClientConnectionManager));
    }

    public void awaitTermination(long j, TimeUnit timeUnit) throws InterruptedException {
        Thread thread = this.f110662c;
        if (timeUnit == null) {
            timeUnit = TimeUnit.MILLISECONDS;
        }
        thread.join(timeUnit.toMillis(j));
    }

    public boolean isRunning() {
        return this.f110662c.isAlive();
    }

    public void shutdown() {
        this.f110662c.interrupt();
    }

    public void start() {
        this.f110662c.start();
    }

    public IdleConnectionEvictor(HttpClientConnectionManager httpClientConnectionManager, long j, TimeUnit timeUnit, long j2, TimeUnit timeUnit2) {
        this(httpClientConnectionManager, null, j, timeUnit, j2, timeUnit2);
    }

    public IdleConnectionEvictor(HttpClientConnectionManager httpClientConnectionManager, long j, TimeUnit timeUnit) {
        this(httpClientConnectionManager, null, j > 0 ? j : 5L, timeUnit != null ? timeUnit : TimeUnit.SECONDS, j, timeUnit);
    }
}
