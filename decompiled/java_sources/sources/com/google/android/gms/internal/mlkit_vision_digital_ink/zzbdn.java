package com.google.android.gms.internal.mlkit_vision_digital_ink;

/* loaded from: classes5.dex */
public final class zzbdn extends zzbui implements zzbvv {
    private static final zzbdn zza;
    private static volatile zzbwc zze;
    private int zzf;
    private boolean zzg;
    private int zzh;

    static {
        zzbdn zzbdnVar = new zzbdn();
        zza = zzbdnVar;
        zzbui.zzad(zzbdn.class, zzbdnVar);
    }

    private zzbdn() {
    }

    @Override // com.google.android.gms.internal.mlkit_vision_digital_ink.zzbui
    public final Object zzb(int i, Object obj, Object obj2) {
        int i2 = i - 1;
        if (i2 == 0) {
            return (byte) 1;
        }
        if (i2 == 2) {
            return zzbui.zzaa(zza, "\u0001\u0002\u0000\u0001\u0001\u0002\u0002\u0000\u0000\u0000\u0001ဇ\u0000\u0002ဌ\u0001", new Object[]{"zzf", "zzg", "zzh", zzbdm.zza});
        }
        if (i2 == 3) {
            return new zzbdn();
        }
        if (i2 == 4) {
            return new zzbdl(null);
        }
        if (i2 == 5) {
            return zza;
        }
        if (i2 != 6) {
            return null;
        }
        zzbwc zzbwcVar = zze;
        if (zzbwcVar == null) {
            synchronized (zzbdn.class) {
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
