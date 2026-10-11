package com.sunia.HTREnginev2;

import android.os.RemoteException;
import com.google.android.gms.common.api.Api;
import com.google.android.gms.common.api.internal.TaskApiCall;
import com.google.android.gms.internal.auth.zzap;
import com.google.android.gms.internal.auth.zzau;
import com.google.android.gms.tasks.TaskCompletionSource;

/* loaded from: classes5.dex */
public abstract class jop extends TaskApiCall {

    /* renamed from: d */
    public TaskCompletionSource f74545d;

    public /* synthetic */ jop(int i, com.google.android.gms.auth.api.accounttransfer.zzk zzkVar) {
        super(null, false, i);
    }

    /* renamed from: a */
    public abstract void mo53280a(zzau zzauVar) throws RemoteException;

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.google.android.gms.common.api.internal.TaskApiCall
    public final /* bridge */ /* synthetic */ void doExecute(Api.AnyClient anyClient, TaskCompletionSource taskCompletionSource) throws RemoteException {
        this.f74545d = taskCompletionSource;
        mo53280a((zzau) ((zzap) anyClient).getService());
    }
}
