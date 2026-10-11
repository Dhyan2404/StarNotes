package com.sunia.HTREnginev2;

import android.os.RemoteException;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.measurement.internal.zzgb;
import com.google.android.gms.measurement.internal.zzls;

/* loaded from: classes5.dex */
public final class lpp implements Runnable {

    /* renamed from: e */
    public final /* synthetic */ com.google.android.gms.measurement.internal.zzo f76757e;

    /* renamed from: f */
    public final /* synthetic */ zzls f76758f;

    public lpp(zzls zzlsVar, com.google.android.gms.measurement.internal.zzo zzoVar) {
        this.f76757e = zzoVar;
        this.f76758f = zzlsVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        zzgb zzgbVar;
        zzgbVar = this.f76758f.f29957c;
        if (zzgbVar == null) {
            this.f76758f.zzj().zzg().zza("Failed to send consent settings to service");
            return;
        }
        try {
            Preconditions.checkNotNull(this.f76757e);
            zzgbVar.zzf(this.f76757e);
            this.f76758f.zzar();
        } catch (RemoteException e) {
            this.f76758f.zzj().zzg().zza("Failed to send consent settings to the service", e);
        }
    }
}
