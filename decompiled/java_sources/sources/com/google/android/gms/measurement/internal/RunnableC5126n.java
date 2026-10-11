package com.google.android.gms.measurement.internal;

import android.os.RemoteException;
import android.text.TextUtils;
import com.google.android.gms.common.internal.Preconditions;

/* renamed from: com.google.android.gms.measurement.internal.n */
/* loaded from: classes5.dex */
public final class RunnableC5126n implements Runnable {

    /* renamed from: e */
    public final /* synthetic */ boolean f29694e;

    /* renamed from: f */
    public final /* synthetic */ zzo f29695f;

    /* renamed from: g */
    public final /* synthetic */ boolean f29696g;

    /* renamed from: h */
    public final /* synthetic */ zzbf f29697h;

    /* renamed from: i */
    public final /* synthetic */ String f29698i;

    /* renamed from: j */
    public final /* synthetic */ zzls f29699j;

    public RunnableC5126n(zzls zzlsVar, boolean z, zzo zzoVar, boolean z2, zzbf zzbfVar, String str) {
        this.f29694e = z;
        this.f29695f = zzoVar;
        this.f29696g = z2;
        this.f29697h = zzbfVar;
        this.f29698i = str;
        this.f29699j = zzlsVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        zzgb zzgbVar;
        long j;
        long j2;
        long j3;
        zzgbVar = this.f29699j.f29957c;
        if (zzgbVar == null) {
            this.f29699j.zzj().zzg().zza("Discarding data. Failed to send event to service");
            return;
        }
        if (this.f29694e) {
            Preconditions.checkNotNull(this.f29695f);
            this.f29699j.m22579c(zzgbVar, this.f29696g ? null : this.f29697h, this.f29695f);
        } else {
            boolean zza = this.f29699j.zze().zza(zzbh.zzce);
            try {
                if (TextUtils.isEmpty(this.f29698i)) {
                    Preconditions.checkNotNull(this.f29695f);
                    if (zza) {
                        j3 = this.f29699j.zzu.zzb().currentTimeMillis();
                        try {
                            j = this.f29699j.zzu.zzb().elapsedRealtime();
                        } catch (RemoteException e) {
                            e = e;
                            j = 0;
                            j2 = j3;
                            this.f29699j.zzj().zzg().zza("Failed to send event to the service", e);
                            if (zza && j2 != 0) {
                                zzgm.m22439a(this.f29699j.zzu).zza(36301, 13, j2, this.f29699j.zzu.zzb().currentTimeMillis(), (int) (this.f29699j.zzu.zzb().elapsedRealtime() - j));
                            }
                            this.f29699j.zzar();
                        }
                    } else {
                        j3 = 0;
                        j = 0;
                    }
                    try {
                        zzgbVar.zza(this.f29697h, this.f29695f);
                        if (zza) {
                            this.f29699j.zzj().zzp().zza("Logging telemetry for logEvent");
                            zzgm.m22439a(this.f29699j.zzu).zza(36301, 0, j3, this.f29699j.zzu.zzb().currentTimeMillis(), (int) (this.f29699j.zzu.zzb().elapsedRealtime() - j));
                        }
                    } catch (RemoteException e2) {
                        e = e2;
                        j2 = j3;
                        this.f29699j.zzj().zzg().zza("Failed to send event to the service", e);
                        if (zza) {
                            zzgm.m22439a(this.f29699j.zzu).zza(36301, 13, j2, this.f29699j.zzu.zzb().currentTimeMillis(), (int) (this.f29699j.zzu.zzb().elapsedRealtime() - j));
                        }
                        this.f29699j.zzar();
                    }
                } else {
                    zzgbVar.zza(this.f29697h, this.f29698i, this.f29699j.zzj().zzx());
                }
            } catch (RemoteException e3) {
                e = e3;
                j = 0;
                j2 = 0;
            }
        }
        this.f29699j.zzar();
    }
}
