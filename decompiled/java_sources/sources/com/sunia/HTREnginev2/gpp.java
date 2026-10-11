package com.sunia.HTREnginev2;

import android.os.RemoteException;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.measurement.internal.zzgb;
import com.google.android.gms.measurement.internal.zzls;

/* loaded from: classes5.dex */
public final class gpp implements Runnable {

    /* renamed from: e */
    public final /* synthetic */ com.google.android.gms.measurement.internal.zzo f71355e;

    /* renamed from: f */
    public final /* synthetic */ zzls f71356f;

    public gpp(zzls zzlsVar, com.google.android.gms.measurement.internal.zzo zzoVar) {
        this.f71355e = zzoVar;
        this.f71356f = zzlsVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        zzgb zzgbVar;
        zzgbVar = this.f71356f.f29957c;
        if (zzgbVar == null) {
            this.f71356f.zzj().zzu().zza("Failed to send app backgrounded");
            return;
        }
        try {
            Preconditions.checkNotNull(this.f71355e);
            zzgbVar.zzc(this.f71355e);
            this.f71356f.zzar();
        } catch (RemoteException e) {
            this.f71356f.zzj().zzg().zza("Failed to send app backgrounded to the service", e);
        }
    }
}
