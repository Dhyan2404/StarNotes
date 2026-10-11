package com.sunia.HTREnginev2;

import android.os.Bundle;
import com.google.android.gms.measurement.api.AppMeasurementSdk;
import com.google.firebase.analytics.connector.AnalyticsConnector;

/* loaded from: classes6.dex */
public final class ikp implements AppMeasurementSdk.OnEventListener {

    /* renamed from: a */
    public final /* synthetic */ com.google.firebase.analytics.connector.internal.zzg f73331a;

    public ikp(com.google.firebase.analytics.connector.internal.zzg zzgVar) {
        this.f73331a = zzgVar;
    }

    @Override // com.google.android.gms.measurement.api.AppMeasurementSdk.OnEventListener, com.google.android.gms.measurement.internal.zzjl
    public final void onEvent(String str, String str2, Bundle bundle, long j) {
        AnalyticsConnector.AnalyticsConnectorListener analyticsConnectorListener;
        if (str == null || !com.google.firebase.analytics.connector.internal.zzb.zze(str2)) {
            return;
        }
        Bundle bundle2 = new Bundle();
        bundle2.putString("name", str2);
        bundle2.putLong("timestampInMillis", j);
        bundle2.putBundle("params", bundle);
        analyticsConnectorListener = this.f73331a.f35575a;
        analyticsConnectorListener.onMessageTriggered(3, bundle2);
    }
}
