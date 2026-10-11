package com.sunia.HTREnginev2;

import android.os.RemoteException;
import com.google.android.gms.common.api.Api;
import com.google.android.gms.common.api.GoogleApiClient;

/* loaded from: classes5.dex */
public final class kap extends dbp {
    public kap(com.google.android.gms.common.internal.service.zae zaeVar, GoogleApiClient googleApiClient) {
        super(googleApiClient);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.google.android.gms.common.api.internal.BaseImplementation.ApiMethodImpl
    public final /* bridge */ /* synthetic */ void doExecute(Api.AnyClient anyClient) throws RemoteException {
        ((com.google.android.gms.common.internal.service.zal) ((com.google.android.gms.common.internal.service.zah) anyClient).getService()).zae(new wap(this));
    }
}
