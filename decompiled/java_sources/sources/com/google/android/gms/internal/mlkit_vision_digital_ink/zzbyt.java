package com.google.android.gms.internal.mlkit_vision_digital_ink;

/* loaded from: classes5.dex */
public final class zzbyt extends zzbui implements zzbvv {
    private static final zzbyt zza;
    private static volatile zzbwc zze;
    private zzbun zzf = zzbui.zzV();

    static {
        zzbyt zzbytVar = new zzbyt();
        zza = zzbytVar;
        zzbui.zzad(zzbyt.class, zzbytVar);
    }

    private zzbyt() {
    }

    @Override // com.google.android.gms.internal.mlkit_vision_digital_ink.zzbui
    public final Object zzb(int i, Object obj, Object obj2) {
        int i2 = i - 1;
        if (i2 == 0) {
            return (byte) 1;
        }
        if (i2 == 2) {
            return zzbui.zzaa(zza, "\u0001\u0001\u0000\u0000\u0001\u0001\u0001\u0000\u0001\u0000\u0001\u0016", new Object[]{"zzf"});
        }
        if (i2 == 3) {
            return new zzbyt();
        }
        if (i2 == 4) {
            return new zzbys(null);
        }
        if (i2 == 5) {
            return zza;
        }
        if (i2 != 6) {
            return null;
        }
        zzbwc zzbwcVar = zze;
        if (zzbwcVar == null) {
            synchronized (zzbyt.class) {
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
