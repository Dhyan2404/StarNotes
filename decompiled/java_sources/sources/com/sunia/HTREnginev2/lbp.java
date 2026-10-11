package com.sunia.HTREnginev2;

import android.util.Log;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.google.android.gms.common.ConnectionResult;
import com.google.android.gms.common.api.GoogleApiClient;

/* loaded from: classes5.dex */
public final class lbp implements GoogleApiClient.OnConnectionFailedListener {

    /* renamed from: a */
    public final int f76321a;

    /* renamed from: b */
    public final GoogleApiClient f76322b;

    /* renamed from: c */
    @Nullable
    public final GoogleApiClient.OnConnectionFailedListener f76323c;

    /* renamed from: d */
    public final /* synthetic */ com.google.android.gms.common.api.internal.zak f76324d;

    public lbp(com.google.android.gms.common.api.internal.zak zakVar, int i, @Nullable GoogleApiClient googleApiClient, GoogleApiClient.OnConnectionFailedListener onConnectionFailedListener) {
        this.f76324d = zakVar;
        this.f76321a = i;
        this.f76322b = googleApiClient;
        this.f76323c = onConnectionFailedListener;
    }

    @Override // com.google.android.gms.common.api.internal.OnConnectionFailedListener
    public final void onConnectionFailed(@NonNull ConnectionResult connectionResult) {
        Log.d("AutoManageHelper", "beginFailureResolution for ".concat(String.valueOf(connectionResult)));
        this.f76324d.zah(connectionResult, this.f76321a);
    }
}
