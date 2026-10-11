package com.google.android.gms.internal.mlkit_vision_digital_ink;

/* loaded from: classes5.dex */
public final class zzbg {
    private zzbh zza;
    private String zzb;
    private Throwable zzc;

    public final zzbg zza(Throwable th) {
        this.zzc = th;
        return this;
    }

    public final zzbg zzb(zzbh zzbhVar) {
        this.zza = zzbhVar;
        return this;
    }

    public final zzbg zzc(String str) {
        this.zzb = str;
        return this;
    }

    public final zzbj zze() {
        zzbh zzbhVar = this.zza;
        zzbhVar.getClass();
        if (this.zzb == null) {
            this.zzb = "Download result code: ".concat(String.valueOf(zzbhVar.name()));
        }
        return new zzbj(this, null);
    }
}
