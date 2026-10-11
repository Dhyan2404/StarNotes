package com.oplus.ocs.base.task;

import com.oplus.ocs.base.utils.C13074d;
import java.util.concurrent.Executor;

/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: com.oplus.ocs.base.task.d */
/* loaded from: classes9.dex */
public final class C13056d<TResult> implements InterfaceC13054b<TResult> {

    /* renamed from: a */
    private Executor f63113a;

    /* renamed from: b */
    private final Object f63114b = new Object();

    /* renamed from: c */
    private volatile OnCanceledListener f63115c;

    public C13056d(Executor executor, OnCanceledListener onCanceledListener) {
        C13074d.m52235a(executor, "Executor is not null");
        C13074d.m52235a(onCanceledListener, "OnCanceledListener is not null");
        this.f63113a = executor;
        this.f63115c = onCanceledListener;
    }

    /* renamed from: a */
    public final OnCanceledListener m52215a() {
        OnCanceledListener onCanceledListener;
        synchronized (this.f63114b) {
            onCanceledListener = this.f63115c;
        }
        return onCanceledListener;
    }

    @Override // com.oplus.ocs.base.task.InterfaceC13054b
    /* renamed from: a */
    public final void mo52214a(Task task) {
        C13074d.m52235a(task, "Task is not null");
        if (task.isCanceled()) {
            synchronized (this.f63114b) {
                if (this.f63115c == null) {
                    return;
                }
                this.f63113a.execute(new RunnableC13057e(this));
            }
        }
    }
}
