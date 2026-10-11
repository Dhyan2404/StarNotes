package com.sunia.HTREnginev2;

import android.app.PendingIntent;
import android.os.RemoteException;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.api.internal.TaskUtil;
import com.google.android.gms.fido.fido2.Fido2ApiClient;
import com.google.android.gms.internal.fido.zzq;
import com.google.android.gms.tasks.TaskCompletionSource;

/* loaded from: classes5.dex */
public final class mkp extends zzq {

    /* renamed from: a */
    public final /* synthetic */ TaskCompletionSource f77703a;

    public mkp(Fido2ApiClient fido2ApiClient, TaskCompletionSource taskCompletionSource) {
        this.f77703a = taskCompletionSource;
    }

    @Override // com.google.android.gms.internal.fido.zzr
    public final void zzb(Status status, PendingIntent pendingIntent) throws RemoteException {
        TaskUtil.setResultOrApiException(status, pendingIntent, this.f77703a);
    }
}
