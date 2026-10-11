package com.oplus.ocs.base.task;

import com.oplus.ocs.base.utils.C13074d;
import java.util.concurrent.Executor;

/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: com.oplus.ocs.base.task.j */
/* loaded from: classes9.dex */
public final class C13062j<TResult> implements InterfaceC13054b<TResult> {

    /* renamed from: a */
    private Executor f63127a;

    /* renamed from: b */
    private final Object f63128b = new Object();

    /* renamed from: c */
    private volatile OnSuccessListener<? super TResult> f63129c;

    public C13062j(Executor executor, OnSuccessListener<? super TResult> onSuccessListener) {
        C13074d.m52235a(executor, "Executor is not null");
        C13074d.m52235a(onSuccessListener, "OnSuccessListener is not null");
        this.f63127a = executor;
        this.f63129c = onSuccessListener;
    }

    /* renamed from: a */
    public final OnSuccessListener<? super TResult> m52218a() {
        OnSuccessListener<? super TResult> onSuccessListener;
        synchronized (this.f63128b) {
            onSuccessListener = this.f63129c;
        }
        return onSuccessListener;
    }

    @Override // com.oplus.ocs.base.task.InterfaceC13054b
    /* renamed from: a */
    public final void mo52214a(Task<TResult> task) {
        C13074d.m52235a(task, "task is not null");
        if (task.isSuccessful()) {
            synchronized (this.f63128b) {
                if (this.f63129c == null) {
                    return;
                }
                this.f63127a.execute(new RunnableC13063k(this, task));
            }
        }
    }
}
