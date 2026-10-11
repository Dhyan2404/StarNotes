package com.google.android.gms.internal.mlkit_vision_digital_ink;

/* loaded from: classes5.dex */
public abstract class zzbt {
    public abstract zzbt zza(boolean z);

    public abstract zzbt zzb(boolean z);

    public abstract zzbt zzc(boolean z);

    public abstract zzbt zzd(boolean z);

    public abstract zzbu zze();

    public final zzbu zzf() {
        zzbu zze = zze();
        if (!zze.zze()) {
            zzagg.zzf(false, "Request must provide a group name or source to filter by");
        }
        return zze;
    }
}
