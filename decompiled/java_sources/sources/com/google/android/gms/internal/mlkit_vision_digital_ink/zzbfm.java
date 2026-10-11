package com.google.android.gms.internal.mlkit_vision_digital_ink;

/* loaded from: classes5.dex */
public final class zzbfm extends zzbui implements zzbvv {
    private static final zzbuo zza = new zzbfg();
    private static final zzbfm zze;
    private static volatile zzbwc zzf;
    private int zzg;
    private int zzh;
    private int zzi;
    private int zzj;
    private zzbun zzk = zzbui.zzV();
    private int zzl;

    static {
        zzbfm zzbfmVar = new zzbfm();
        zze = zzbfmVar;
        zzbui.zzad(zzbfm.class, zzbfmVar);
    }

    private zzbfm() {
    }

    @Override // com.google.android.gms.internal.mlkit_vision_digital_ink.zzbui
    public final Object zzb(int i, Object obj, Object obj2) {
        int i2 = i - 1;
        if (i2 == 0) {
            return (byte) 1;
        }
        if (i2 == 2) {
            zzbum zzbumVar = zzbfi.zza;
            zzbum zzbumVar2 = zzbfk.zza;
            return zzbui.zzaa(zze, "\u0001\u0005\u0000\u0001\u0001\u0005\u0005\u0000\u0001\u0000\u0001ဌ\u0000\u0002ဌ\u0001\u0003ဌ\u0002\u0004,\u0005ဌ\u0003", new Object[]{"zzg", "zzh", zzbumVar, "zzi", zzbumVar2, "zzj", zzbumVar2, "zzk", zzbfj.zza, "zzl", zzbfl.zza});
        }
        if (i2 == 3) {
            return new zzbfm();
        }
        if (i2 == 4) {
            return new zzbfh(null);
        }
        if (i2 == 5) {
            return zze;
        }
        if (i2 != 6) {
            return null;
        }
        zzbwc zzbwcVar = zzf;
        if (zzbwcVar == null) {
            synchronized (zzbfm.class) {
                zzbwcVar = zzf;
                if (zzbwcVar == null) {
                    zzbwcVar = new zzbuc(zze);
                    zzf = zzbwcVar;
                }
            }
        }
        return zzbwcVar;
    }
}
