package com.sunia.HTREnginev2;

import com.google.android.gms.common.api.ApiException;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.api.internal.BaseImplementation;
import com.google.android.gms.common.api.internal.TaskUtil;
import com.google.android.gms.tasks.TaskCompletionSource;

/* loaded from: classes5.dex */
public final class xgp implements BaseImplementation.ResultHolder<Status> {

    /* renamed from: a */
    public final TaskCompletionSource<Void> f89642a;

    public xgp(TaskCompletionSource<Void> taskCompletionSource) {
        this.f89642a = taskCompletionSource;
    }

    @Override // com.google.android.gms.common.api.internal.BaseImplementation.ResultHolder
    public final void setFailedResult(Status status) {
        this.f89642a.setException(new ApiException(status));
    }

    @Override // com.google.android.gms.common.api.internal.BaseImplementation.ResultHolder
    public final /* bridge */ /* synthetic */ void setResult(Status status) {
        TaskUtil.setResultOrApiException(status, null, this.f89642a);
    }
}
