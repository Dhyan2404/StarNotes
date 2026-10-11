package com.sunia.HTREnginev2;

import android.database.sqlite.SQLiteException;
import android.os.Bundle;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.internal.measurement.zzpn;
import com.google.android.gms.measurement.internal.zzbh;
import com.google.android.gms.measurement.internal.zzgo;
import com.google.android.gms.measurement.internal.zzic;
import com.google.android.gms.measurement.internal.zzno;
import com.google.android.gms.measurement.internal.zznv;
import java.util.ArrayList;
import java.util.List;
import java.util.concurrent.Callable;

/* loaded from: classes5.dex */
public final class omp implements Callable<List<zzno>> {

    /* renamed from: e */
    public final /* synthetic */ com.google.android.gms.measurement.internal.zzo f79946e;

    /* renamed from: f */
    public final /* synthetic */ Bundle f79947f;

    /* renamed from: g */
    public final /* synthetic */ zzic f79948g;

    public omp(zzic zzicVar, com.google.android.gms.measurement.internal.zzo zzoVar, Bundle bundle) {
        this.f79946e = zzoVar;
        this.f79947f = bundle;
        this.f79948g = zzicVar;
    }

    @Override // java.util.concurrent.Callable
    public final /* synthetic */ List<zzno> call() throws Exception {
        zznv zznvVar;
        zznv zznvVar2;
        zznvVar = this.f79948g.f29882a;
        zznvVar.m22657h0();
        zznvVar2 = this.f79948g.f29882a;
        com.google.android.gms.measurement.internal.zzo zzoVar = this.f79946e;
        Bundle bundle = this.f79947f;
        zznvVar2.zzl().zzt();
        if (!zzpn.zza() || !zznvVar2.zze().zze(zzoVar.zza, zzbh.zzch) || zzoVar.zza == null) {
            return new ArrayList();
        }
        if (bundle != null) {
            int[] intArray = bundle.getIntArray("uriSources");
            long[] longArray = bundle.getLongArray("uriTimestamps");
            if (intArray != null) {
                if (longArray == null || longArray.length != intArray.length) {
                    zznvVar2.zzj().zzg().zza("Uri sources and timestamps do not match");
                } else {
                    for (int i = 0; i < intArray.length; i++) {
                        hgp zzf = zznvVar2.zzf();
                        String str = zzoVar.zza;
                        int i2 = intArray[i];
                        long j = longArray[i];
                        Preconditions.checkNotEmpty(str);
                        zzf.zzt();
                        zzf.zzal();
                        try {
                            int delete = zzf.m54513e().delete("trigger_uris", "app_id=? and source=? and timestamp_millis<=?", new String[]{str, String.valueOf(i2), String.valueOf(j)});
                            zzf.zzj().zzp().zza("Pruned " + delete + " trigger URIs. appId, source, timestamp", str, Integer.valueOf(i2), Long.valueOf(j));
                        } catch (SQLiteException e) {
                            zzf.zzj().zzg().zza("Error pruning trigger URIs. appId", zzgo.zza(str), e);
                        }
                    }
                }
            }
        }
        return zznvVar2.zzf().m54553z0(zzoVar.zza);
    }
}
