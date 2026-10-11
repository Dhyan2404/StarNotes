package com.sunia.HTREnginev2;

import androidx.annotation.NonNull;
import com.google.android.gms.common.ConnectionResult;
import com.google.android.gms.common.api.GoogleApiClient;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.api.internal.StatusPendingResult;
import com.google.android.gms.common.api.internal.zabe;

/* loaded from: classes5.dex */
public final class w9p implements GoogleApiClient.OnConnectionFailedListener {

    /* renamed from: a */
    public final /* synthetic */ StatusPendingResult f88392a;

    public w9p(zabe zabeVar, StatusPendingResult statusPendingResult) {
        this.f88392a = statusPendingResult;
    }

    @Override // com.google.android.gms.common.api.internal.OnConnectionFailedListener
    public final void onConnectionFailed(@NonNull ConnectionResult connectionResult) {
        this.f88392a.setResult(new Status(8));
    }
}
