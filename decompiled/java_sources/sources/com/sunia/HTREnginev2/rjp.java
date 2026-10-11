package com.sunia.HTREnginev2;

import android.os.Bundle;
import com.google.android.gms.measurement.api.AppMeasurementSdk;
import com.google.firebase.analytics.connector.AnalyticsConnector;

/* loaded from: classes6.dex */
public final class rjp implements AppMeasurementSdk.OnEventListener {

    /* renamed from: a */
    public final /* synthetic */ com.google.firebase.analytics.connector.internal.zze f83180a;

    public rjp(com.google.firebase.analytics.connector.internal.zze zzeVar) {
        this.f83180a = zzeVar;
    }

    @Override // com.google.android.gms.measurement.api.AppMeasurementSdk.OnEventListener, com.google.android.gms.measurement.internal.zzjl
    public final void onEvent(String str, String str2, Bundle bundle, long j) {
        AnalyticsConnector.AnalyticsConnectorListener analyticsConnectorListener;
        if (this.f83180a.f35571a.contains(str2)) {
            Bundle bundle2 = new Bundle();
            bundle2.putString("events", com.google.firebase.analytics.connector.internal.zzb.zza(str2));
            analyticsConnectorListener = this.f83180a.f35572b;
            analyticsConnectorListener.onMessageTriggered(2, bundle2);
        }
    }
}
