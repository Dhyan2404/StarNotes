package com.sunia.HTREnginev2;

import org.greenrobot.eventbus.EventBus;
import org.greenrobot.eventbus.Poster;

/* renamed from: com.sunia.HTREnginev2.xf */
/* loaded from: classes13.dex */
public class RunnableC14650xf implements Runnable, Poster {

    /* renamed from: e */
    public final a3l f89592e = new a3l();

    /* renamed from: f */
    public final EventBus f89593f;

    public RunnableC14650xf(EventBus eventBus) {
        this.f89593f = eventBus;
    }

    @Override // org.greenrobot.eventbus.Poster
    public void enqueue(k5n k5nVar, Object obj) {
        this.f89592e.m52953a(z2l.m58607a(k5nVar, obj));
        this.f89593f.m71024c().execute(this);
    }

    @Override // java.lang.Runnable
    public void run() {
        z2l m52954b = this.f89592e.m52954b();
        if (m52954b == null) {
            throw new IllegalStateException("No pending post available");
        }
        this.f89593f.m71026e(m52954b);
    }
}
