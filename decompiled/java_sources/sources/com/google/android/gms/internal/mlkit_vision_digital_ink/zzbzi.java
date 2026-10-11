package com.google.android.gms.internal.mlkit_vision_digital_ink;

/* loaded from: classes5.dex */
public final class zzbzi extends zzbui implements zzbvv {
    private static final zzbzi zza;
    private static volatile zzbwc zze;
    private int zzf;
    private int zzg;
    private int zzh;
    private zzbuq zzi = zzbui.zzW();

    static {
        zzbzi zzbziVar = new zzbzi();
        zza = zzbziVar;
        zzbui.zzad(zzbzi.class, zzbziVar);
    }

    private zzbzi() {
    }

    @Override // com.google.android.gms.internal.mlkit_vision_digital_ink.zzbui
    public final Object zzb(int i, Object obj, Object obj2) {
        int i2 = i - 1;
        if (i2 == 0) {
            return (byte) 1;
        }
        if (i2 == 2) {
            return zzbui.zzaa(zza, "\u0001\u0003\u0000\u0001\u0001\u0003\u0003\u0000\u0001\u0000\u0001င\u0000\u0002င\u0001\u0003\u001b", new Object[]{"zzf", "zzg", "zzh", "zzi", zzbzf.class});
        }
        if (i2 == 3) {
            return new zzbzi();
        }
        if (i2 == 4) {
            return new zzbzh(null);
        }
        if (i2 == 5) {
            return zza;
        }
        if (i2 != 6) {
            return null;
        }
        zzbwc zzbwcVar = zze;
        if (zzbwcVar == null) {
            synchronized (zzbzi.class) {
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
