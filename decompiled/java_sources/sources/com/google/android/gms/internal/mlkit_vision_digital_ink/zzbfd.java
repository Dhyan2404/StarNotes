package com.google.android.gms.internal.mlkit_vision_digital_ink;

/* loaded from: classes5.dex */
public final class zzbfd extends zzbui implements zzbvv {
    private static final zzbfd zza;
    private static volatile zzbwc zze;
    private int zzf;
    private zzbez zzg;
    private int zzh;
    private long zzi;
    private long zzj;
    private zzbuq zzk = zzbui.zzW();

    static {
        zzbfd zzbfdVar = new zzbfd();
        zza = zzbfdVar;
        zzbui.zzad(zzbfd.class, zzbfdVar);
    }

    private zzbfd() {
    }

    @Override // com.google.android.gms.internal.mlkit_vision_digital_ink.zzbui
    public final Object zzb(int i, Object obj, Object obj2) {
        int i2 = i - 1;
        if (i2 == 0) {
            return (byte) 1;
        }
        if (i2 == 2) {
            return zzbui.zzaa(zza, "\u0001\u0005\u0000\u0001\u0001\u0005\u0005\u0000\u0001\u0000\u0001ဉ\u0000\u0002ဌ\u0001\u0003ဃ\u0002\u0004ဃ\u0003\u0005\u001b", new Object[]{"zzf", "zzg", "zzh", zzazm.zza, "zzi", "zzj", "zzk", zzbgk.class});
        }
        if (i2 == 3) {
            return new zzbfd();
        }
        if (i2 == 4) {
            return new zzbfc(null);
        }
        if (i2 == 5) {
            return zza;
        }
        if (i2 != 6) {
            return null;
        }
        zzbwc zzbwcVar = zze;
        if (zzbwcVar == null) {
            synchronized (zzbfd.class) {
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
