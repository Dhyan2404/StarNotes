package com.alibaba.sdk.android.oss.internal;

import com.alibaba.sdk.android.oss.ClientException;
import com.alibaba.sdk.android.oss.ServiceException;
import com.alibaba.sdk.android.oss.model.OSSResult;
import com.alibaba.sdk.android.oss.network.ExecutionContext;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.Future;

/* loaded from: classes3.dex */
public class OSSAsyncTask<T extends OSSResult> {

    /* renamed from: a */
    public Future<T> f13015a;

    /* renamed from: b */
    public ExecutionContext f13016b;

    /* renamed from: c */
    public volatile boolean f13017c;

    public static OSSAsyncTask wrapRequestTask(Future future, ExecutionContext executionContext) {
        OSSAsyncTask oSSAsyncTask = new OSSAsyncTask();
        oSSAsyncTask.f13015a = future;
        oSSAsyncTask.f13016b = executionContext;
        return oSSAsyncTask;
    }

    public void cancel() {
        this.f13017c = true;
        ExecutionContext executionContext = this.f13016b;
        if (executionContext != null) {
            executionContext.getCancellationHandler().cancel();
        }
    }

    public T getResult() throws ClientException, ServiceException {
        try {
            return this.f13015a.get();
        } catch (InterruptedException e) {
            throw new ClientException(" InterruptedException and message : " + e.getMessage(), e);
        } catch (ExecutionException e2) {
            Throwable cause = e2.getCause();
            if (cause instanceof ClientException) {
                throw ((ClientException) cause);
            }
            if (cause instanceof ServiceException) {
                throw ((ServiceException) cause);
            }
            cause.printStackTrace();
            throw new ClientException("Unexpected exception!" + cause.getMessage());
        }
    }

    public boolean isCanceled() {
        return this.f13017c;
    }

    public boolean isCompleted() {
        return this.f13015a.isDone();
    }

    public void waitUntilFinished() {
        try {
            this.f13015a.get();
        } catch (Exception unused) {
        }
    }
}
