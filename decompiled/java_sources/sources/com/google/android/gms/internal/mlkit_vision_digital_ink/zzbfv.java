package com.google.android.gms.internal.mlkit_vision_digital_ink;

/* loaded from: classes5.dex */
public final class zzbfv extends zzbui implements zzbvv {
    private static final zzbfv zza;
    private static volatile zzbwc zze;
    private int zzf;
    private float zzg;

    static {
        zzbfv zzbfvVar = new zzbfv();
        zza = zzbfvVar;
        zzbui.zzad(zzbfv.class, zzbfvVar);
    }

    private zzbfv() {
    }

    @Override // com.google.android.gms.internal.mlkit_vision_digital_ink.zzbui
    public final Object zzb(int i, Object obj, Object obj2) {
        int i2 = i - 1;
        if (i2 == 0) {
            return (byte) 1;
        }
        if (i2 == 2) {
            return zzbui.zzaa(zza, "\u0001\u0001\u0000\u0001\u0001\u0001\u0001\u0000\u0000\u0000\u0001ခ\u0000", new Object[]{"zzf", "zzg"});
        }
        if (i2 == 3) {
            return new zzbfv();
        }
        if (i2 == 4) {
            return new zzbfu(null);
        }
        if (i2 == 5) {
            return zza;
        }
        if (i2 != 6) {
            return null;
        }
        zzbwc zzbwcVar = zze;
        if (zzbwcVar == null) {
            synchronized (zzbfv.class) {
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
