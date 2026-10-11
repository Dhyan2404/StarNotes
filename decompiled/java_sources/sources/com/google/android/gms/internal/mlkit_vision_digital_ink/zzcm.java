package com.google.android.gms.internal.mlkit_vision_digital_ink;

/* loaded from: classes5.dex */
public final class zzcm extends zzbui implements zzbvv {
    private static final zzcm zza;
    private static volatile zzbwc zze;
    private int zzf;
    private long zzg;
    private long zzh;
    private long zzi;
    private long zzj;
    private int zzk;

    static {
        zzcm zzcmVar = new zzcm();
        zza = zzcmVar;
        zzbui.zzad(zzcm.class, zzcmVar);
    }

    private zzcm() {
    }

    public static zzcm zzh() {
        return zza;
    }

    public static /* synthetic */ void zzi(zzcm zzcmVar, long j) {
        zzcmVar.zzf |= 1;
        zzcmVar.zzg = j;
    }

    public static /* synthetic */ void zzj(zzcm zzcmVar, long j) {
        zzcmVar.zzf |= 2;
        zzcmVar.zzh = j;
    }

    public static /* synthetic */ void zzk(zzcm zzcmVar, long j) {
        zzcmVar.zzf |= 4;
        zzcmVar.zzi = j;
    }

    public static /* synthetic */ void zzl(zzcm zzcmVar, long j) {
        zzcmVar.zzf |= 8;
        zzcmVar.zzj = j;
    }

    public static /* synthetic */ void zzm(zzcm zzcmVar, int i) {
        zzcmVar.zzf |= 16;
        zzcmVar.zzk = i;
    }

    public final int zza() {
        return this.zzk;
    }

    @Override // com.google.android.gms.internal.mlkit_vision_digital_ink.zzbui
    public final Object zzb(int i, Object obj, Object obj2) {
        int i2 = i - 1;
        if (i2 == 0) {
            return (byte) 1;
        }
        if (i2 == 2) {
            return zzbui.zzaa(zza, "\u0001\u0005\u0000\u0001\u0001\u0005\u0005\u0000\u0000\u0000\u0001ဂ\u0000\u0002ဂ\u0001\u0003ဂ\u0002\u0004ဂ\u0003\u0005င\u0004", new Object[]{"zzf", "zzg", "zzh", "zzi", "zzj", "zzk"});
        }
        if (i2 == 3) {
            return new zzcm();
        }
        zzbx zzbxVar = null;
        if (i2 == 4) {
            return new zzcl(zzbxVar);
        }
        if (i2 == 5) {
            return zza;
        }
        if (i2 != 6) {
            return null;
        }
        zzbwc zzbwcVar = zze;
        if (zzbwcVar == null) {
            synchronized (zzcm.class) {
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
        return this.zzj;
    }

    public final long zzd() {
        return this.zzi;
    }

    public final long zze() {
        return this.zzh;
    }

    public final long zzf() {
        return this.zzg;
    }

    public final boolean zzn() {
        return (this.zzf & 8) != 0;
    }

    public final boolean zzo() {
        return (this.zzf & 4) != 0;
    }
}
