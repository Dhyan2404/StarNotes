package com.sunia.HTREnginev2;

import android.os.RemoteException;
import com.google.android.gms.internal.measurement.zzdo;
import com.google.android.gms.measurement.internal.zzbf;
import com.google.android.gms.measurement.internal.zzgb;
import com.google.android.gms.measurement.internal.zzls;

/* loaded from: classes5.dex */
public final class kpp implements Runnable {

    /* renamed from: e */
    public final /* synthetic */ zzbf f75722e;

    /* renamed from: f */
    public final /* synthetic */ String f75723f;

    /* renamed from: g */
    public final /* synthetic */ zzdo f75724g;

    /* renamed from: h */
    public final /* synthetic */ zzls f75725h;

    public kpp(zzls zzlsVar, zzbf zzbfVar, String str, zzdo zzdoVar) {
        this.f75722e = zzbfVar;
        this.f75723f = str;
        this.f75724g = zzdoVar;
        this.f75725h = zzlsVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        zzgb zzgbVar;
        try {
            zzgbVar = this.f75725h.f29957c;
            if (zzgbVar == null) {
                this.f75725h.zzj().zzg().zza("Discarding data. Failed to send event to service to bundle");
                return;
            }
            byte[] zza = zzgbVar.zza(this.f75722e, this.f75723f);
            this.f75725h.zzar();
            this.f75725h.zzq().zza(this.f75724g, zza);
        } catch (RemoteException e) {
            this.f75725h.zzj().zzg().zza("Failed to send event to the service to bundle", e);
        } finally {
            this.f75725h.zzq().zza(this.f75724g, (byte[]) null);
        }
    }
}
