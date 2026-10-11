package com.google.android.gms.internal.mlkit_vision_digital_ink;

/* loaded from: classes5.dex */
public final class zzbyk extends zzbui implements zzbvv {
    private static final zzbyk zza;
    private static volatile zzbwc zze;
    private int zzf;
    private int zzg;
    private int zzh;
    private zzbya zzk;
    private zzbyi zzl;
    private int zzm;
    private int zzo;
    private String zzi = "";
    private String zzj = "";
    private zzbuq zzn = zzbui.zzW();

    static {
        zzbyk zzbykVar = new zzbyk();
        zza = zzbykVar;
        zzbui.zzad(zzbyk.class, zzbykVar);
    }

    private zzbyk() {
    }

    @Override // com.google.android.gms.internal.mlkit_vision_digital_ink.zzbui
    public final Object zzb(int i, Object obj, Object obj2) {
        int i2 = i - 1;
        if (i2 == 0) {
            return (byte) 1;
        }
        if (i2 == 2) {
            return zzbui.zzaa(zza, "\u0001\t\u0000\u0001\u0001\t\t\u0000\u0001\u0000\u0001ဌ\u0000\u0002ဌ\u0001\u0003ဈ\u0002\u0004ဈ\u0003\u0005ဉ\u0004\u0006ဉ\u0005\u0007င\u0006\b\u001b\tင\u0007", new Object[]{"zzf", "zzg", zzbyd.zza, "zzh", zzbyj.zza, "zzi", "zzj", "zzk", "zzl", "zzm", "zzn", zzbyt.class, "zzo"});
        }
        if (i2 == 3) {
            return new zzbyk();
        }
        if (i2 == 4) {
            return new zzbye(null);
        }
        if (i2 == 5) {
            return zza;
        }
        if (i2 != 6) {
            return null;
        }
        zzbwc zzbwcVar = zze;
        if (zzbwcVar == null) {
            synchronized (zzbyk.class) {
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
