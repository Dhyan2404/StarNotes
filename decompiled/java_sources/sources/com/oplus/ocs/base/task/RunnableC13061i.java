package com.oplus.ocs.base.task;

/* renamed from: com.oplus.ocs.base.task.i */
/* loaded from: classes9.dex */
final class RunnableC13061i implements Runnable {

    /* renamed from: a */
    private C13060h f63125a;

    /* renamed from: b */
    private Task f63126b;

    public RunnableC13061i(C13060h c13060h, Task task) {
        this.f63125a = c13060h;
        this.f63126b = task;
    }

    @Override // java.lang.Runnable
    public final void run() {
        if (this.f63125a.m52217a() != null) {
            this.f63125a.m52217a().onFailure(this.f63126b.getException());
        }
    }
}
