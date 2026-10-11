package com.google.android.gms.internal.mlkit_vision_digital_ink;

/* loaded from: classes5.dex */
public final class zzapk extends zzbui implements zzbvv {
    private static final zzapk zza;
    private static volatile zzbwc zze;
    private int zzf;
    private int zzg;
    private long zzh;
    private long zzi;

    static {
        zzapk zzapkVar = new zzapk();
        zza = zzapkVar;
        zzbui.zzad(zzapk.class, zzapkVar);
    }

    private zzapk() {
    }

    public static zzapj zza() {
        return (zzapj) zza.zzN();
    }

    public static /* synthetic */ void zzd(zzapk zzapkVar, int i) {
        zzapkVar.zzf |= 1;
        zzapkVar.zzg = i;
    }

    public static /* synthetic */ void zze(zzapk zzapkVar, long j) {
        zzapkVar.zzf |= 2;
        zzapkVar.zzh = j;
    }

    public static /* synthetic */ void zzf(zzapk zzapkVar, long j) {
        zzapkVar.zzf |= 4;
        zzapkVar.zzi = j;
    }

    @Override // com.google.android.gms.internal.mlkit_vision_digital_ink.zzbui
    public final Object zzb(int i, Object obj, Object obj2) {
        int i2 = i - 1;
        if (i2 == 0) {
            return (byte) 1;
        }
        if (i2 == 2) {
            return zzbui.zzaa(zza, "\u0001\u0003\u0000\u0001\u0001\u0003\u0003\u0000\u0000\u0000\u0001င\u0000\u0002ဂ\u0001\u0003ဂ\u0002", new Object[]{"zzf", "zzg", "zzh", "zzi"});
        }
        if (i2 == 3) {
            return new zzapk();
        }
        if (i2 == 4) {
            return new zzapj(null);
        }
        if (i2 == 5) {
            return zza;
        }
        if (i2 != 6) {
            return null;
        }
        zzbwc zzbwcVar = zze;
        if (zzbwcVar == null) {
            synchronized (zzapk.class) {
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
