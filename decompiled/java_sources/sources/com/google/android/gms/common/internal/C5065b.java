package com.google.android.gms.common.internal;

import androidx.annotation.NonNull;
import com.google.android.gms.common.ConnectionResult;
import com.google.android.gms.common.api.internal.OnConnectionFailedListener;
import com.google.android.gms.common.internal.BaseGmsClient;

/* renamed from: com.google.android.gms.common.internal.b */
/* loaded from: classes5.dex */
public final class C5065b implements BaseGmsClient.BaseOnConnectionFailedListener {

    /* renamed from: e */
    public final /* synthetic */ OnConnectionFailedListener f29376e;

    public C5065b(OnConnectionFailedListener onConnectionFailedListener) {
        this.f29376e = onConnectionFailedListener;
    }

    @Override // com.google.android.gms.common.internal.BaseGmsClient.BaseOnConnectionFailedListener
    public final void onConnectionFailed(@NonNull ConnectionResult connectionResult) {
        this.f29376e.onConnectionFailed(connectionResult);
    }
}
