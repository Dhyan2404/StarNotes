package com.google.android.gms.internal.mlkit_vision_digital_ink;

/* loaded from: classes5.dex */
public final class zzay extends zzbui implements zzbvv {
    private static final zzay zza;
    private static volatile zzbwc zze;
    private int zzf;
    private int zzh;
    private int zzj;
    private zzan zzk;
    private String zzg = "";
    private String zzi = "";

    static {
        zzay zzayVar = new zzay();
        zza = zzayVar;
        zzbui.zzad(zzay.class, zzayVar);
    }

    private zzay() {
    }

    @Override // com.google.android.gms.internal.mlkit_vision_digital_ink.zzbui
    public final Object zzb(int i, Object obj, Object obj2) {
        int i2 = i - 1;
        if (i2 == 0) {
            return (byte) 1;
        }
        if (i2 == 2) {
            return zzbui.zzaa(zza, "\u0001\u0005\u0000\u0001\u0001\u0006\u0005\u0000\u0000\u0000\u0001ဈ\u0000\u0002င\u0001\u0003ဈ\u0002\u0005ဌ\u0003\u0006ဉ\u0004", new Object[]{"zzf", "zzg", "zzh", "zzi", "zzj", zzax.zza, "zzk"});
        }
        if (i2 == 3) {
            return new zzay();
        }
        if (i2 == 4) {
            return new zzaw(null);
        }
        if (i2 == 5) {
            return zza;
        }
        if (i2 != 6) {
            return null;
        }
        zzbwc zzbwcVar = zze;
        if (zzbwcVar == null) {
            synchronized (zzay.class) {
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
