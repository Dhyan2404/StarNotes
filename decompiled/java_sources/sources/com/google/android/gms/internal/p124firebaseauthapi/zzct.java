package com.google.android.gms.internal.p124firebaseauthapi;

import com.google.android.gms.internal.p124firebaseauthapi.zzvc;

/* loaded from: classes5.dex */
public final class zzct {
    public static final zzvc zzb;
    private static final zzvc zzf;
    private static final zzvc zzg;
    private static final zzvc zzh;
    public static final zzvc zza = zza(16);
    private static final zzvc zzc = zza(32);
    private static final zzvc zzd = zza(16, 16);
    private static final zzvc zze = zza(32, 16);

    static {
        zzub zzubVar = zzub.SHA256;
        zzb = zza(16, 16, 32, 16, zzubVar);
        zzf = zza(32, 16, 32, 32, zzubVar);
        zzvc.zza zza2 = zzvc.zza().zza(zzep.zza());
        zzvs zzvsVar = zzvs.TINK;
        zzg = (zzvc) ((zzaje) zza2.zza(zzvsVar).zzf());
        zzh = (zzvc) ((zzaje) zzvc.zza().zza(zzga.zza()).zza(zzvsVar).zzf());
    }

    private static zzvc zza(int i, int i2, int i3, int i4, zzub zzubVar) {
        zzsj zzsjVar = (zzsj) ((zzaje) zzsj.zzb().zza((zzsk) ((zzaje) zzsk.zzb().zza(16).zzf())).zza(i).zzf());
        return (zzvc) ((zzaje) zzvc.zza().zza(((zzsf) ((zzaje) zzsf.zza().zza(zzsjVar).zza((zzue) ((zzaje) zzue.zzc().zza((zzuh) ((zzaje) zzuh.zzc().zza(zzubVar).zza(i4).zzf())).zza(32).zzf())).zzf())).zzj()).zza(zzdc.zza()).zza(zzvs.TINK).zzf());
    }

    private static zzvc zza(int i, int i2) {
        return (zzvc) ((zzaje) zzvc.zza().zza(((zzso) ((zzaje) zzso.zzb().zza(i).zza((zzsr) ((zzaje) zzsr.zzb().zza(16).zzf())).zzf())).zzj()).zza(zzdm.zza()).zza(zzvs.TINK).zzf());
    }

    private static zzvc zza(int i) {
        return (zzvc) ((zzaje) zzvc.zza().zza(((zzsv) ((zzaje) zzsv.zzc().zza(i).zzf())).zzj()).zza(zzdv.zza()).zza(zzvs.TINK).zzf());
    }
}
