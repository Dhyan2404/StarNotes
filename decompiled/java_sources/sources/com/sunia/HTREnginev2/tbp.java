package com.sunia.HTREnginev2;

import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.api.internal.TaskUtil;
import com.google.android.gms.common.moduleinstall.internal.zay;
import com.google.android.gms.tasks.TaskCompletionSource;

/* loaded from: classes5.dex */
public final class tbp extends com.google.android.gms.common.moduleinstall.internal.zaa {

    /* renamed from: a */
    public final /* synthetic */ TaskCompletionSource f85164a;

    public tbp(zay zayVar, TaskCompletionSource taskCompletionSource) {
        this.f85164a = taskCompletionSource;
    }

    @Override // com.google.android.gms.common.moduleinstall.internal.zaa, com.google.android.gms.common.moduleinstall.internal.zae
    public final void zab(Status status) {
        TaskUtil.trySetResultOrApiException(status, null, this.f85164a);
    }
}
