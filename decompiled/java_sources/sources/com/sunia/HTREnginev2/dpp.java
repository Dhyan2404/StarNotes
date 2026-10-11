package com.sunia.HTREnginev2;

import android.os.RemoteException;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.measurement.internal.zzgb;
import com.google.android.gms.measurement.internal.zzls;

/* loaded from: classes5.dex */
public final class dpp implements Runnable {

    /* renamed from: e */
    public final /* synthetic */ com.google.android.gms.measurement.internal.zzo f68119e;

    /* renamed from: f */
    public final /* synthetic */ zzls f68120f;

    public dpp(zzls zzlsVar, com.google.android.gms.measurement.internal.zzo zzoVar) {
        this.f68119e = zzoVar;
        this.f68120f = zzlsVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        zzgb zzgbVar;
        zzgbVar = this.f68120f.f29957c;
        if (zzgbVar == null) {
            this.f68120f.zzj().zzg().zza("Discarding data. Failed to send app launch");
            return;
        }
        try {
            Preconditions.checkNotNull(this.f68119e);
            zzgbVar.zzd(this.f68119e);
            this.f68120f.zzh().zzac();
            this.f68120f.m22579c(zzgbVar, null, this.f68119e);
            this.f68120f.zzar();
        } catch (RemoteException e) {
            this.f68120f.zzj().zzg().zza("Failed to send app launch to the service", e);
        }
    }
}
