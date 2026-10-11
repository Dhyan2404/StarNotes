package com.google.android.gms.internal.mlkit_vision_digital_ink;

/* loaded from: classes5.dex */
public final class zzatt extends zzbui implements zzbvv {
    private static final zzatt zza;
    private static volatile zzbwc zze;
    private int zzf;
    private int zzg;
    private int zzh;

    static {
        zzatt zzattVar = new zzatt();
        zza = zzattVar;
        zzbui.zzad(zzatt.class, zzattVar);
    }

    private zzatt() {
    }

    public static zzats zza() {
        return (zzats) zza.zzN();
    }

    public static /* synthetic */ void zzd(zzatt zzattVar, int i) {
        zzattVar.zzf |= 1;
        zzattVar.zzg = i;
    }

    public static /* synthetic */ void zze(zzatt zzattVar, int i) {
        zzattVar.zzf |= 2;
        zzattVar.zzh = i;
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
            return new zzatt();
        }
        if (i2 == 4) {
            return new zzats(null);
        }
        if (i2 == 5) {
            return zza;
        }
        if (i2 != 6) {
            return null;
        }
        zzbwc zzbwcVar = zze;
        if (zzbwcVar == null) {
            synchronized (zzatt.class) {
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
