package com.oplus.ocs.base.task;

import com.oplus.ocs.base.utils.C13074d;
import java.util.concurrent.Executor;

/* renamed from: com.oplus.ocs.base.task.c */
/* loaded from: classes9.dex */
final class C13055c<TResult, TContinuationResult> implements InterfaceC13054b<TResult> {

    /* renamed from: a */
    Continuation<TResult, TContinuationResult> f63110a;

    /* renamed from: b */
    TaskImpl<TContinuationResult> f63111b;

    /* renamed from: c */
    private Executor f63112c;

    public C13055c(Executor executor, Continuation<TResult, TContinuationResult> continuation, TaskImpl<TContinuationResult> taskImpl) {
        C13074d.m52235a(executor, "Executor is not null");
        C13074d.m52235a(continuation, "Continuation is not null");
        C13074d.m52235a(taskImpl, "TaskImpl is not null");
        this.f63112c = executor;
        this.f63110a = continuation;
        this.f63111b = taskImpl;
    }

    @Override // com.oplus.ocs.base.task.InterfaceC13054b
    /* renamed from: a */
    public final void mo52214a(Task<TResult> task) {
        C13074d.m52235a(task, "Task is not null");
        this.f63112c.execute(new RunnableC13064l(this, task));
    }
}
