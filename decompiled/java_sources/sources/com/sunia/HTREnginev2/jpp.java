package com.sunia.HTREnginev2;

import android.os.RemoteException;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.measurement.internal.zzgb;
import com.google.android.gms.measurement.internal.zzls;

/* loaded from: classes5.dex */
public final class jpp implements Runnable {

    /* renamed from: e */
    public final /* synthetic */ com.google.android.gms.measurement.internal.zzo f74580e;

    /* renamed from: f */
    public final /* synthetic */ zzls f74581f;

    public jpp(zzls zzlsVar, com.google.android.gms.measurement.internal.zzo zzoVar) {
        this.f74580e = zzoVar;
        this.f74581f = zzlsVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        zzgb zzgbVar;
        zzgbVar = this.f74581f.f29957c;
        if (zzgbVar == null) {
            this.f74581f.zzj().zzg().zza("Failed to send measurementEnabled to service");
            return;
        }
        try {
            Preconditions.checkNotNull(this.f74580e);
            zzgbVar.zzh(this.f74580e);
            this.f74581f.zzar();
        } catch (RemoteException e) {
            this.f74581f.zzj().zzg().zza("Failed to send measurementEnabled to the service", e);
        }
    }
}
