package com.google.firebase.analytics.connector.internal;

import com.google.android.gms.measurement.api.AppMeasurementSdk;
import com.google.firebase.analytics.connector.AnalyticsConnector;
import com.sunia.HTREnginev2.ikp;
import java.util.Set;

/* loaded from: classes6.dex */
public final class zzg implements zza {

    /* renamed from: a */
    public AnalyticsConnector.AnalyticsConnectorListener f35575a;

    /* renamed from: b */
    public AppMeasurementSdk f35576b;

    /* renamed from: c */
    public ikp f35577c;

    public zzg(AppMeasurementSdk appMeasurementSdk, AnalyticsConnector.AnalyticsConnectorListener analyticsConnectorListener) {
        this.f35575a = analyticsConnectorListener;
        this.f35576b = appMeasurementSdk;
        ikp ikpVar = new ikp(this);
        this.f35577c = ikpVar;
        this.f35576b.registerOnMeasurementEventListener(ikpVar);
    }

    @Override // com.google.firebase.analytics.connector.internal.zza
    public final void zza(Set<String> set) {
    }

    @Override // com.google.firebase.analytics.connector.internal.zza
    public final void zzb() {
    }

    @Override // com.google.firebase.analytics.connector.internal.zza
    public final AnalyticsConnector.AnalyticsConnectorListener zza() {
        return this.f35575a;
    }
}
