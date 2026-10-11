package com.google.firebase.analytics.connector.internal;

import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.measurement.api.AppMeasurementSdk;
import com.google.firebase.analytics.connector.AnalyticsConnector;
import com.sunia.HTREnginev2.rjp;
import java.util.HashSet;
import java.util.Set;

/* loaded from: classes6.dex */
public final class zze implements zza {

    /* renamed from: a */
    public Set<String> f35571a;

    /* renamed from: b */
    public AnalyticsConnector.AnalyticsConnectorListener f35572b;

    /* renamed from: c */
    public AppMeasurementSdk f35573c;

    /* renamed from: d */
    public rjp f35574d;

    public zze(AppMeasurementSdk appMeasurementSdk, AnalyticsConnector.AnalyticsConnectorListener analyticsConnectorListener) {
        this.f35572b = analyticsConnectorListener;
        this.f35573c = appMeasurementSdk;
        rjp rjpVar = new rjp(this);
        this.f35574d = rjpVar;
        this.f35573c.registerOnMeasurementEventListener(rjpVar);
        this.f35571a = new HashSet();
    }

    @Override // com.google.firebase.analytics.connector.internal.zza
    public final AnalyticsConnector.AnalyticsConnectorListener zza() {
        return this.f35572b;
    }

    @Override // com.google.firebase.analytics.connector.internal.zza
    public final void zzb() {
        this.f35571a.clear();
    }

    @Override // com.google.firebase.analytics.connector.internal.zza
    public final void zza(Set<String> set) {
        this.f35571a.clear();
        Set<String> set2 = this.f35571a;
        HashSet hashSet = new HashSet();
        for (String str : set) {
            if (hashSet.size() >= 50) {
                break;
            }
            if (zzb.zzc(str) && zzb.zzd(str)) {
                String zzb = zzb.zzb(str);
                Preconditions.checkNotNull(zzb);
                hashSet.add(zzb);
            }
        }
        set2.addAll(hashSet);
    }
}
