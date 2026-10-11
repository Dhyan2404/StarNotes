package com.google.android.gms.internal.mlkit_vision_digital_ink;

/* loaded from: classes5.dex */
public final class zzbet extends zzbui implements zzbvv {
    private static final zzbet zza;
    private static volatile zzbwc zze;
    private zzbuq zzf = zzbui.zzW();

    static {
        zzbet zzbetVar = new zzbet();
        zza = zzbetVar;
        zzbui.zzad(zzbet.class, zzbetVar);
    }

    private zzbet() {
    }

    @Override // com.google.android.gms.internal.mlkit_vision_digital_ink.zzbui
    public final Object zzb(int i, Object obj, Object obj2) {
        int i2 = i - 1;
        if (i2 == 0) {
            return (byte) 1;
        }
        if (i2 == 2) {
            return zzbui.zzaa(zza, "\u0001\u0001\u0000\u0000\u0001\u0001\u0001\u0000\u0001\u0000\u0001\u001b", new Object[]{"zzf", zzbep.class});
        }
        if (i2 == 3) {
            return new zzbet();
        }
        if (i2 == 4) {
            return new zzbes(null);
        }
        if (i2 == 5) {
            return zza;
        }
        if (i2 != 6) {
            return null;
        }
        zzbwc zzbwcVar = zze;
        if (zzbwcVar == null) {
            synchronized (zzbet.class) {
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
