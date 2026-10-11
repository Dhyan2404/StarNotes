package com.sunia.HTREnginev2;

import android.os.RemoteException;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.measurement.internal.zzgb;
import com.google.android.gms.measurement.internal.zzls;

/* loaded from: classes5.dex */
public final class cpp implements Runnable {

    /* renamed from: e */
    public final /* synthetic */ com.google.android.gms.measurement.internal.zzo f67063e;

    /* renamed from: f */
    public final /* synthetic */ zzls f67064f;

    public cpp(zzls zzlsVar, com.google.android.gms.measurement.internal.zzo zzoVar) {
        this.f67063e = zzoVar;
        this.f67064f = zzlsVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        zzgb zzgbVar;
        zzgbVar = this.f67064f.f29957c;
        if (zzgbVar == null) {
            this.f67064f.zzj().zzg().zza("Failed to reset data on the service: not connected to service");
            return;
        }
        try {
            Preconditions.checkNotNull(this.f67063e);
            zzgbVar.zze(this.f67063e);
        } catch (RemoteException e) {
            this.f67064f.zzj().zzg().zza("Failed to reset data on the service: remote exception", e);
        }
        this.f67064f.zzar();
    }
}
