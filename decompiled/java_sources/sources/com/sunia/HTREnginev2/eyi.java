package com.sunia.HTREnginev2;

import com.google.firebase.components.Preconditions;
import java.util.concurrent.Executor;
import java.util.concurrent.LinkedBlockingQueue;
import java.util.concurrent.Semaphore;

/* loaded from: classes6.dex */
public class eyi implements Executor {

    /* renamed from: e */
    public final Executor f69462e;

    /* renamed from: f */
    public final Semaphore f69463f;

    /* renamed from: g */
    public final LinkedBlockingQueue<Runnable> f69464g = new LinkedBlockingQueue<>();

    public eyi(Executor executor, int i) {
        Preconditions.checkArgument(i > 0, "concurrency must be positive.");
        this.f69462e = executor;
        this.f69463f = new Semaphore(i, true);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: c */
    public /* synthetic */ void m54045c(Runnable runnable) {
        try {
            runnable.run();
        } finally {
            this.f69463f.release();
            m54047d();
        }
    }

    /* renamed from: b */
    public final Runnable m54046b(final Runnable runnable) {
        return new Runnable() { // from class: com.sunia.HTREnginev2.dyi
            @Override // java.lang.Runnable
            public final void run() {
                eyi.this.m54045c(runnable);
            }
        };
    }

    /* renamed from: d */
    public final void m54047d() {
        while (this.f69463f.tryAcquire()) {
            Runnable poll = this.f69464g.poll();
            if (poll == null) {
                this.f69463f.release();
                return;
            }
            this.f69462e.execute(m54046b(poll));
        }
    }

    @Override // java.util.concurrent.Executor
    public void execute(Runnable runnable) {
        this.f69464g.offer(runnable);
        m54047d();
    }
}
