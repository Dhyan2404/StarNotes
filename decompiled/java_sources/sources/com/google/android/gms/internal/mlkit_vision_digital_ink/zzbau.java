package com.google.android.gms.internal.mlkit_vision_digital_ink;

/* loaded from: classes5.dex */
public final class zzbau extends zzbui implements zzbvv {
    private static final zzbau zza;
    private static volatile zzbwc zze;
    private int zzf;
    private zzbaw zzg;
    private int zzh;
    private int zzi;

    static {
        zzbau zzbauVar = new zzbau();
        zza = zzbauVar;
        zzbui.zzad(zzbau.class, zzbauVar);
    }

    private zzbau() {
    }

    @Override // com.google.android.gms.internal.mlkit_vision_digital_ink.zzbui
    public final Object zzb(int i, Object obj, Object obj2) {
        int i2 = i - 1;
        if (i2 == 0) {
            return (byte) 1;
        }
        if (i2 == 2) {
            return zzbui.zzaa(zza, "\u0001\u0003\u0000\u0001\u0001\u0003\u0003\u0000\u0000\u0000\u0001ဉ\u0000\u0002ဌ\u0001\u0003ဌ\u0002", new Object[]{"zzf", "zzg", "zzh", zzbgh.zza, "zzi", zzazm.zza});
        }
        if (i2 == 3) {
            return new zzbau();
        }
        if (i2 == 4) {
            return new zzbat(null);
        }
        if (i2 == 5) {
            return zza;
        }
        if (i2 != 6) {
            return null;
        }
        zzbwc zzbwcVar = zze;
        if (zzbwcVar == null) {
            synchronized (zzbau.class) {
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
