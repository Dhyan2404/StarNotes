package com.tencent.beacon.p059a.p061b;

import com.tencent.beacon.base.util.C14954c;
import com.tencent.beacon.base.util.C14959h;
import java.util.concurrent.atomic.AtomicInteger;

/* renamed from: com.tencent.beacon.a.b.k */
/* loaded from: classes10.dex */
public class RunnableC14883k implements Runnable {

    /* renamed from: a */
    final /* synthetic */ Runnable f92570a;

    /* renamed from: b */
    final /* synthetic */ C14884l f92571b;

    public RunnableC14883k(C14884l c14884l, Runnable runnable) {
        this.f92571b = c14884l;
        this.f92570a = runnable;
    }

    @Override // java.lang.Runnable
    public void run() {
        AtomicInteger atomicInteger;
        try {
            this.f92570a.run();
        } catch (Throwable th) {
            atomicInteger = C14884l.f92574f;
            if (atomicInteger.addAndGet(1) < 100) {
                C14882j.m58961e().m58954a("599", "[task] run occur error!", th);
            }
            C14959h.m59413a(th.getMessage());
            C14954c.m59393a(th);
        }
    }
}
