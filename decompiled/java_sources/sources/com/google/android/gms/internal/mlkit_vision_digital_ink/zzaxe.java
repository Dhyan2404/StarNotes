package com.google.android.gms.internal.mlkit_vision_digital_ink;

/* loaded from: classes5.dex */
public final class zzaxe extends zzbui implements zzbvv {
    private static final zzaxe zza;
    private static volatile zzbwc zze;
    private int zzf;
    private long zzg;
    private zzboo zzh;
    private int zzi;
    private int zzj;

    static {
        zzaxe zzaxeVar = new zzaxe();
        zza = zzaxeVar;
        zzbui.zzad(zzaxe.class, zzaxeVar);
    }

    private zzaxe() {
    }

    @Override // com.google.android.gms.internal.mlkit_vision_digital_ink.zzbui
    public final Object zzb(int i, Object obj, Object obj2) {
        int i2 = i - 1;
        if (i2 == 0) {
            return (byte) 1;
        }
        if (i2 == 2) {
            return zzbui.zzaa(zza, "\u0001\u0004\u0000\u0001\u0001\u0004\u0004\u0000\u0000\u0000\u0001ဃ\u0000\u0002ဉ\u0001\u0003ဌ\u0002\u0004ဌ\u0003", new Object[]{"zzf", "zzg", "zzh", "zzi", zzbgh.zza, "zzj", zzazm.zza});
        }
        if (i2 == 3) {
            return new zzaxe();
        }
        if (i2 == 4) {
            return new zzaxd(null);
        }
        if (i2 == 5) {
            return zza;
        }
        if (i2 != 6) {
            return null;
        }
        zzbwc zzbwcVar = zze;
        if (zzbwcVar == null) {
            synchronized (zzaxe.class) {
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
