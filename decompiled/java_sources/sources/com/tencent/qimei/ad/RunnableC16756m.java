package com.tencent.qimei.ad;

import com.tencent.qimei.p093n.C16806a;

/* renamed from: com.tencent.qimei.ad.m */
/* loaded from: classes10.dex */
public class RunnableC16756m implements Runnable {

    /* renamed from: a */
    public final /* synthetic */ C16757n f93426a;

    public RunnableC16756m(C16757n c16757n) {
        this.f93426a = c16757n;
    }

    @Override // java.lang.Runnable
    public void run() {
        try {
            C16757n.m59856a(this.f93426a);
        } catch (Throwable th) {
            C16806a.m59992a(th);
        }
    }
}
