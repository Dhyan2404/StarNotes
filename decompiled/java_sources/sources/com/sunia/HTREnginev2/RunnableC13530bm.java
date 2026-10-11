package com.sunia.HTREnginev2;

import java.util.logging.Level;
import org.greenrobot.eventbus.EventBus;
import org.greenrobot.eventbus.Poster;

/* renamed from: com.sunia.HTREnginev2.bm */
/* loaded from: classes13.dex */
public final class RunnableC13530bm implements Runnable, Poster {

    /* renamed from: e */
    public final a3l f65878e = new a3l();

    /* renamed from: f */
    public final EventBus f65879f;

    /* renamed from: g */
    public volatile boolean f65880g;

    public RunnableC13530bm(EventBus eventBus) {
        this.f65879f = eventBus;
    }

    @Override // org.greenrobot.eventbus.Poster
    public void enqueue(k5n k5nVar, Object obj) {
        z2l m58607a = z2l.m58607a(k5nVar, obj);
        synchronized (this) {
            this.f65878e.m52953a(m58607a);
            if (!this.f65880g) {
                this.f65880g = true;
                this.f65879f.m71024c().execute(this);
            }
        }
    }

    @Override // java.lang.Runnable
    public void run() {
        while (true) {
            try {
                z2l m52955c = this.f65878e.m52955c(1000);
                if (m52955c == null) {
                    synchronized (this) {
                        m52955c = this.f65878e.m52954b();
                        if (m52955c == null) {
                            return;
                        }
                    }
                }
                this.f65879f.m71026e(m52955c);
            } catch (InterruptedException e) {
                this.f65879f.getLogger().log(Level.WARNING, Thread.currentThread().getName() + " was interruppted", e);
                return;
            } finally {
                this.f65880g = false;
            }
        }
    }
}
