package com.sunia.HTREnginev2;

import android.os.RemoteException;
import com.google.android.gms.common.api.ApiException;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.fido.fido2.Fido2ApiClient;
import com.google.android.gms.tasks.TaskCompletionSource;

/* loaded from: classes5.dex */
public final class tmp extends com.google.android.gms.internal.fido.zzd {

    /* renamed from: a */
    public final /* synthetic */ TaskCompletionSource f85518a;

    public tmp(Fido2ApiClient fido2ApiClient, TaskCompletionSource taskCompletionSource) {
        this.f85518a = taskCompletionSource;
    }

    @Override // com.google.android.gms.internal.fido.zze
    public final void zzb(boolean z) throws RemoteException {
        this.f85518a.setResult(Boolean.valueOf(z));
    }

    @Override // com.google.android.gms.internal.fido.zze
    public final void zzc(Status status) throws RemoteException {
        this.f85518a.trySetException(new ApiException(status));
    }
}
