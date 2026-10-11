package com.oplus.ocs.base.task;

import java.util.concurrent.Callable;

/* renamed from: com.oplus.ocs.base.task.a */
/* loaded from: classes9.dex */
final class RunnableC13053a implements Runnable {

    /* renamed from: a */
    private Callable f63108a;

    /* renamed from: b */
    private TaskImpl f63109b;

    public RunnableC13053a(TaskImpl taskImpl, Callable callable) {
        this.f63109b = taskImpl;
        this.f63108a = callable;
    }

    @Override // java.lang.Runnable
    public final void run() {
        try {
            this.f63109b.setResult(this.f63108a.call());
        } catch (Exception e) {
            this.f63109b.setException(e);
        }
    }
}
