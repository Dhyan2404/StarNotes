package com.oplus.ocs.base.task;

import com.oplus.ocs.base.utils.C13074d;

/* loaded from: classes9.dex */
public class TaskCompletionSource<TResult> {

    /* renamed from: a */
    private TaskImpl<TResult> f63091a = new TaskImpl<>();

    public Task<TResult> getTask() {
        return this.f63091a;
    }

    public void setException(Exception exc) {
        C13074d.m52234a(exc);
        this.f63091a.setException(exc);
    }

    public void setResult(TResult tresult) {
        this.f63091a.setResult(tresult);
    }

    public boolean trySetException(Exception exc) {
        C13074d.m52234a(exc);
        return this.f63091a.trySetException(exc);
    }

    public boolean trySetResult(TResult tresult) {
        return this.f63091a.trySetResult(tresult);
    }
}
