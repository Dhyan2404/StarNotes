package com.sunia.HTREnginev2;

import android.os.RemoteException;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.internal.measurement.zzdo;
import com.google.android.gms.measurement.internal.zzgb;
import com.google.android.gms.measurement.internal.zzls;

/* loaded from: classes5.dex */
public final class epp implements Runnable {

    /* renamed from: e */
    public final /* synthetic */ com.google.android.gms.measurement.internal.zzo f69201e;

    /* renamed from: f */
    public final /* synthetic */ zzdo f69202f;

    /* renamed from: g */
    public final /* synthetic */ zzls f69203g;

    public epp(zzls zzlsVar, com.google.android.gms.measurement.internal.zzo zzoVar, zzdo zzdoVar) {
        this.f69201e = zzoVar;
        this.f69202f = zzdoVar;
        this.f69203g = zzlsVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        zzgb zzgbVar;
        try {
            if (!this.f69203g.zzk().m54580o().zzh()) {
                this.f69203g.zzj().zzv().zza("Analytics storage consent denied; will not get app instance id");
                this.f69203g.zzm().m22543H(null);
                this.f69203g.zzk().f72326h.zza(null);
                return;
            }
            zzgbVar = this.f69203g.f29957c;
            if (zzgbVar == null) {
                this.f69203g.zzj().zzg().zza("Failed to get app instance id");
                return;
            }
            Preconditions.checkNotNull(this.f69201e);
            String zzb = zzgbVar.zzb(this.f69201e);
            if (zzb != null) {
                this.f69203g.zzm().m22543H(zzb);
                this.f69203g.zzk().f72326h.zza(zzb);
            }
            this.f69203g.zzar();
            this.f69203g.zzq().zza(this.f69202f, zzb);
        } catch (RemoteException e) {
            this.f69203g.zzj().zzg().zza("Failed to get app instance id", e);
        } finally {
            this.f69203g.zzq().zza(this.f69202f, (String) null);
        }
    }
}
