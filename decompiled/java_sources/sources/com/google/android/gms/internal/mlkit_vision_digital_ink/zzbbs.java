package com.google.android.gms.internal.mlkit_vision_digital_ink;

/* loaded from: classes5.dex */
public final class zzbbs extends zzbui implements zzbvv {
    private static final zzbbs zza;
    private static volatile zzbwc zze;
    private int zzf;
    private int zzg;
    private float zzh;
    private int zzi;
    private int zzj;

    static {
        zzbbs zzbbsVar = new zzbbs();
        zza = zzbbsVar;
        zzbui.zzad(zzbbs.class, zzbbsVar);
    }

    private zzbbs() {
    }

    @Override // com.google.android.gms.internal.mlkit_vision_digital_ink.zzbui
    public final Object zzb(int i, Object obj, Object obj2) {
        int i2 = i - 1;
        if (i2 == 0) {
            return (byte) 1;
        }
        if (i2 == 2) {
            return zzbui.zzaa(zza, "\u0001\u0004\u0000\u0001\u0001\u0004\u0004\u0000\u0000\u0000\u0001ဌ\u0000\u0002ခ\u0001\u0003င\u0002\u0004ဋ\u0003", new Object[]{"zzf", "zzg", zzbbr.zza, "zzh", "zzi", "zzj"});
        }
        if (i2 == 3) {
            return new zzbbs();
        }
        if (i2 == 4) {
            return new zzbbq(null);
        }
        if (i2 == 5) {
            return zza;
        }
        if (i2 != 6) {
            return null;
        }
        zzbwc zzbwcVar = zze;
        if (zzbwcVar == null) {
            synchronized (zzbbs.class) {
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
