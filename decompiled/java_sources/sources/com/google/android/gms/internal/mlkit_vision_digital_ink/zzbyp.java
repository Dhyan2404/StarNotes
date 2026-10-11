package com.google.android.gms.internal.mlkit_vision_digital_ink;

/* loaded from: classes5.dex */
public final class zzbyp extends zzbui implements zzbvv {
    private static final zzbyp zza;
    private static volatile zzbwc zze;
    private int zzf;
    private int zzg;

    static {
        zzbyp zzbypVar = new zzbyp();
        zza = zzbypVar;
        zzbui.zzad(zzbyp.class, zzbypVar);
    }

    private zzbyp() {
    }

    @Override // com.google.android.gms.internal.mlkit_vision_digital_ink.zzbui
    public final Object zzb(int i, Object obj, Object obj2) {
        int i2 = i - 1;
        if (i2 == 0) {
            return (byte) 1;
        }
        if (i2 == 2) {
            return zzbui.zzaa(zza, "\u0001\u0001\u0000\u0001\u0001\u0001\u0001\u0000\u0000\u0000\u0001င\u0000", new Object[]{"zzf", "zzg"});
        }
        if (i2 == 3) {
            return new zzbyp();
        }
        if (i2 == 4) {
            return new zzbyo(null);
        }
        if (i2 == 5) {
            return zza;
        }
        if (i2 != 6) {
            return null;
        }
        zzbwc zzbwcVar = zze;
        if (zzbwcVar == null) {
            synchronized (zzbyp.class) {
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
