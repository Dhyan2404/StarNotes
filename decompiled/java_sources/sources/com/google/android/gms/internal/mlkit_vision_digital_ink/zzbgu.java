package com.google.android.gms.internal.mlkit_vision_digital_ink;

/* loaded from: classes5.dex */
public final class zzbgu extends zzbui implements zzbvv {
    private static final zzbgu zza;
    private static volatile zzbwc zze;
    private int zzf;
    private zzbgs zzg;
    private int zzh;

    static {
        zzbgu zzbguVar = new zzbgu();
        zza = zzbguVar;
        zzbui.zzad(zzbgu.class, zzbguVar);
    }

    private zzbgu() {
    }

    @Override // com.google.android.gms.internal.mlkit_vision_digital_ink.zzbui
    public final Object zzb(int i, Object obj, Object obj2) {
        int i2 = i - 1;
        if (i2 == 0) {
            return (byte) 1;
        }
        if (i2 == 2) {
            return zzbui.zzaa(zza, "\u0001\u0002\u0000\u0001\u0001\u0002\u0002\u0000\u0000\u0000\u0001ဉ\u0000\u0002ဌ\u0001", new Object[]{"zzf", "zzg", "zzh", zzazm.zza});
        }
        if (i2 == 3) {
            return new zzbgu();
        }
        if (i2 == 4) {
            return new zzbgt(null);
        }
        if (i2 == 5) {
            return zza;
        }
        if (i2 != 6) {
            return null;
        }
        zzbwc zzbwcVar = zze;
        if (zzbwcVar == null) {
            synchronized (zzbgu.class) {
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
