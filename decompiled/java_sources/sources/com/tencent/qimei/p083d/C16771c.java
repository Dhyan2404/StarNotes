package com.tencent.qimei.p083d;

import android.util.SparseArray;
import androidx.annotation.NonNull;
import java.util.concurrent.Executors;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicInteger;

/* renamed from: com.tencent.qimei.d.c */
/* loaded from: classes10.dex */
public class C16771c extends AbstractC16769a {

    /* renamed from: b */
    public static final int f93454b;

    /* renamed from: c */
    public static final int f93455c;

    /* renamed from: d */
    public final ScheduledExecutorService f93456d;

    /* renamed from: e */
    public boolean f93457e = false;

    /* renamed from: f */
    public final ThreadFactoryC16772d f93458f;

    static {
        int availableProcessors = Runtime.getRuntime().availableProcessors();
        f93454b = availableProcessors;
        f93455c = Math.max(2, Math.min(availableProcessors - 1, 3));
        new AtomicInteger(0);
    }

    public C16771c() {
        ThreadFactoryC16772d threadFactoryC16772d = new ThreadFactoryC16772d();
        this.f93458f = threadFactoryC16772d;
        this.f93456d = Executors.newScheduledThreadPool(f93455c, threadFactoryC16772d);
        new SparseArray();
        new SparseArray();
    }

    @Override // com.tencent.qimei.p083d.AbstractC16769a
    /* renamed from: a */
    public synchronized void mo59896a(long j, @NonNull Runnable runnable) {
        if (this.f93457e) {
            return;
        }
        RunnableC16770b runnableC16770b = new RunnableC16770b(this, runnable);
        if (j <= 0) {
            j = 0;
        }
        this.f93456d.schedule(runnableC16770b, j, TimeUnit.MILLISECONDS);
    }

    @Override // com.tencent.qimei.p083d.AbstractC16769a
    /* renamed from: a */
    public synchronized void mo59897a(@NonNull Runnable runnable) {
        if (this.f93457e) {
            return;
        }
        try {
            this.f93456d.execute(new RunnableC16770b(this, runnable));
        } catch (Throwable unused) {
        }
    }
}
