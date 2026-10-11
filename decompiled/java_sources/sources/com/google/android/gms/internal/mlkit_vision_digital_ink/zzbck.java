package com.google.android.gms.internal.mlkit_vision_digital_ink;

/* loaded from: classes5.dex */
public final class zzbck extends zzbui implements zzbvv {
    private static final zzbck zza;
    private static volatile zzbwc zze;
    private int zzf;
    private zzazh zzg;
    private int zzh;
    private long zzi;

    static {
        zzbck zzbckVar = new zzbck();
        zza = zzbckVar;
        zzbui.zzad(zzbck.class, zzbckVar);
    }

    private zzbck() {
    }

    @Override // com.google.android.gms.internal.mlkit_vision_digital_ink.zzbui
    public final Object zzb(int i, Object obj, Object obj2) {
        int i2 = i - 1;
        if (i2 == 0) {
            return (byte) 1;
        }
        if (i2 == 2) {
            return zzbui.zzaa(zza, "\u0001\u0003\u0000\u0001\u0001\u0003\u0003\u0000\u0000\u0000\u0001ဉ\u0000\u0002ဌ\u0001\u0003ဃ\u0002", new Object[]{"zzf", "zzg", "zzh", zzazm.zza, "zzi"});
        }
        if (i2 == 3) {
            return new zzbck();
        }
        if (i2 == 4) {
            return new zzbcj(null);
        }
        if (i2 == 5) {
            return zza;
        }
        if (i2 != 6) {
            return null;
        }
        zzbwc zzbwcVar = zze;
        if (zzbwcVar == null) {
            synchronized (zzbck.class) {
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
