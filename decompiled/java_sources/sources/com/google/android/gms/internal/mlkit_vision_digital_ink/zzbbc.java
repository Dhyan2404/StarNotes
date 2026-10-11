package com.google.android.gms.internal.mlkit_vision_digital_ink;

/* loaded from: classes5.dex */
public final class zzbbc extends zzbui implements zzbvv {
    private static final zzbbc zza;
    private static volatile zzbwc zze;
    private int zzf;
    private zzbbk zzg;
    private long zzh;
    private int zzi;
    private long zzj;
    private int zzk;
    private long zzl;
    private zzbun zzm = zzbui.zzV();

    static {
        zzbbc zzbbcVar = new zzbbc();
        zza = zzbbcVar;
        zzbui.zzad(zzbbc.class, zzbbcVar);
    }

    private zzbbc() {
    }

    @Override // com.google.android.gms.internal.mlkit_vision_digital_ink.zzbui
    public final Object zzb(int i, Object obj, Object obj2) {
        int i2 = i - 1;
        if (i2 == 0) {
            return (byte) 1;
        }
        if (i2 == 2) {
            return zzbui.zzaa(zza, "\u0001\u0007\u0000\u0001\u0001\u0007\u0007\u0000\u0001\u0000\u0001ဉ\u0000\u0002ဃ\u0001\u0003ဌ\u0002\u0004ဃ\u0003\u0005ဌ\u0004\u0006ဂ\u0005\u0007\u0016", new Object[]{"zzf", "zzg", "zzh", "zzi", zzazm.zza, "zzj", "zzk", zzbbb.zza, "zzl", "zzm"});
        }
        if (i2 == 3) {
            return new zzbbc();
        }
        if (i2 == 4) {
            return new zzbba(null);
        }
        if (i2 == 5) {
            return zza;
        }
        if (i2 != 6) {
            return null;
        }
        zzbwc zzbwcVar = zze;
        if (zzbwcVar == null) {
            synchronized (zzbbc.class) {
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
