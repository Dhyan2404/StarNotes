package com.google.android.gms.internal.mlkit_vision_digital_ink;

/* loaded from: classes5.dex */
public final class zzbdi extends zzbui implements zzbvv {
    private static final zzbdi zza;
    private static volatile zzbwc zze;
    private int zzf;
    private zzbdn zzg;
    private int zzh;
    private long zzi;

    static {
        zzbdi zzbdiVar = new zzbdi();
        zza = zzbdiVar;
        zzbui.zzad(zzbdi.class, zzbdiVar);
    }

    private zzbdi() {
    }

    @Override // com.google.android.gms.internal.mlkit_vision_digital_ink.zzbui
    public final Object zzb(int i, Object obj, Object obj2) {
        int i2 = i - 1;
        if (i2 == 0) {
            return (byte) 1;
        }
        if (i2 == 2) {
            return zzbui.zzaa(zza, "\u0001\u0003\u0000\u0001\u0001\u0003\u0003\u0000\u0000\u0000\u0001ဉ\u0000\u0002ဌ\u0001\u0003ဃ\u0002", new Object[]{"zzf", "zzg", "zzh", zzazm.zza, "zzi"});
        }
        if (i2 == 3) {
            return new zzbdi();
        }
        if (i2 == 4) {
            return new zzbdh(null);
        }
        if (i2 == 5) {
            return zza;
        }
        if (i2 != 6) {
            return null;
        }
        zzbwc zzbwcVar = zze;
        if (zzbwcVar == null) {
            synchronized (zzbdi.class) {
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
