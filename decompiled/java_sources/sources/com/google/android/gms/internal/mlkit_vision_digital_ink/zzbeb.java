package com.google.android.gms.internal.mlkit_vision_digital_ink;

/* loaded from: classes5.dex */
public final class zzbeb extends zzbui implements zzbvv {
    private static final zzbuo zza = new zzbdz();
    private static final zzbeb zze;
    private static volatile zzbwc zzf;
    private int zzg;
    private zzbed zzh;
    private long zzj;
    private long zzk;
    private zzbun zzi = zzbui.zzV();
    private zzbuq zzl = zzbui.zzW();

    static {
        zzbeb zzbebVar = new zzbeb();
        zze = zzbebVar;
        zzbui.zzad(zzbeb.class, zzbebVar);
    }

    private zzbeb() {
    }

    @Override // com.google.android.gms.internal.mlkit_vision_digital_ink.zzbui
    public final Object zzb(int i, Object obj, Object obj2) {
        int i2 = i - 1;
        if (i2 == 0) {
            return (byte) 1;
        }
        if (i2 == 2) {
            return zzbui.zzaa(zze, "\u0001\u0005\u0000\u0001\u0001\u0005\u0005\u0000\u0002\u0000\u0001ဉ\u0000\u0002\u001e\u0003ဃ\u0001\u0004ဃ\u0002\u0005\u001b", new Object[]{"zzg", "zzh", "zzi", zzazm.zza, "zzj", "zzk", "zzl", zzbgk.class});
        }
        if (i2 == 3) {
            return new zzbeb();
        }
        if (i2 == 4) {
            return new zzbea(null);
        }
        if (i2 == 5) {
            return zze;
        }
        if (i2 != 6) {
            return null;
        }
        zzbwc zzbwcVar = zzf;
        if (zzbwcVar == null) {
            synchronized (zzbeb.class) {
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
