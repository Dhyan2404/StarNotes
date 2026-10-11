package com.sunia.HTREnginev2;

import android.app.PendingIntent;
import android.os.RemoteException;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.api.internal.TaskUtil;
import com.google.android.gms.fido.fido2.Fido2ApiClient;
import com.google.android.gms.internal.fido.zzq;
import com.google.android.gms.tasks.TaskCompletionSource;

/* loaded from: classes5.dex */
public final class rlp extends zzq {

    /* renamed from: a */
    public final /* synthetic */ TaskCompletionSource f83236a;

    public rlp(Fido2ApiClient fido2ApiClient, TaskCompletionSource taskCompletionSource) {
        this.f83236a = taskCompletionSource;
    }

    @Override // com.google.android.gms.internal.fido.zzr
    public final void zzb(Status status, PendingIntent pendingIntent) throws RemoteException {
        TaskUtil.setResultOrApiException(status, new com.google.android.gms.internal.fido.zzi(pendingIntent), this.f83236a);
    }
}
