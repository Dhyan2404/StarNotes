package com.google.android.gms.internal.mlkit_vision_digital_ink;

/* loaded from: classes5.dex */
public final class zzbfw extends zzbui implements zzbvv {
    private static final zzbfw zza;
    private static volatile zzbwc zze;
    private int zzf;
    private zzban zzg;
    private zzbuq zzh = zzbui.zzW();
    private int zzi;
    private int zzj;
    private int zzk;

    static {
        zzbfw zzbfwVar = new zzbfw();
        zza = zzbfwVar;
        zzbui.zzad(zzbfw.class, zzbfwVar);
    }

    private zzbfw() {
    }

    @Override // com.google.android.gms.internal.mlkit_vision_digital_ink.zzbui
    public final Object zzb(int i, Object obj, Object obj2) {
        int i2 = i - 1;
        if (i2 == 0) {
            return (byte) 1;
        }
        if (i2 == 2) {
            return zzbui.zzaa(zza, "\u0001\u0005\u0000\u0001\u0001\u0005\u0005\u0000\u0001\u0000\u0001ဉ\u0000\u0002\u001b\u0003ဌ\u0001\u0004င\u0002\u0005င\u0003", new Object[]{"zzf", "zzg", "zzh", zzbfv.class, "zzi", zzbft.zza, "zzj", "zzk"});
        }
        if (i2 == 3) {
            return new zzbfw();
        }
        if (i2 == 4) {
            return new zzbfs(null);
        }
        if (i2 == 5) {
            return zza;
        }
        if (i2 != 6) {
            return null;
        }
        zzbwc zzbwcVar = zze;
        if (zzbwcVar == null) {
            synchronized (zzbfw.class) {
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
