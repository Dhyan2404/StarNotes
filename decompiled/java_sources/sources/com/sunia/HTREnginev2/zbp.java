package com.sunia.HTREnginev2;

import androidx.annotation.Nullable;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.api.internal.TaskUtil;
import com.google.android.gms.common.moduleinstall.ModuleInstallIntentResponse;
import com.google.android.gms.common.moduleinstall.internal.zay;
import com.google.android.gms.tasks.TaskCompletionSource;

/* loaded from: classes5.dex */
public final class zbp extends com.google.android.gms.common.moduleinstall.internal.zaa {

    /* renamed from: a */
    public final /* synthetic */ TaskCompletionSource f91594a;

    public zbp(zay zayVar, TaskCompletionSource taskCompletionSource) {
        this.f91594a = taskCompletionSource;
    }

    @Override // com.google.android.gms.common.moduleinstall.internal.zaa, com.google.android.gms.common.moduleinstall.internal.zae
    public final void zac(Status status, @Nullable ModuleInstallIntentResponse moduleInstallIntentResponse) {
        TaskUtil.trySetResultOrApiException(status, moduleInstallIntentResponse, this.f91594a);
    }
}
