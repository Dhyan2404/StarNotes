package com.tencent.qimei.p083d;

import com.tencent.qimei.p092m.C16804e;
import com.tencent.qimei.p093n.C16806a;

/* renamed from: com.tencent.qimei.d.b */
/* loaded from: classes10.dex */
public class RunnableC16770b implements Runnable {

    /* renamed from: a */
    public final /* synthetic */ Runnable f93453a;

    public RunnableC16770b(C16771c c16771c, Runnable runnable) {
        this.f93453a = runnable;
    }

    @Override // java.lang.Runnable
    public void run() {
        try {
            this.f93453a.run();
        } catch (Throwable th) {
            C16804e.m59986a(th.getMessage());
            C16806a.m59992a(th);
        }
    }
}
