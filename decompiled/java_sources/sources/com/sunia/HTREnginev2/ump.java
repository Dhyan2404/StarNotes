package com.sunia.HTREnginev2;

import androidx.annotation.Nullable;
import com.google.android.gms.common.api.ApiException;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.api.internal.BaseImplementation;
import com.google.android.gms.common.api.internal.TaskUtil;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.tasks.TaskCompletionSource;

/* loaded from: classes5.dex */
public final class ump implements BaseImplementation.ResultHolder<Status> {

    /* renamed from: a */
    public final TaskCompletionSource<Void> f86652a;

    public ump(TaskCompletionSource<Void> taskCompletionSource) {
        Preconditions.checkNotNull(taskCompletionSource);
        this.f86652a = taskCompletionSource;
    }

    @Override // com.google.android.gms.common.api.internal.BaseImplementation.ResultHolder
    public final void setFailedResult(@Nullable Status status) {
        if (status == null) {
            return;
        }
        this.f86652a.setException(new ApiException(status));
    }

    @Override // com.google.android.gms.common.api.internal.BaseImplementation.ResultHolder
    public final /* bridge */ /* synthetic */ void setResult(Status status) {
        TaskUtil.setResultOrApiException(status, null, this.f86652a);
    }
}
