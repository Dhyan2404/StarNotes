package com.oplus.ocs.base.task;

import com.oplus.ocs.base.utils.C13074d;
import java.util.concurrent.Executor;

/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: com.oplus.ocs.base.task.h */
/* loaded from: classes9.dex */
public final class C13060h<TResult> implements InterfaceC13054b<TResult> {

    /* renamed from: a */
    private Executor f63122a;

    /* renamed from: b */
    private final Object f63123b = new Object();

    /* renamed from: c */
    private volatile OnFailureListener f63124c;

    public C13060h(Executor executor, OnFailureListener onFailureListener) {
        C13074d.m52235a(executor, "Executor is not null");
        C13074d.m52235a(onFailureListener, "OnFailureListener is not null");
        this.f63122a = executor;
        this.f63124c = onFailureListener;
    }

    /* renamed from: a */
    public final OnFailureListener m52217a() {
        OnFailureListener onFailureListener;
        synchronized (this.f63123b) {
            onFailureListener = this.f63124c;
        }
        return onFailureListener;
    }

    @Override // com.oplus.ocs.base.task.InterfaceC13054b
    /* renamed from: a */
    public final void mo52214a(Task<TResult> task) {
        C13074d.m52235a(task, "Task is not null");
        if (task.isSuccessful() || task.isCanceled()) {
            return;
        }
        synchronized (this.f63123b) {
            if (this.f63124c == null) {
                return;
            }
            this.f63122a.execute(new RunnableC13061i(this, task));
        }
    }
}
