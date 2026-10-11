package com.sunia.HTREnginev2;

import androidx.annotation.Nullable;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.api.internal.TaskUtil;
import com.google.android.gms.common.moduleinstall.ModuleAvailabilityResponse;
import com.google.android.gms.common.moduleinstall.internal.zay;
import com.google.android.gms.tasks.TaskCompletionSource;

/* loaded from: classes5.dex */
public final class sbp extends com.google.android.gms.common.moduleinstall.internal.zaa {

    /* renamed from: a */
    public final /* synthetic */ TaskCompletionSource f83996a;

    public sbp(zay zayVar, TaskCompletionSource taskCompletionSource) {
        this.f83996a = taskCompletionSource;
    }

    @Override // com.google.android.gms.common.moduleinstall.internal.zaa, com.google.android.gms.common.moduleinstall.internal.zae
    public final void zae(Status status, @Nullable ModuleAvailabilityResponse moduleAvailabilityResponse) {
        TaskUtil.trySetResultOrApiException(status, moduleAvailabilityResponse, this.f83996a);
    }
}
