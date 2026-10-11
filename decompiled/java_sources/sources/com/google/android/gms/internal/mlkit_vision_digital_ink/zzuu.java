package com.google.android.gms.internal.mlkit_vision_digital_ink;

/* loaded from: classes5.dex */
public final class zzuu {
    private final zzuz zza;

    private zzuu(zzuz zzuzVar, int i, byte[] bArr) {
        this.zza = zzuzVar;
    }

    public static zzuu zze(zzuz zzuzVar) {
        return new zzuu(zzuzVar, 1, null);
    }

    private static final void zzf(int i, zzcr zzcrVar) {
        zzcrVar.zzq();
        zzcrVar.zzc();
        zzcrVar.zze();
        zzcrVar.zzt();
    }

    public final void zza(zzcr zzcrVar) {
        zzf(1009, zzcrVar);
        zzapf zza = zzapg.zza();
        zza.zzf(zzcrVar.zzs());
        zza.zzc(zzcrVar.zzq());
        zza.zzd(zzcrVar.zzc());
        zza.zzb(zzcrVar.zza());
        zza.zza(zzcrVar.zze());
        zza.zzg(zzcrVar.zzt());
        zzcm zzi = zzcrVar.zzi();
        long zze = zzi.zze();
        long zzc = zzi.zzc();
        long zzd = zzi.zzd();
        zzapj zza2 = zzapk.zza();
        zza2.zza(zzi.zza());
        zza2.zzb(zzd - zzc);
        zza2.zzc(zzd - zze);
    }

    public final void zzb(zzcr zzcrVar) {
        zzf(1008, zzcrVar);
    }

    public final void zzc(zzcr zzcrVar) {
        zzf(1007, zzcrVar);
    }

    public final void zzd(zzcr zzcrVar) {
        zzf(1072, zzcrVar);
    }
}
