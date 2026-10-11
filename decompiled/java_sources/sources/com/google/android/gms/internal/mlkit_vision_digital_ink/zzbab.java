package com.google.android.gms.internal.mlkit_vision_digital_ink;

/* loaded from: classes5.dex */
public final class zzbab extends zzbui implements zzbvv {
    private static final zzbab zza;
    private static volatile zzbwc zze;
    private int zzf;
    private int zzg;

    static {
        zzbab zzbabVar = new zzbab();
        zza = zzbabVar;
        zzbui.zzad(zzbab.class, zzbabVar);
    }

    private zzbab() {
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
            return new zzbab();
        }
        if (i2 == 4) {
            return new zzbaa(null);
        }
        if (i2 == 5) {
            return zza;
        }
        if (i2 != 6) {
            return null;
        }
        zzbwc zzbwcVar = zze;
        if (zzbwcVar == null) {
            synchronized (zzbab.class) {
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
