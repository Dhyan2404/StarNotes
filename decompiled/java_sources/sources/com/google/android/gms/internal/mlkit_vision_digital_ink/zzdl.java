package com.google.android.gms.internal.mlkit_vision_digital_ink;

/* loaded from: classes5.dex */
public final class zzdl extends zzbui implements zzbvv {
    private static final zzdl zza;
    private static volatile zzbwc zze;
    private int zzf;
    private zzdu zzg;
    private long zzh;
    private String zzi = "";
    private int zzj;
    private long zzk;
    private long zzl;

    static {
        zzdl zzdlVar = new zzdl();
        zza = zzdlVar;
        zzbui.zzad(zzdl.class, zzdlVar);
    }

    private zzdl() {
    }

    public static zzdk zzf() {
        return (zzdk) zza.zzN();
    }

    public static /* synthetic */ zzdl zzg() {
        return zza;
    }

    public static /* synthetic */ void zzi(zzdl zzdlVar, zzdu zzduVar) {
        zzduVar.getClass();
        zzdlVar.zzg = zzduVar;
        zzdlVar.zzf |= 1;
    }

    public static /* synthetic */ void zzj(zzdl zzdlVar, long j) {
        zzdlVar.zzf |= 2;
        zzdlVar.zzh = j;
    }

    public static /* synthetic */ void zzk(zzdl zzdlVar, String str) {
        str.getClass();
        zzdlVar.zzf |= 4;
        zzdlVar.zzi = str;
    }

    public static /* synthetic */ void zzl(zzdl zzdlVar, int i) {
        zzdlVar.zzf |= 8;
        zzdlVar.zzj = i;
    }

    public static /* synthetic */ void zzm(zzdl zzdlVar, long j) {
        zzdlVar.zzf |= 16;
        zzdlVar.zzk = j;
    }

    public static /* synthetic */ void zzn(zzdl zzdlVar, long j) {
        zzdlVar.zzf |= 32;
        zzdlVar.zzl = j;
    }

    public final int zza() {
        return this.zzj;
    }

    @Override // com.google.android.gms.internal.mlkit_vision_digital_ink.zzbui
    public final Object zzb(int i, Object obj, Object obj2) {
        int i2 = i - 1;
        if (i2 == 0) {
            return (byte) 1;
        }
        if (i2 == 2) {
            return zzbui.zzaa(zza, "\u0001\u0006\u0000\u0001\u0001\u0006\u0006\u0000\u0000\u0000\u0001ဉ\u0000\u0002ဂ\u0001\u0003င\u0003\u0004ဂ\u0004\u0005ဂ\u0005\u0006ဈ\u0002", new Object[]{"zzf", "zzg", "zzh", "zzj", "zzk", "zzl", "zzi"});
        }
        if (i2 == 3) {
            return new zzdl();
        }
        zzbx zzbxVar = null;
        if (i2 == 4) {
            return new zzdk(zzbxVar);
        }
        if (i2 == 5) {
            return zza;
        }
        if (i2 != 6) {
            return null;
        }
        zzbwc zzbwcVar = zze;
        if (zzbwcVar == null) {
            synchronized (zzdl.class) {
                zzbwcVar = zze;
                if (zzbwcVar == null) {
                    zzbwcVar = new zzbuc(zza);
                    zze = zzbwcVar;
                }
            }
        }
        return zzbwcVar;
    }

    public final long zzc() {
        return this.zzh;
    }

    public final long zzd() {
        return this.zzk;
    }

    public final long zze() {
        return this.zzl;
    }

    public final zzdu zzh() {
        zzdu zzduVar = this.zzg;
        return zzduVar == null ? zzdu.zzd() : zzduVar;
    }
}
