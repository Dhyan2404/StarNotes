package com.oplus.ocs.base.task;

/* renamed from: com.oplus.ocs.base.task.g */
/* loaded from: classes9.dex */
final class RunnableC13059g implements Runnable {

    /* renamed from: a */
    private C13058f f63120a;

    /* renamed from: b */
    private Task f63121b;

    public RunnableC13059g(C13058f c13058f, Task task) {
        this.f63120a = c13058f;
        this.f63121b = task;
    }

    @Override // java.lang.Runnable
    public final void run() {
        synchronized (this.f63120a.f63117a) {
            if (this.f63120a.m52216a() != null) {
                this.f63120a.m52216a().onComplete(this.f63121b);
            }
        }
    }
}
