package com.google.android.gms.common.api.internal;

import android.os.Bundle;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.google.android.gms.common.ConnectionResult;
import com.google.android.gms.common.api.Api;
import com.google.android.gms.common.api.GoogleApiClient;
import com.google.android.gms.common.internal.Preconditions;

/* loaded from: classes5.dex */
public final class zat implements GoogleApiClient.ConnectionCallbacks, GoogleApiClient.OnConnectionFailedListener {

    /* renamed from: a */
    public final boolean f29295a;

    /* renamed from: b */
    @Nullable
    public zau f29296b;
    public final Api zaa;

    public zat(Api api, boolean z) {
        this.zaa = api;
        this.f29295a = z;
    }

    /* renamed from: a */
    public final zau m22132a() {
        Preconditions.checkNotNull(this.f29296b, "Callbacks must be attached to a ClientConnectionHelper instance before connecting the client.");
        return this.f29296b;
    }

    @Override // com.google.android.gms.common.api.internal.ConnectionCallbacks
    public final void onConnected(@Nullable Bundle bundle) {
        m22132a().onConnected(bundle);
    }

    @Override // com.google.android.gms.common.api.internal.OnConnectionFailedListener
    public final void onConnectionFailed(@NonNull ConnectionResult connectionResult) {
        m22132a().zaa(connectionResult, this.zaa, this.f29295a);
    }

    @Override // com.google.android.gms.common.api.internal.ConnectionCallbacks
    public final void onConnectionSuspended(int i) {
        m22132a().onConnectionSuspended(i);
    }

    public final void zaa(zau zauVar) {
        this.f29296b = zauVar;
    }
}
