package com.sunia.HTREnginev2;

import com.google.android.gms.common.api.ApiException;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.fido.fido2.Fido2PrivilegedApiClient;
import com.google.android.gms.tasks.TaskCompletionSource;
import java.util.List;

/* loaded from: classes5.dex */
public final class qrp extends com.google.android.gms.internal.fido.zzf {

    /* renamed from: a */
    public final /* synthetic */ TaskCompletionSource f82369a;

    public qrp(Fido2PrivilegedApiClient fido2PrivilegedApiClient, TaskCompletionSource taskCompletionSource) {
        this.f82369a = taskCompletionSource;
    }

    @Override // com.google.android.gms.internal.fido.zzg
    public final void zzb(List list) {
        this.f82369a.setResult(list);
    }

    @Override // com.google.android.gms.internal.fido.zzg
    public final void zzc(Status status) {
        this.f82369a.trySetException(new ApiException(status));
    }
}
