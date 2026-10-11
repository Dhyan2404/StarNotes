package com.oplus.ocs.base.task;

/* renamed from: com.oplus.ocs.base.task.k */
/* loaded from: classes9.dex */
final class RunnableC13063k implements Runnable {

    /* renamed from: a */
    private C13062j f63130a;

    /* renamed from: b */
    private Task f63131b;

    public RunnableC13063k(C13062j c13062j, Task task) {
        this.f63130a = c13062j;
        this.f63131b = task;
    }

    @Override // java.lang.Runnable
    public final void run() {
        if (this.f63130a.m52218a() != null) {
            this.f63130a.m52218a().onSuccess(this.f63131b.getResult());
        }
    }
}
