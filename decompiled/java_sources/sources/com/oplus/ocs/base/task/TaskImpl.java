package com.oplus.ocs.base.task;

import com.oplus.ocs.base.utils.C13074d;
import java.util.concurrent.CancellationException;
import java.util.concurrent.Executor;

/* loaded from: classes9.dex */
public class TaskImpl<TResult> extends Task<TResult> {

    /* renamed from: b */
    private TResult f63094b;

    /* renamed from: c */
    private Exception f63095c;

    /* renamed from: e */
    private volatile boolean f63097e;

    /* renamed from: f */
    private volatile boolean f63098f;

    /* renamed from: a */
    private final Object f63093a = new Object();

    /* renamed from: d */
    private C13069q<TResult> f63096d = new C13069q<>();

    /* renamed from: a */
    private void m52207a() {
        synchronized (this.f63093a) {
            C13074d.m52237a(this.f63097e, "Task is not yet complete");
        }
    }

    /* renamed from: b */
    private void m52208b() {
        synchronized (this.f63093a) {
            C13074d.m52237a(!this.f63097e, "Task is already complete");
        }
    }

    /* renamed from: c */
    private void m52209c() {
        if (this.f63098f) {
            throw new CancellationException("Task is already canceled.");
        }
    }

    /* renamed from: d */
    private void m52210d() {
        synchronized (this.f63093a) {
            if (this.f63097e) {
                this.f63096d.m52219a(this);
            }
        }
    }

    @Override // com.oplus.ocs.base.task.Task
    public Task<TResult> addOnCanceledListener(OnCanceledListener onCanceledListener) {
        C13074d.m52235a(onCanceledListener, "OnCanceledListener is not null");
        return addOnCanceledListener(TaskExecutors.MAIN_THREAD, onCanceledListener);
    }

    @Override // com.oplus.ocs.base.task.Task
    public Task<TResult> addOnCompleteListener(OnCompleteListener<TResult> onCompleteListener) {
        C13074d.m52235a(onCompleteListener, "OnCompleteListener is not null");
        return addOnCompleteListener(TaskExecutors.MAIN_THREAD, onCompleteListener);
    }

    @Override // com.oplus.ocs.base.task.Task
    public Task<TResult> addOnFailureListener(OnFailureListener onFailureListener) {
        C13074d.m52235a(onFailureListener, "OnFailureListener is not null");
        return addOnFailureListener(TaskExecutors.MAIN_THREAD, onFailureListener);
    }

    @Override // com.oplus.ocs.base.task.Task
    public Task<TResult> addOnSuccessListener(OnSuccessListener<? super TResult> onSuccessListener) {
        C13074d.m52235a(onSuccessListener, "OnSuccessListener is not null");
        return addOnSuccessListener(TaskExecutors.MAIN_THREAD, onSuccessListener);
    }

    @Override // com.oplus.ocs.base.task.Task
    public <TContinuationResult> Task<TContinuationResult> continueWith(Continuation<TResult, TContinuationResult> continuation) {
        C13074d.m52235a(continuation, "Continuation is not null");
        return continueWith(TaskExecutors.MAIN_THREAD, continuation);
    }

    @Override // com.oplus.ocs.base.task.Task
    public <TContinuationResult> Task<TContinuationResult> continueWithTask(Continuation<TResult, Task<TContinuationResult>> continuation) {
        C13074d.m52235a(continuation, "Continuation is not null");
        return continueWithTask(TaskExecutors.MAIN_THREAD, continuation);
    }

    @Override // com.oplus.ocs.base.task.Task
    public Exception getException() {
        Exception exc;
        synchronized (this.f63093a) {
            exc = this.f63095c;
        }
        return exc;
    }

    @Override // com.oplus.ocs.base.task.Task
    public TResult getResult() {
        TResult tresult;
        synchronized (this.f63093a) {
            m52207a();
            m52209c();
            if (this.f63095c == null) {
                tresult = this.f63094b;
            } else {
                throw new RuntimeException(this.f63095c);
            }
        }
        return tresult;
    }

    @Override // com.oplus.ocs.base.task.Task
    public boolean isCanceled() {
        return this.f63098f;
    }

    @Override // com.oplus.ocs.base.task.Task
    public boolean isComplete() {
        boolean z;
        synchronized (this.f63093a) {
            z = this.f63097e;
        }
        return z;
    }

    @Override // com.oplus.ocs.base.task.Task
    public boolean isSuccessful() {
        boolean z;
        synchronized (this.f63093a) {
            z = this.f63097e && !this.f63098f && this.f63095c == null;
        }
        return z;
    }

    @Override // com.oplus.ocs.base.task.Task
    public <TContinuationResult> Task<TContinuationResult> onSuccessTask(Executor executor, SuccessContinuation<TResult, TContinuationResult> successContinuation) {
        C13074d.m52235a(executor, "Executor is not null");
        C13074d.m52235a(successContinuation, "SuccessContinuation is not null");
        TaskImpl taskImpl = new TaskImpl();
        this.f63096d.m52220a(new C13065m(executor, successContinuation, taskImpl));
        m52210d();
        return taskImpl;
    }

    public void setException(Exception exc) {
        C13074d.m52235a(exc, "Exception must not be null");
        synchronized (this.f63093a) {
            m52208b();
            this.f63097e = true;
            this.f63095c = exc;
        }
        this.f63096d.m52219a(this);
    }

    public void setResult(TResult tresult) {
        synchronized (this.f63093a) {
            m52208b();
            this.f63097e = true;
            this.f63094b = tresult;
        }
        this.f63096d.m52219a(this);
    }

    public boolean tryCancel() {
        boolean z;
        synchronized (this.f63093a) {
            if (this.f63097e) {
                z = false;
            } else {
                this.f63097e = true;
                this.f63098f = true;
                this.f63096d.m52219a(this);
                z = true;
            }
        }
        return z;
    }

    public boolean trySetException(Exception exc) {
        boolean z;
        C13074d.m52235a(exc, "Exception must not be null");
        C13074d.m52235a(exc, "Exception must not be null");
        synchronized (this.f63093a) {
            if (this.f63097e) {
                z = false;
            } else {
                this.f63097e = true;
                this.f63095c = exc;
                this.f63096d.m52219a(this);
                z = true;
            }
        }
        return z;
    }

    public boolean trySetResult(TResult tresult) {
        boolean z;
        synchronized (this.f63093a) {
            if (this.f63097e) {
                z = false;
            } else {
                this.f63097e = true;
                this.f63094b = tresult;
                this.f63096d.m52219a(this);
                z = true;
            }
        }
        return z;
    }

    @Override // com.oplus.ocs.base.task.Task
    public Task<TResult> addOnCanceledListener(Executor executor, OnCanceledListener onCanceledListener) {
        C13074d.m52235a(executor, "Executor is not null");
        C13074d.m52235a(onCanceledListener, "OnCanceledListener is not null");
        this.f63096d.m52220a(new C13056d(executor, onCanceledListener));
        m52210d();
        return this;
    }

    @Override // com.oplus.ocs.base.task.Task
    public Task<TResult> addOnCompleteListener(Executor executor, OnCompleteListener<TResult> onCompleteListener) {
        C13074d.m52235a(executor, "Executor is not null");
        C13074d.m52235a(onCompleteListener, "OnCompleteListener is not null");
        this.f63096d.m52220a(new C13058f(executor, onCompleteListener));
        m52210d();
        return this;
    }

    @Override // com.oplus.ocs.base.task.Task
    public Task<TResult> addOnFailureListener(Executor executor, OnFailureListener onFailureListener) {
        C13074d.m52235a(executor, "Executor is not null");
        C13074d.m52235a(onFailureListener, "OnFailureListener is not null");
        this.f63096d.m52220a(new C13060h(executor, onFailureListener));
        m52210d();
        return this;
    }

    @Override // com.oplus.ocs.base.task.Task
    public Task<TResult> addOnSuccessListener(Executor executor, OnSuccessListener<? super TResult> onSuccessListener) {
        C13074d.m52235a(executor, "Executor is not null");
        C13074d.m52235a(onSuccessListener, "OnSuccessListener is not null");
        this.f63096d.m52220a(new C13062j(executor, onSuccessListener));
        m52210d();
        return this;
    }

    @Override // com.oplus.ocs.base.task.Task
    public <TContinuationResult> Task<TContinuationResult> continueWith(Executor executor, Continuation<TResult, TContinuationResult> continuation) {
        C13074d.m52235a(executor, "Executor is not null");
        C13074d.m52235a(continuation, "Continuation is not null");
        TaskImpl taskImpl = new TaskImpl();
        this.f63096d.m52220a(new C13055c(executor, continuation, taskImpl));
        m52210d();
        return taskImpl;
    }

    @Override // com.oplus.ocs.base.task.Task
    public <TContinuationResult> Task<TContinuationResult> continueWithTask(Executor executor, Continuation<TResult, Task<TContinuationResult>> continuation) {
        C13074d.m52235a(executor, "Executor is not null");
        C13074d.m52235a(continuation, "Continuation is not null");
        TaskImpl taskImpl = new TaskImpl();
        this.f63096d.m52220a(new C13055c(executor, continuation, taskImpl));
        m52210d();
        return taskImpl;
    }

    @Override // com.oplus.ocs.base.task.Task
    public <TContinuationResult> Task<TContinuationResult> onSuccessTask(SuccessContinuation<TResult, TContinuationResult> successContinuation) {
        C13074d.m52235a(successContinuation, "SuccessContinuation is not null");
        return onSuccessTask(TaskExecutors.MAIN_THREAD, successContinuation);
    }

    @Override // com.oplus.ocs.base.task.Task
    public <X extends Throwable> TResult getResult(Class<X> cls) throws Throwable {
        TResult tresult;
        synchronized (this.f63093a) {
            m52207a();
            m52209c();
            if (!cls.isInstance(this.f63095c)) {
                if (this.f63095c == null) {
                    tresult = this.f63094b;
                } else {
                    throw new RuntimeException(this.f63095c);
                }
            } else {
                throw cls.cast(this.f63095c);
            }
        }
        return tresult;
    }
}
