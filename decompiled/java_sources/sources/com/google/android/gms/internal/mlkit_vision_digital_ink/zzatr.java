package com.google.android.gms.internal.mlkit_vision_digital_ink;

/* loaded from: classes5.dex */
public final class zzatr extends zzbui implements zzbvv {
    private static final zzatr zza;
    private static volatile zzbwc zze;
    private int zzf;
    private int zzg;
    private int zzh;

    static {
        zzatr zzatrVar = new zzatr();
        zza = zzatrVar;
        zzbui.zzad(zzatr.class, zzatrVar);
    }

    private zzatr() {
    }

    public static zzatq zza() {
        return (zzatq) zza.zzN();
    }

    public static /* synthetic */ void zzd(zzatr zzatrVar, int i) {
        zzatrVar.zzf |= 1;
        zzatrVar.zzg = i;
    }

    public static /* synthetic */ void zze(zzatr zzatrVar, int i) {
        zzatrVar.zzf |= 2;
        zzatrVar.zzh = i;
    }

    @Override // com.google.android.gms.internal.mlkit_vision_digital_ink.zzbui
    public final Object zzb(int i, Object obj, Object obj2) {
        int i2 = i - 1;
        if (i2 == 0) {
            return (byte) 1;
        }
        if (i2 == 2) {
            return zzbui.zzaa(zza, "\u0001\u0002\u0000\u0001\u0001\u0002\u0002\u0000\u0000\u0000\u0001င\u0000\u0002င\u0001", new Object[]{"zzf", "zzg", "zzh"});
        }
        if (i2 == 3) {
            return new zzatr();
        }
        if (i2 == 4) {
            return new zzatq(null);
        }
        if (i2 == 5) {
            return zza;
        }
        if (i2 != 6) {
            return null;
        }
        zzbwc zzbwcVar = zze;
        if (zzbwcVar == null) {
            synchronized (zzatr.class) {
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
