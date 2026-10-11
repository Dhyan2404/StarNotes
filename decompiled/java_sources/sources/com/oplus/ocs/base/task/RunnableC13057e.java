package com.oplus.ocs.base.task;

/* renamed from: com.oplus.ocs.base.task.e */
/* loaded from: classes9.dex */
final class RunnableC13057e implements Runnable {

    /* renamed from: a */
    private C13056d f63116a;

    public RunnableC13057e(C13056d c13056d) {
        this.f63116a = c13056d;
    }

    @Override // java.lang.Runnable
    public final void run() {
        if (this.f63116a.m52215a() != null) {
            this.f63116a.m52215a().onCanceled();
        }
    }
}
