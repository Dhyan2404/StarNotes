package com.tencent.beacon.p059a.p061b;

import android.os.Handler;
import android.os.HandlerThread;
import android.util.SparseArray;
import androidx.annotation.NonNull;
import com.tencent.beacon.base.util.C14954c;
import java.util.concurrent.Executors;
import java.util.concurrent.Future;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicInteger;

/* renamed from: com.tencent.beacon.a.b.l */
/* loaded from: classes10.dex */
public class C14884l extends AbstractC14874b {

    /* renamed from: d */
    private static final int f92572d;

    /* renamed from: e */
    private static final int f92573e;

    /* renamed from: f */
    private static final AtomicInteger f92574f;

    /* renamed from: g */
    private final ScheduledExecutorService f92575g;

    /* renamed from: h */
    private final SparseArray<a> f92576h;

    /* renamed from: i */
    private final SparseArray<Handler> f92577i;

    /* renamed from: j */
    private final ThreadFactoryC14885m f92578j;

    /* renamed from: k */
    private boolean f92579k;

    /* renamed from: com.tencent.beacon.a.b.l$a */
    /* loaded from: classes10.dex */
    public static final class a {

        /* renamed from: a */
        private final Runnable f92580a;

        /* renamed from: b */
        private final long f92581b;

        /* renamed from: c */
        private final long f92582c;

        /* renamed from: d */
        private final TimeUnit f92583d;

        /* renamed from: e */
        private Future<?> f92584e;

        public a(Future<?> future, Runnable runnable, long j, long j2, TimeUnit timeUnit) {
            this.f92584e = future;
            this.f92580a = runnable;
            this.f92581b = j;
            this.f92582c = j2;
            this.f92583d = timeUnit;
        }

        /* renamed from: a */
        public boolean m58970a(boolean z) {
            return this.f92584e.cancel(z);
        }

        /* renamed from: a */
        public boolean m58969a() {
            return this.f92584e.isCancelled();
        }
    }

    static {
        int availableProcessors = Runtime.getRuntime().availableProcessors();
        f92572d = availableProcessors;
        f92573e = Math.max(2, Math.min(availableProcessors - 1, 3));
        f92574f = new AtomicInteger(0);
    }

    public C14884l() {
        this(null);
    }

    /* renamed from: b */
    private Runnable m58962b(Runnable runnable) {
        return new RunnableC14883k(this, runnable);
    }

    /* renamed from: d */
    private boolean m58964d() {
        if (!this.f92579k) {
            return false;
        }
        C14954c.m59395b("[task] was closed , should all stopped!", new Object[0]);
        return true;
    }

    @Override // com.tencent.beacon.p059a.p061b.AbstractC14874b
    /* renamed from: a */
    public synchronized void mo58941a(@NonNull Runnable runnable) {
        if (m58964d()) {
            return;
        }
        this.f92575g.execute(m58962b(runnable));
    }

    public C14884l(ScheduledExecutorService scheduledExecutorService) {
        this.f92579k = false;
        ThreadFactoryC14885m threadFactoryC14885m = new ThreadFactoryC14885m();
        this.f92578j = threadFactoryC14885m;
        this.f92575g = scheduledExecutorService == null ? Executors.newScheduledThreadPool(f92573e, threadFactoryC14885m) : scheduledExecutorService;
        this.f92576h = new SparseArray<>();
        this.f92577i = new SparseArray<>();
    }

    @Override // com.tencent.beacon.p059a.p061b.AbstractC14874b
    /* renamed from: a */
    public synchronized void mo58940a(long j, @NonNull Runnable runnable) {
        if (m58964d()) {
            return;
        }
        Runnable m58962b = m58962b(runnable);
        if (j <= 0) {
            j = 0;
        }
        this.f92575g.schedule(m58962b, j, TimeUnit.MILLISECONDS);
    }

    @Override // com.tencent.beacon.p059a.p061b.AbstractC14874b
    /* renamed from: a */
    public synchronized void mo58937a(int i, long j, long j2, @NonNull Runnable runnable) {
        if (m58964d()) {
            return;
        }
        a aVar = this.f92576h.get(i);
        if (aVar == null || aVar.m58969a()) {
            Runnable m58962b = m58962b(runnable);
            if (j <= 0) {
                j = 0;
            }
            if (j2 < 100) {
                j2 = 100;
            }
            ScheduledExecutorService scheduledExecutorService = this.f92575g;
            TimeUnit timeUnit = TimeUnit.MILLISECONDS;
            a aVar2 = new a(scheduledExecutorService.scheduleAtFixedRate(m58962b, j, j2, timeUnit), m58962b, j, j2, timeUnit);
            C14954c.m59392a("[task] add a new polling task! taskId: %d , periodTime: %d", Integer.valueOf(i), Long.valueOf(j2));
            this.f92576h.put(i, aVar2);
        }
    }

    @Override // com.tencent.beacon.p059a.p061b.AbstractC14874b
    /* renamed from: a */
    public void mo58938a(int i, boolean z, int i2) {
        a aVar = this.f92576h.get(i);
        if (aVar != null && !aVar.m58969a()) {
            C14954c.m59392a("[task] cancel a old pollingTaskWrapper!", new Object[0]);
            aVar.m58970a(z);
        }
        this.f92544b = i2;
    }

    @Override // com.tencent.beacon.p059a.p061b.AbstractC14874b
    /* renamed from: a */
    public synchronized void mo58942a(boolean z, int i) {
        if (m58964d()) {
            return;
        }
        for (int i2 = 0; i2 < this.f92576h.size(); i2++) {
            mo58938a(this.f92576h.keyAt(i2), z, i);
        }
        C14954c.m59392a("[task] All schedule tasks stop", new Object[0]);
    }

    @Override // com.tencent.beacon.p059a.p061b.AbstractC14874b
    /* renamed from: a */
    public synchronized void mo58939a(long j, int i) {
        if (i < this.f92544b) {
            return;
        }
        if (m58964d()) {
            return;
        }
        for (int i2 = 0; i2 < this.f92576h.size(); i2++) {
            mo58936a(this.f92576h.keyAt(i2), j, i);
        }
        C14954c.m59392a("[task] Resumed all schedule task", new Object[0]);
    }

    @Override // com.tencent.beacon.p059a.p061b.AbstractC14874b
    /* renamed from: a */
    public synchronized void mo58936a(int i, long j, int i2) {
        if (i2 < this.f92544b) {
            return;
        }
        a aVar = this.f92576h.get(i);
        if (aVar != null) {
            if (!aVar.m58969a()) {
                return;
            } else {
                aVar.f92584e = this.f92575g.scheduleAtFixedRate(aVar.f92580a, j, aVar.f92582c, aVar.f92583d);
            }
        }
        this.f92544b = 0;
    }

    @Override // com.tencent.beacon.p059a.p061b.AbstractC14874b
    /* renamed from: a */
    public synchronized Handler mo58935a(int i) {
        Handler handler;
        handler = this.f92577i.get(i);
        if (handler == null) {
            HandlerThread handlerThread = new HandlerThread(this.f92578j.m58971a());
            handlerThread.start();
            handler = new Handler(handlerThread.getLooper());
        }
        this.f92577i.put(i, handler);
        return handler;
    }
}
