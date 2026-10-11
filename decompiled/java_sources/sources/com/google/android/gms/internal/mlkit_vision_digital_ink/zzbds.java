package com.google.android.gms.internal.mlkit_vision_digital_ink;

/* loaded from: classes5.dex */
public final class zzbds extends zzbui implements zzbvv {
    private static final zzbds zza;
    private static volatile zzbwc zze;
    private int zzf;
    private zzban zzg;
    private zzbae zzh;
    private int zzi;
    private float zzj;
    private int zzk;

    static {
        zzbds zzbdsVar = new zzbds();
        zza = zzbdsVar;
        zzbui.zzad(zzbds.class, zzbdsVar);
    }

    private zzbds() {
    }

    @Override // com.google.android.gms.internal.mlkit_vision_digital_ink.zzbui
    public final Object zzb(int i, Object obj, Object obj2) {
        int i2 = i - 1;
        if (i2 == 0) {
            return (byte) 1;
        }
        if (i2 == 2) {
            return zzbui.zzaa(zza, "\u0001\u0005\u0000\u0001\u0001\u0006\u0005\u0000\u0000\u0000\u0001ဉ\u0000\u0002ဉ\u0001\u0004ဋ\u0002\u0005ခ\u0003\u0006ဌ\u0004", new Object[]{"zzf", "zzg", "zzh", "zzi", "zzj", "zzk", zzbdr.zza});
        }
        if (i2 == 3) {
            return new zzbds();
        }
        if (i2 == 4) {
            return new zzbdq(null);
        }
        if (i2 == 5) {
            return zza;
        }
        if (i2 != 6) {
            return null;
        }
        zzbwc zzbwcVar = zze;
        if (zzbwcVar == null) {
            synchronized (zzbds.class) {
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
