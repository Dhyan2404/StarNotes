package com.sunia.HTREnginev2;

import android.os.RemoteException;
import com.google.android.gms.auth.api.signin.internal.zbs;
import com.google.android.gms.common.api.Api;
import com.google.android.gms.common.api.GoogleApiClient;
import com.google.android.gms.common.api.Result;
import com.google.android.gms.common.api.Status;

/* loaded from: classes5.dex */
public final class kep extends qep {
    public kep(GoogleApiClient googleApiClient) {
        super(googleApiClient);
    }

    @Override // com.google.android.gms.common.api.internal.BasePendingResult
    public final /* bridge */ /* synthetic */ Result createFailedResult(Status status) {
        return status;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.google.android.gms.common.api.internal.BaseImplementation.ApiMethodImpl
    public final /* bridge */ /* synthetic */ void doExecute(Api.AnyClient anyClient) throws RemoteException {
        com.google.android.gms.auth.api.signin.internal.zbe zbeVar = (com.google.android.gms.auth.api.signin.internal.zbe) anyClient;
        ((zbs) zbeVar.getService()).zbd(new jep(this), zbeVar.zba());
    }
}
