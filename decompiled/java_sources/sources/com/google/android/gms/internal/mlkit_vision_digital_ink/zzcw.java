package com.google.android.gms.internal.mlkit_vision_digital_ink;

/* loaded from: classes5.dex */
public final class zzcw extends zzbui implements zzbvv {
    private static final zzcw zza;
    private static volatile zzbwc zze;
    private int zzf;
    private int zzh;
    private int zzj;
    private zzbz zzk;
    private String zzg = "";
    private String zzi = "";

    static {
        zzcw zzcwVar = new zzcw();
        zza = zzcwVar;
        zzbui.zzad(zzcw.class, zzcwVar);
    }

    private zzcw() {
    }

    public final int zza() {
        return this.zzh;
    }

    @Override // com.google.android.gms.internal.mlkit_vision_digital_ink.zzbui
    public final Object zzb(int i, Object obj, Object obj2) {
        int i2 = i - 1;
        if (i2 == 0) {
            return (byte) 1;
        }
        if (i2 == 2) {
            return zzbui.zzaa(zza, "\u0001\u0005\u0000\u0001\u0001\u0006\u0005\u0000\u0000\u0000\u0001ဈ\u0000\u0002င\u0001\u0003ဈ\u0002\u0005ဌ\u0003\u0006ဉ\u0004", new Object[]{"zzf", "zzg", "zzh", "zzi", "zzj", zzcu.zza, "zzk"});
        }
        if (i2 == 3) {
            return new zzcw();
        }
        if (i2 == 4) {
            return new zzcs(null);
        }
        if (i2 == 5) {
            return zza;
        }
        if (i2 != 6) {
            return null;
        }
        zzbwc zzbwcVar = zze;
        if (zzbwcVar == null) {
            synchronized (zzcw.class) {
                zzbwcVar = zze;
                if (zzbwcVar == null) {
                    zzbwcVar = new zzbuc(zza);
                    zze = zzbwcVar;
                }
            }
        }
        return zzbwcVar;
    }

    public final zzbz zzc() {
        zzbz zzbzVar = this.zzk;
        return zzbzVar == null ? zzbz.zzc() : zzbzVar;
    }

    public final String zze() {
        return this.zzi;
    }

    public final String zzf() {
        return this.zzg;
    }

    public final boolean zzg() {
        return (this.zzf & 16) != 0;
    }

    public final boolean zzh() {
        return (this.zzf & 2) != 0;
    }

    public final boolean zzi() {
        return (this.zzf & 8) != 0;
    }

    public final int zzj() {
        int zza2 = zzcv.zza(this.zzj);
        if (zza2 == 0) {
            return 1;
        }
        return zza2;
    }
}
