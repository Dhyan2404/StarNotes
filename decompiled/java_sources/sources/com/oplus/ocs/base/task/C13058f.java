package com.oplus.ocs.base.task;

import com.oplus.ocs.base.utils.C13074d;
import java.util.concurrent.Executor;

/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: com.oplus.ocs.base.task.f */
/* loaded from: classes9.dex */
public final class C13058f<TResult> implements InterfaceC13054b<TResult> {

    /* renamed from: a */
    final Object f63117a = new Object();

    /* renamed from: b */
    private Executor f63118b;

    /* renamed from: c */
    private volatile OnCompleteListener<TResult> f63119c;

    public C13058f(Executor executor, OnCompleteListener<TResult> onCompleteListener) {
        C13074d.m52235a(executor, "Executor is not null");
        C13074d.m52235a(onCompleteListener, "OnCompleteListener is not null");
        this.f63118b = executor;
        this.f63119c = onCompleteListener;
    }

    /* renamed from: a */
    public final OnCompleteListener<TResult> m52216a() {
        OnCompleteListener<TResult> onCompleteListener;
        synchronized (this.f63117a) {
            onCompleteListener = this.f63119c;
        }
        return onCompleteListener;
    }

    @Override // com.oplus.ocs.base.task.InterfaceC13054b
    /* renamed from: a */
    public final void mo52214a(Task<TResult> task) {
        C13074d.m52235a(task, "Task is not null");
        synchronized (this.f63117a) {
            if (this.f63119c == null) {
                return;
            }
            this.f63118b.execute(new RunnableC13059g(this, task));
        }
    }
}
