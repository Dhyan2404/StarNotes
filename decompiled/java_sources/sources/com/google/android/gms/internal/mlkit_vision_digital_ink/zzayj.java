package com.google.android.gms.internal.mlkit_vision_digital_ink;

/* loaded from: classes5.dex */
public final class zzayj extends zzbui implements zzbvv {
    private static final zzayj zza;
    private static volatile zzbwc zze;
    private int zzf;
    private int zzg;
    private int zzh;
    private long zzi;
    private int zzj;

    static {
        zzayj zzayjVar = new zzayj();
        zza = zzayjVar;
        zzbui.zzad(zzayj.class, zzayjVar);
    }

    private zzayj() {
    }

    @Override // com.google.android.gms.internal.mlkit_vision_digital_ink.zzbui
    public final Object zzb(int i, Object obj, Object obj2) {
        int i2 = i - 1;
        if (i2 == 0) {
            return (byte) 1;
        }
        if (i2 == 2) {
            return zzbui.zzaa(zza, "\u0001\u0004\u0000\u0001\u0001\u0004\u0004\u0000\u0000\u0000\u0001ဌ\u0000\u0002ဋ\u0001\u0003ဃ\u0002\u0004ဌ\u0003", new Object[]{"zzf", "zzg", zzayi.zza, "zzh", "zzi", "zzj", zzazm.zza});
        }
        if (i2 == 3) {
            return new zzayj();
        }
        if (i2 == 4) {
            return new zzayh(null);
        }
        if (i2 == 5) {
            return zza;
        }
        if (i2 != 6) {
            return null;
        }
        zzbwc zzbwcVar = zze;
        if (zzbwcVar == null) {
            synchronized (zzayj.class) {
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
