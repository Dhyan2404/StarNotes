package com.sunia.HTREnginev2;

import com.google.android.gms.common.api.internal.TaskUtil;
import com.google.android.gms.internal.location.zzaa;
import com.google.android.gms.internal.location.zzah;
import com.google.android.gms.tasks.TaskCompletionSource;

/* loaded from: classes5.dex */
public class mgp extends zzah {

    /* renamed from: a */
    public final TaskCompletionSource<Void> f77582a;

    public mgp(TaskCompletionSource<Void> taskCompletionSource) {
        this.f77582a = taskCompletionSource;
    }

    @Override // com.google.android.gms.internal.location.zzai
    public final void zzb(zzaa zzaaVar) {
        TaskUtil.setResultOrApiException(zzaaVar.getStatus(), this.f77582a);
    }

    public void zzc() {
    }
}
