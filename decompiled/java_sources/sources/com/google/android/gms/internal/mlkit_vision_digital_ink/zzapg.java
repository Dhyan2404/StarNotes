package com.google.android.gms.internal.mlkit_vision_digital_ink;

/* loaded from: classes5.dex */
public final class zzapg extends zzbui implements zzbvv {
    private static final zzapg zza;
    private static volatile zzbwc zze;
    private int zzf;
    private int zzh;
    private int zzj;
    private int zzk;
    private boolean zzl;
    private long zzm;
    private String zzg = "";
    private String zzi = "";
    private String zzn = "";

    static {
        zzapg zzapgVar = new zzapg();
        zza = zzapgVar;
        zzbui.zzad(zzapg.class, zzapgVar);
    }

    private zzapg() {
    }

    public static zzapf zza() {
        return (zzapf) zza.zzN();
    }

    public static /* synthetic */ void zzd(zzapg zzapgVar, String str) {
        str.getClass();
        zzapgVar.zzf |= 1;
        zzapgVar.zzg = str;
    }

    public static /* synthetic */ void zze(zzapg zzapgVar, int i) {
        zzapgVar.zzf |= 2;
        zzapgVar.zzh = i;
    }

    public static /* synthetic */ void zzf(zzapg zzapgVar, String str) {
        str.getClass();
        zzapgVar.zzf |= 4;
        zzapgVar.zzi = str;
    }

    public static /* synthetic */ void zzg(zzapg zzapgVar, int i) {
        zzapgVar.zzf |= 8;
        zzapgVar.zzj = i;
    }

    public static /* synthetic */ void zzh(zzapg zzapgVar, boolean z) {
        zzapgVar.zzf |= 32;
        zzapgVar.zzl = false;
    }

    public static /* synthetic */ void zzi(zzapg zzapgVar, long j) {
        zzapgVar.zzf |= 64;
        zzapgVar.zzm = j;
    }

    public static /* synthetic */ void zzj(zzapg zzapgVar, String str) {
        str.getClass();
        zzapgVar.zzf |= 128;
        zzapgVar.zzn = str;
    }

    @Override // com.google.android.gms.internal.mlkit_vision_digital_ink.zzbui
    public final Object zzb(int i, Object obj, Object obj2) {
        int i2 = i - 1;
        if (i2 == 0) {
            return (byte) 1;
        }
        if (i2 == 2) {
            return zzbui.zzaa(zza, "\u0001\b\u0000\u0001\u0001\b\b\u0000\u0000\u0000\u0001ဈ\u0000\u0002င\u0001\u0003ဈ\u0002\u0004င\u0003\u0005ဇ\u0005\u0006ဂ\u0006\u0007ဈ\u0007\bင\u0004", new Object[]{"zzf", "zzg", "zzh", "zzi", "zzj", "zzl", "zzm", "zzn", "zzk"});
        }
        if (i2 == 3) {
            return new zzapg();
        }
        if (i2 == 4) {
            return new zzapf(null);
        }
        if (i2 == 5) {
            return zza;
        }
        if (i2 != 6) {
            return null;
        }
        zzbwc zzbwcVar = zze;
        if (zzbwcVar == null) {
            synchronized (zzapg.class) {
                zzbwcVar = zze;
                if (zzbwcVar == null) {
                    zzbwcVar = new zzbuc(zza);
                    zze = zzbwcVar;
                }
            }
        }
        return zzbwcVar;
    }
}
