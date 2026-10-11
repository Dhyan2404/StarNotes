package com.sunia.HTREnginev2;

import com.google.android.gms.common.api.ApiException;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.fido.fido2.Fido2PrivilegedApiClient;
import com.google.android.gms.tasks.TaskCompletionSource;

/* loaded from: classes5.dex */
public final class prp extends com.google.android.gms.internal.fido.zzd {

    /* renamed from: a */
    public final /* synthetic */ TaskCompletionSource f81173a;

    public prp(Fido2PrivilegedApiClient fido2PrivilegedApiClient, TaskCompletionSource taskCompletionSource) {
        this.f81173a = taskCompletionSource;
    }

    @Override // com.google.android.gms.internal.fido.zze
    public final void zzb(boolean z) {
        this.f81173a.setResult(Boolean.valueOf(z));
    }

    @Override // com.google.android.gms.internal.fido.zze
    public final void zzc(Status status) {
        this.f81173a.trySetException(new ApiException(status));
    }
}
