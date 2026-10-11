package com.google.android.gms.internal.mlkit_vision_digital_ink;

/* loaded from: classes5.dex */
public final class zzbfy extends zzbui implements zzbvv {
    private static final zzbfy zza;
    private static volatile zzbwc zze;
    private int zzf;
    private int zzg;

    static {
        zzbfy zzbfyVar = new zzbfy();
        zza = zzbfyVar;
        zzbui.zzad(zzbfy.class, zzbfyVar);
    }

    private zzbfy() {
    }

    @Override // com.google.android.gms.internal.mlkit_vision_digital_ink.zzbui
    public final Object zzb(int i, Object obj, Object obj2) {
        int i2 = i - 1;
        if (i2 == 0) {
            return (byte) 1;
        }
        if (i2 == 2) {
            return zzbui.zzaa(zza, "\u0001\u0001\u0000\u0001\u0001\u0001\u0001\u0000\u0000\u0000\u0001ဌ\u0000", new Object[]{"zzf", "zzg", zzazm.zza});
        }
        if (i2 == 3) {
            return new zzbfy();
        }
        if (i2 == 4) {
            return new zzbfx(null);
        }
        if (i2 == 5) {
            return zza;
        }
        if (i2 != 6) {
            return null;
        }
        zzbwc zzbwcVar = zze;
        if (zzbwcVar == null) {
            synchronized (zzbfy.class) {
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
