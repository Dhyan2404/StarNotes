package com.sunia.HTREnginev2;

import android.os.Bundle;
import android.os.RemoteException;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.internal.measurement.zzdo;
import com.google.android.gms.measurement.internal.zzgb;
import com.google.android.gms.measurement.internal.zzls;
import com.google.android.gms.measurement.internal.zzos;

/* loaded from: classes5.dex */
public final class uop implements Runnable {

    /* renamed from: e */
    public final /* synthetic */ String f86704e;

    /* renamed from: f */
    public final /* synthetic */ String f86705f;

    /* renamed from: g */
    public final /* synthetic */ com.google.android.gms.measurement.internal.zzo f86706g;

    /* renamed from: h */
    public final /* synthetic */ boolean f86707h;

    /* renamed from: i */
    public final /* synthetic */ zzdo f86708i;

    /* renamed from: j */
    public final /* synthetic */ zzls f86709j;

    public uop(zzls zzlsVar, String str, String str2, com.google.android.gms.measurement.internal.zzo zzoVar, boolean z, zzdo zzdoVar) {
        this.f86704e = str;
        this.f86705f = str2;
        this.f86706g = zzoVar;
        this.f86707h = z;
        this.f86708i = zzdoVar;
        this.f86709j = zzlsVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        zzgb zzgbVar;
        Bundle bundle = new Bundle();
        try {
            zzgbVar = this.f86709j.f29957c;
            if (zzgbVar == null) {
                this.f86709j.zzj().zzg().zza("Failed to get user properties; not connected to service", this.f86704e, this.f86705f);
                return;
            }
            Preconditions.checkNotNull(this.f86706g);
            Bundle zza = zzos.zza(zzgbVar.zza(this.f86704e, this.f86705f, this.f86707h, this.f86706g));
            this.f86709j.zzar();
            this.f86709j.zzq().zza(this.f86708i, zza);
        } catch (RemoteException e) {
            this.f86709j.zzj().zzg().zza("Failed to get user properties; remote exception", this.f86704e, e);
        } finally {
            this.f86709j.zzq().zza(this.f86708i, bundle);
        }
    }
}
