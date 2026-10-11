package com.tencent.qimei.p094o;

import com.tencent.qimei.p084e.C16775c;
import com.tencent.qimei.p084e.InterfaceC16776d;

/* renamed from: com.tencent.qimei.o.b */
/* loaded from: classes10.dex */
public class RunnableC16808b implements Runnable {

    /* renamed from: a */
    public final /* synthetic */ InterfaceC16776d f93555a;

    /* renamed from: b */
    public final /* synthetic */ C16810d f93556b;

    public RunnableC16808b(C16810d c16810d, InterfaceC16776d interfaceC16776d) {
        this.f93556b = c16810d;
        this.f93555a = interfaceC16776d;
    }

    @Override // java.lang.Runnable
    public void run() {
        Object obj;
        boolean z;
        obj = this.f93556b.f93561c;
        synchronized (obj) {
            z = this.f93556b.f93562d;
            if (!z) {
                C16775c.m59907j().f93467d = 10L;
                this.f93555a.mo59929a(4);
                this.f93556b.f93562d = true;
            }
        }
    }
}
