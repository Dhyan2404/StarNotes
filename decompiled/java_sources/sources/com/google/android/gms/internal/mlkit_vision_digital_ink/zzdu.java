package com.google.android.gms.internal.mlkit_vision_digital_ink;

/* loaded from: classes5.dex */
public final class zzdu extends zzbui implements zzbvv {
    private static final zzdu zza;
    private static volatile zzbwc zze;
    private int zzf;
    private boolean zzj;
    private String zzg = "";
    private String zzh = "";
    private String zzi = "";
    private String zzk = "";

    static {
        zzdu zzduVar = new zzdu();
        zza = zzduVar;
        zzbui.zzad(zzdu.class, zzduVar);
    }

    private zzdu() {
    }

    public static zzdt zza() {
        return (zzdt) zza.zzN();
    }

    public static zzdu zzd() {
        return zza;
    }

    public static zzbwc zze() {
        return (zzbwc) zza.zzb(7, null, null);
    }

    public static /* synthetic */ void zzi(zzdu zzduVar, String str) {
        str.getClass();
        zzduVar.zzf |= 1;
        zzduVar.zzg = str;
    }

    public static /* synthetic */ void zzj(zzdu zzduVar, String str) {
        str.getClass();
        zzduVar.zzf |= 2;
        zzduVar.zzh = str;
    }

    public static /* synthetic */ void zzk(zzdu zzduVar, boolean z) {
        zzduVar.zzf |= 8;
        zzduVar.zzj = z;
    }

    @Override // com.google.android.gms.internal.mlkit_vision_digital_ink.zzbui
    public final Object zzb(int i, Object obj, Object obj2) {
        int i2 = i - 1;
        if (i2 == 0) {
            return (byte) 1;
        }
        if (i2 == 2) {
            return zzbui.zzaa(zza, "\u0001\u0005\u0000\u0001\u0001\u0006\u0005\u0000\u0000\u0000\u0001ဈ\u0000\u0002ဈ\u0001\u0004ဇ\u0003\u0005ဈ\u0002\u0006ဈ\u0004", new Object[]{"zzf", "zzg", "zzh", "zzj", "zzi", "zzk"});
        }
        if (i2 == 3) {
            return new zzdu();
        }
        zzbx zzbxVar = null;
        if (i2 == 4) {
            return new zzdt(zzbxVar);
        }
        if (i2 == 5) {
            return zza;
        }
        if (i2 != 6) {
            return null;
        }
        zzbwc zzbwcVar = zze;
        if (zzbwcVar == null) {
            synchronized (zzdu.class) {
                zzbwcVar = zze;
                if (zzbwcVar == null) {
                    zzbwcVar = new zzbuc(zza);
                    zze = zzbwcVar;
                }
            }
        }
        return zzbwcVar;
    }

    public final String zzf() {
        return this.zzi;
    }

    public final String zzg() {
        return this.zzg;
    }

    public final String zzh() {
        return this.zzh;
    }

    public final boolean zzl() {
        return this.zzj;
    }

    public final boolean zzm() {
        return (this.zzf & 4) != 0;
    }
}
