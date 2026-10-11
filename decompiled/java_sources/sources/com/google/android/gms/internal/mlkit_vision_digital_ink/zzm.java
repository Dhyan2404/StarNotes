package com.google.android.gms.internal.mlkit_vision_digital_ink;

/* loaded from: classes5.dex */
public final class zzm extends zzbui implements zzbvv {
    private static final zzm zza;
    private static volatile zzbwc zze;
    private int zzf;
    private String zzg = "";
    private String zzh = "";
    private int zzi;
    private int zzj;
    private zzbsk zzk;

    static {
        zzm zzmVar = new zzm();
        zza = zzmVar;
        zzbui.zzad(zzm.class, zzmVar);
    }

    private zzm() {
    }

    public static zzl zza() {
        return (zzl) zza.zzN();
    }

    public static /* synthetic */ void zze(zzm zzmVar, String str) {
        str.getClass();
        zzmVar.zzf |= 1;
        zzmVar.zzg = str;
    }

    public static /* synthetic */ void zzf(zzm zzmVar, String str) {
        str.getClass();
        zzmVar.zzf |= 2;
        zzmVar.zzh = str;
    }

    public static /* synthetic */ void zzg(zzm zzmVar, int i) {
        zzmVar.zzf |= 4;
        zzmVar.zzi = i;
    }

    public static /* synthetic */ void zzh(zzm zzmVar, int i) {
        zzmVar.zzf |= 8;
        zzmVar.zzj = i;
    }

    public static /* synthetic */ void zzi(zzm zzmVar, zzbsk zzbskVar) {
        zzmVar.zzk = zzbskVar;
        zzmVar.zzf |= 16;
    }

    @Override // com.google.android.gms.internal.mlkit_vision_digital_ink.zzbui
    public final Object zzb(int i, Object obj, Object obj2) {
        int i2 = i - 1;
        if (i2 == 0) {
            return (byte) 1;
        }
        if (i2 == 2) {
            return zzbui.zzaa(zza, "\u0001\u0005\u0000\u0001\u0001\u0005\u0005\u0000\u0000\u0000\u0001ဈ\u0000\u0002ဈ\u0001\u0003င\u0002\u0004င\u0003\u0005ဉ\u0004", new Object[]{"zzf", "zzg", "zzh", "zzi", "zzj", "zzk"});
        }
        if (i2 == 3) {
            return new zzm();
        }
        zzk zzkVar = null;
        if (i2 == 4) {
            return new zzl(zzkVar);
        }
        if (i2 == 5) {
            return zza;
        }
        if (i2 != 6) {
            return null;
        }
        zzbwc zzbwcVar = zze;
        if (zzbwcVar == null) {
            synchronized (zzm.class) {
                zzbwcVar = zze;
                if (zzbwcVar == null) {
                    zzbwcVar = new zzbuc(zza);
                    zze = zzbwcVar;
                }
            }
        }
        return zzbwcVar;
    }

    public final String zzd() {
        return this.zzh;
    }
}
