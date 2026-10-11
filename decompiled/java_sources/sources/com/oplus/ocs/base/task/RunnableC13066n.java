package com.oplus.ocs.base.task;

import java.util.concurrent.Executor;

/* renamed from: com.oplus.ocs.base.task.n */
/* loaded from: classes9.dex */
final class RunnableC13066n implements Runnable {

    /* renamed from: a */
    private C13065m f63137a;

    /* renamed from: b */
    private Task f63138b;

    public RunnableC13066n(C13065m c13065m, Task task) {
        this.f63137a = c13065m;
        this.f63138b = task;
    }

    @Override // java.lang.Runnable
    public final void run() {
        try {
            Task then = this.f63137a.f63134a.then(this.f63138b.getResult());
            if (then == null) {
                this.f63137a.onFailure(new NullPointerException("Continuation returned null"));
                return;
            }
            Executor executor = TaskExecutors.CURRENT_THREAD;
            then.addOnSuccessListener(executor, this.f63137a);
            then.addOnFailureListener(executor, this.f63137a);
            then.addOnCanceledListener(executor, this.f63137a);
        } catch (RuntimeException e) {
            if (e.getCause() instanceof Exception) {
                this.f63137a.onFailure((Exception) e.getCause());
            } else {
                this.f63137a.onFailure(e);
            }
        } catch (Exception e2) {
            this.f63137a.onFailure(e2);
        }
    }
}
