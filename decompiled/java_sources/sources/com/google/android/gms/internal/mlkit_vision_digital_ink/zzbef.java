package com.google.android.gms.internal.mlkit_vision_digital_ink;

/* loaded from: classes5.dex */
public final class zzbef extends zzbui implements zzbvv {
    private static final zzbef zza;
    private static volatile zzbwc zze;
    private int zzf;
    private zzbem zzg;
    private int zzh;

    static {
        zzbef zzbefVar = new zzbef();
        zza = zzbefVar;
        zzbui.zzad(zzbef.class, zzbefVar);
    }

    private zzbef() {
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
            return new zzbef();
        }
        if (i2 == 4) {
            return new zzbee(null);
        }
        if (i2 == 5) {
            return zza;
        }
        if (i2 != 6) {
            return null;
        }
        zzbwc zzbwcVar = zze;
        if (zzbwcVar == null) {
            synchronized (zzbef.class) {
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
