package com.sunia.HTREnginev2;

import android.os.RemoteException;
import com.google.android.gms.measurement.internal.zzgb;
import com.google.android.gms.measurement.internal.zzlk;
import com.google.android.gms.measurement.internal.zzls;

/* loaded from: classes5.dex */
public final class fpp implements Runnable {

    /* renamed from: e */
    public final /* synthetic */ zzlk f70244e;

    /* renamed from: f */
    public final /* synthetic */ zzls f70245f;

    public fpp(zzls zzlsVar, zzlk zzlkVar) {
        this.f70244e = zzlkVar;
        this.f70245f = zzlsVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        zzgb zzgbVar;
        zzgbVar = this.f70245f.f29957c;
        if (zzgbVar == null) {
            this.f70245f.zzj().zzg().zza("Failed to send current screen to service");
            return;
        }
        try {
            zzlk zzlkVar = this.f70244e;
            if (zzlkVar == null) {
                zzgbVar.zza(0L, (String) null, (String) null, this.f70245f.zza().getPackageName());
            } else {
                zzgbVar.zza(zzlkVar.zzc, zzlkVar.zza, zzlkVar.zzb, this.f70245f.zza().getPackageName());
            }
            this.f70245f.zzar();
        } catch (RemoteException e) {
            this.f70245f.zzj().zzg().zza("Failed to send current screen to the service", e);
        }
    }
}
