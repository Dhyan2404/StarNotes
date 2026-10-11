package com.google.android.gms.internal.mlkit_vision_digital_ink;

import androidx.annotation.Nullable;

/* loaded from: classes5.dex */
public final class zzbpk {
    private final zzazy zza;

    private zzbpk(zzazy zzazyVar, int i) {
        this.zza = zzazyVar;
        zzbrx.zza();
    }

    public static zzbpk zzc(zzazy zzazyVar, int i) {
        return new zzbpk(zzazyVar, 0);
    }

    private static int zzf(@Nullable Integer num) {
        if (num == null) {
            return 0;
        }
        return num.intValue();
    }

    public final String zza() {
        zzbgw zze = ((zzazz) this.zza.zzx()).zze();
        return !zze.zze().isEmpty() ? zze.zze() : "NA";
    }

    public final byte[] zzb(int i, boolean z) {
        zzbgv zzbgvVar = (zzbgv) this.zza.zzb().zzO();
        zzbgvVar.zzh(false);
        this.zza.zza(zzbgvVar);
        return ((zzazz) this.zza.zzx()).zzK();
    }

    public final zzbpk zzd(zzbou zzbouVar) {
        zzbow zzk = zzbouVar.zzk();
        zzbgv zza = zzbgw.zza();
        zza.zzc(zzagz.zzc(zzk.zze()));
        zza.zzd(zzagz.zzc(zzk.zzf()));
        zza.zzf(zzagz.zzc(null));
        zza.zzk(zzagz.zzc(zzk.zzh()));
        zza.zzm(zzagz.zzc(zzk.zzi()));
        zza.zzg(zzagz.zzc(null));
        zza.zzb(zzagz.zzc(null));
        zza.zzj(zzagz.zzc(zzk.zzg()));
        Boolean bool = Boolean.TRUE;
        zza.zzh(bool.equals(null));
        zza.zzi(bool.equals(zzk.zzb()));
        zza.zze(zzf(zzk.zzc()));
        zza.zzl(zzf(zzk.zzd()));
        zzajm zza2 = zzk.zza();
        if (zza2 != null) {
            zza.zza(zza2);
        }
        this.zza.zza(zza);
        return this;
    }

    public final zzbpk zze(int i) {
        this.zza.zzd(zzazp.zza(i - 1));
        return this;
    }
}
