package com.google.android.gms.internal.mlkit_vision_digital_ink;

/* loaded from: classes5.dex */
public final class zzbgd extends zzbui implements zzbvv {
    private static final zzbgd zza;
    private static volatile zzbwc zze;
    private int zzf;
    private int zzg;
    private boolean zzh;
    private String zzi = "";

    static {
        zzbgd zzbgdVar = new zzbgd();
        zza = zzbgdVar;
        zzbui.zzad(zzbgd.class, zzbgdVar);
    }

    private zzbgd() {
    }

    @Override // com.google.android.gms.internal.mlkit_vision_digital_ink.zzbui
    public final Object zzb(int i, Object obj, Object obj2) {
        int i2 = i - 1;
        if (i2 == 0) {
            return (byte) 1;
        }
        if (i2 == 2) {
            return zzbui.zzaa(zza, "\u0001\u0003\u0000\u0001\u0003\u0005\u0003\u0000\u0000\u0000\u0003ဌ\u0000\u0004ဇ\u0001\u0005ဈ\u0002", new Object[]{"zzf", "zzg", zzbgc.zza, "zzh", "zzi"});
        }
        if (i2 == 3) {
            return new zzbgd();
        }
        if (i2 == 4) {
            return new zzbgb(null);
        }
        if (i2 == 5) {
            return zza;
        }
        if (i2 != 6) {
            return null;
        }
        zzbwc zzbwcVar = zze;
        if (zzbwcVar == null) {
            synchronized (zzbgd.class) {
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
