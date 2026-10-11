package com.google.android.gms.internal.mlkit_vision_digital_ink;

/* loaded from: classes5.dex */
public final class zzbzq extends zzbui implements zzbvv {
    private static final zzbzq zza;
    private static volatile zzbwc zze;
    private int zzf;
    private String zzg = "";
    private zzbuq zzh = zzbui.zzW();
    private boolean zzi;

    static {
        zzbzq zzbzqVar = new zzbzq();
        zza = zzbzqVar;
        zzbui.zzad(zzbzq.class, zzbzqVar);
    }

    private zzbzq() {
    }

    @Override // com.google.android.gms.internal.mlkit_vision_digital_ink.zzbui
    public final Object zzb(int i, Object obj, Object obj2) {
        int i2 = i - 1;
        if (i2 == 0) {
            return (byte) 1;
        }
        if (i2 == 2) {
            return zzbui.zzaa(zza, "\u0001\u0003\u0000\u0001\u0001\u0003\u0003\u0000\u0001\u0000\u0001ဈ\u0000\u0002\u001b\u0003ဇ\u0001", new Object[]{"zzf", "zzg", "zzh", zzbzz.class, "zzi"});
        }
        if (i2 == 3) {
            return new zzbzq();
        }
        if (i2 == 4) {
            return new zzbzp(null);
        }
        if (i2 == 5) {
            return zza;
        }
        if (i2 != 6) {
            return null;
        }
        zzbwc zzbwcVar = zze;
        if (zzbwcVar == null) {
            synchronized (zzbzq.class) {
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
