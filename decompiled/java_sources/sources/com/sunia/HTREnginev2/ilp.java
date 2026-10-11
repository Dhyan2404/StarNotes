package com.sunia.HTREnginev2;

import android.content.ServiceConnection;
import android.net.Uri;
import android.os.Bundle;
import com.google.android.gms.common.stats.ConnectionTracker;
import com.google.android.gms.internal.measurement.zzbz;
import com.google.android.gms.internal.measurement.zzov;
import com.google.android.gms.measurement.internal.zzbh;
import com.google.android.gms.measurement.internal.zzhf;
import com.google.android.gms.measurement.internal.zzhi;
import com.google.firebase.analytics.FirebaseAnalytics;

/* loaded from: classes5.dex */
public final class ilp implements Runnable {

    /* renamed from: e */
    public final /* synthetic */ zzbz f73362e;

    /* renamed from: f */
    public final /* synthetic */ ServiceConnection f73363f;

    /* renamed from: g */
    public final /* synthetic */ zzhi f73364g;

    public ilp(zzhi zzhiVar, zzbz zzbzVar, ServiceConnection serviceConnection) {
        this.f73362e = zzbzVar;
        this.f73363f = serviceConnection;
        this.f73364g = zzhiVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        String str;
        zzhi zzhiVar = this.f73364g;
        zzhf zzhfVar = zzhiVar.f29813f;
        str = zzhiVar.f29812e;
        zzbz zzbzVar = this.f73362e;
        ServiceConnection serviceConnection = this.f73363f;
        Bundle m22455a = zzhfVar.m22455a(str, zzbzVar);
        zzhfVar.f29811a.zzl().zzt();
        zzhfVar.f29811a.m22506j();
        if (m22455a != null) {
            long j = m22455a.getLong("install_begin_timestamp_seconds", 0L) * 1000;
            if (j == 0) {
                zzhfVar.f29811a.zzj().zzu().zza("Service response is missing Install Referrer install timestamp");
            } else {
                String string = m22455a.getString("install_referrer");
                if (string == null || string.isEmpty()) {
                    zzhfVar.f29811a.zzj().zzg().zza("No referrer defined in Install Referrer response");
                } else {
                    zzhfVar.f29811a.zzj().zzp().zza("InstallReferrer API result", string);
                    boolean z = false;
                    boolean z2 = zzov.zza() && zzhfVar.f29811a.zzf().zza(zzbh.zzcu);
                    Bundle m22760f = zzhfVar.f29811a.zzt().m22760f(Uri.parse("?" + string), z2);
                    if (m22760f == null) {
                        zzhfVar.f29811a.zzj().zzg().zza("No campaign params defined in Install Referrer result");
                    } else {
                        if (!z2) {
                            String string2 = m22760f.getString(FirebaseAnalytics.Param.MEDIUM);
                            if (string2 != null && !"(not set)".equalsIgnoreCase(string2) && !"organic".equalsIgnoreCase(string2)) {
                                z = true;
                            }
                            if (z) {
                                long j2 = m22455a.getLong("referrer_click_timestamp_seconds", 0L) * 1000;
                                if (j2 == 0) {
                                    zzhfVar.f29811a.zzj().zzg().zza("Install Referrer is missing click timestamp for ad campaign");
                                } else {
                                    m22760f.putLong("click_timestamp", j2);
                                }
                            }
                        } else if (m22760f.containsKey("gclid") || m22760f.containsKey("gbraid")) {
                            long j3 = m22455a.getLong("referrer_click_timestamp_server_seconds", 0L) * 1000;
                            if (j3 > 0) {
                                m22760f.putLong("click_timestamp", j3);
                            }
                        }
                        if (j == zzhfVar.f29811a.zzn().f72325g.zza()) {
                            zzhfVar.f29811a.zzj().zzp().zza("Logging Install Referrer campaign from module while it may have already been logged.");
                        }
                        if (zzhfVar.f29811a.zzac()) {
                            zzhfVar.f29811a.zzn().f72325g.zza(j);
                            zzhfVar.f29811a.zzj().zzp().zza("Logging Install Referrer campaign from gmscore with ", "referrer API v2");
                            m22760f.putString("_cis", "referrer API v2");
                            zzhfVar.f29811a.zzp().zza("auto", "_cmp", m22760f, str);
                        }
                    }
                }
            }
        }
        if (serviceConnection != null) {
            ConnectionTracker.getInstance().unbindService(zzhfVar.f29811a.zza(), serviceConnection);
        }
    }
}
