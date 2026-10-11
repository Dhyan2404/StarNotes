package com.google.android.gms.internal.mlkit_vision_digital_ink;

/* loaded from: classes5.dex */
public final class zzbz extends zzbui implements zzbvv {
    private static final zzbz zza;
    private static volatile zzbwc zze;
    private int zzf;
    private String zzg = "";

    static {
        zzbz zzbzVar = new zzbz();
        zza = zzbzVar;
        zzbui.zzad(zzbz.class, zzbzVar);
    }

    private zzbz() {
    }

    public static zzbz zzc() {
        return zza;
    }

    @Override // com.google.android.gms.internal.mlkit_vision_digital_ink.zzbui
    public final Object zzb(int i, Object obj, Object obj2) {
        int i2 = i - 1;
        if (i2 == 0) {
            return (byte) 1;
        }
        if (i2 == 2) {
            return zzbui.zzaa(zza, "\u0001\u0001\u0000\u0001\u0001\u0001\u0001\u0000\u0000\u0000\u0001ဈ\u0000", new Object[]{"zzf", "zzg"});
        }
        if (i2 == 3) {
            return new zzbz();
        }
        if (i2 == 4) {
            return new zzby(null);
        }
        if (i2 == 5) {
            return zza;
        }
        if (i2 != 6) {
            return null;
        }
        zzbwc zzbwcVar = zze;
        if (zzbwcVar == null) {
            synchronized (zzbz.class) {
                zzbwcVar = zze;
                if (zzbwcVar == null) {
                    zzbwcVar = new zzbuc(zza);
                    zze = zzbwcVar;
                }
            }
        }
        return zzbwcVar;
    }

    public final String zzd() {
        return this.zzg;
    }
}
