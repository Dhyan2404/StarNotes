package com.oplus.ocs.base.task;

import com.oplus.ocs.base.utils.C13074d;
import java.util.concurrent.Executor;

/* renamed from: com.oplus.ocs.base.task.m */
/* loaded from: classes9.dex */
final class C13065m<TResult, TContinuationResult> implements OnCanceledListener, OnFailureListener, OnSuccessListener<TContinuationResult>, InterfaceC13054b<TResult> {

    /* renamed from: a */
    SuccessContinuation<TResult, TContinuationResult> f63134a;

    /* renamed from: b */
    private Executor f63135b;

    /* renamed from: c */
    private TaskImpl<TContinuationResult> f63136c;

    public C13065m(Executor executor, SuccessContinuation<TResult, TContinuationResult> successContinuation, TaskImpl<TContinuationResult> taskImpl) {
        C13074d.m52235a(executor, "executor is not null");
        C13074d.m52235a(successContinuation, "successContinuation is not null");
        C13074d.m52235a(taskImpl, "task is not null");
        this.f63135b = executor;
        this.f63134a = successContinuation;
        this.f63136c = taskImpl;
    }

    @Override // com.oplus.ocs.base.task.InterfaceC13054b
    /* renamed from: a */
    public final void mo52214a(Task<TResult> task) {
        C13074d.m52235a(task, "task is not null");
        this.f63135b.execute(new RunnableC13066n(this, task));
    }

    @Override // com.oplus.ocs.base.task.OnCanceledListener
    public final void onCanceled() {
        this.f63136c.tryCancel();
    }

    @Override // com.oplus.ocs.base.task.OnFailureListener
    public final void onFailure(Exception exc) {
        C13074d.m52235a(exc, "param exception is not null");
        this.f63136c.setException(exc);
    }

    @Override // com.oplus.ocs.base.task.OnSuccessListener
    public final void onSuccess(TContinuationResult tcontinuationresult) {
        this.f63136c.setResult(tcontinuationresult);
    }
}
