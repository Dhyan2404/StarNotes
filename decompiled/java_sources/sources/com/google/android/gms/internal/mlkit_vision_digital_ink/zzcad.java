package com.google.android.gms.internal.mlkit_vision_digital_ink;

/* loaded from: classes5.dex */
public final class zzcad extends zzbui implements zzbvv {
    private static final zzcad zza;
    private static volatile zzbwc zze;

    static {
        zzcad zzcadVar = new zzcad();
        zza = zzcadVar;
        zzbui.zzad(zzcad.class, zzcadVar);
    }

    private zzcad() {
    }

    public static zzcad zze() {
        return zza;
    }

    @Override // com.google.android.gms.internal.mlkit_vision_digital_ink.zzbui
    public final Object zzb(int i, Object obj, Object obj2) {
        int i2 = i - 1;
        if (i2 == 0) {
            return (byte) 1;
        }
        if (i2 == 2) {
            return zzbui.zzaa(zza, "\u0001\u0000", null);
        }
        if (i2 == 3) {
            return new zzcad();
        }
        if (i2 == 4) {
            return new zzcac(null);
        }
        if (i2 == 5) {
            return zza;
        }
        if (i2 != 6) {
            return null;
        }
        zzbwc zzbwcVar = zze;
        if (zzbwcVar == null) {
            synchronized (zzcad.class) {
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
