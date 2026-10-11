package com.google.android.gms.common.internal;

import android.os.Bundle;
import androidx.annotation.Nullable;
import com.google.android.gms.common.api.internal.ConnectionCallbacks;
import com.google.android.gms.common.internal.BaseGmsClient;

/* renamed from: com.google.android.gms.common.internal.a */
/* loaded from: classes5.dex */
public final class C5064a implements BaseGmsClient.BaseConnectionCallbacks {

    /* renamed from: e */
    public final /* synthetic */ ConnectionCallbacks f29375e;

    public C5064a(ConnectionCallbacks connectionCallbacks) {
        this.f29375e = connectionCallbacks;
    }

    @Override // com.google.android.gms.common.internal.BaseGmsClient.BaseConnectionCallbacks
    public final void onConnected(@Nullable Bundle bundle) {
        this.f29375e.onConnected(bundle);
    }

    @Override // com.google.android.gms.common.internal.BaseGmsClient.BaseConnectionCallbacks
    public final void onConnectionSuspended(int i) {
        this.f29375e.onConnectionSuspended(i);
    }
}
