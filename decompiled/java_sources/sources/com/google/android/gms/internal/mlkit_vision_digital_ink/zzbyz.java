package com.google.android.gms.internal.mlkit_vision_digital_ink;

/* loaded from: classes5.dex */
public final class zzbyz extends zzbui implements zzbvv {
    private static final zzbyz zza;
    private static volatile zzbwc zze;
    private int zzf;
    private zzbuq zzg = zzbui.zzW();
    private String zzh = "";

    static {
        zzbyz zzbyzVar = new zzbyz();
        zza = zzbyzVar;
        zzbui.zzad(zzbyz.class, zzbyzVar);
    }

    private zzbyz() {
    }

    @Override // com.google.android.gms.internal.mlkit_vision_digital_ink.zzbui
    public final Object zzb(int i, Object obj, Object obj2) {
        int i2 = i - 1;
        if (i2 == 0) {
            return (byte) 1;
        }
        if (i2 == 2) {
            return zzbui.zzaa(zza, "\u0001\u0002\u0000\u0001\u0001\u0002\u0002\u0000\u0001\u0000\u0001\u001b\u0002ဈ\u0000", new Object[]{"zzf", "zzg", zzbyy.class, "zzh"});
        }
        if (i2 == 3) {
            return new zzbyz();
        }
        if (i2 == 4) {
            return new zzbyw(null);
        }
        if (i2 == 5) {
            return zza;
        }
        if (i2 != 6) {
            return null;
        }
        zzbwc zzbwcVar = zze;
        if (zzbwcVar == null) {
            synchronized (zzbyz.class) {
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
