package com.oplus.ocs.base.task;

/* renamed from: com.oplus.ocs.base.task.l */
/* loaded from: classes9.dex */
final class RunnableC13064l implements Runnable {

    /* renamed from: a */
    private Task f63132a;

    /* renamed from: b */
    private C13055c f63133b;

    public RunnableC13064l(C13055c c13055c, Task task) {
        this.f63133b = c13055c;
        this.f63132a = task;
    }

    @Override // java.lang.Runnable
    public final void run() {
        Object obj;
        if (this.f63132a.isCanceled()) {
            this.f63133b.f63111b.tryCancel();
            return;
        }
        try {
            obj = this.f63133b.f63110a.then(this.f63132a);
        } catch (RuntimeException e) {
            if (e.getCause() instanceof Exception) {
                this.f63133b.f63111b.setException((Exception) e.getCause());
            } else {
                this.f63133b.f63111b.setException(e);
            }
            obj = null;
            this.f63133b.f63111b.setResult(obj);
        } catch (Exception e2) {
            this.f63133b.f63111b.setException(e2);
            obj = null;
            this.f63133b.f63111b.setResult(obj);
        }
        this.f63133b.f63111b.setResult(obj);
    }
}
