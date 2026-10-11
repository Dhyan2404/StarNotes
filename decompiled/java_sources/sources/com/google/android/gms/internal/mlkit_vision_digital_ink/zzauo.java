package com.google.android.gms.internal.mlkit_vision_digital_ink;

/* loaded from: classes5.dex */
public final class zzauo extends zzbui implements zzbvv {
    private static final zzauo zza;
    private static volatile zzbwc zze;
    private int zzf;
    private int zzg;
    private boolean zzh;
    private zzbuq zzi = zzbui.zzW();
    private zzbuq zzj = zzbui.zzW();
    private zzbbk zzk;

    static {
        zzauo zzauoVar = new zzauo();
        zza = zzauoVar;
        zzbui.zzad(zzauo.class, zzauoVar);
    }

    private zzauo() {
    }

    @Override // com.google.android.gms.internal.mlkit_vision_digital_ink.zzbui
    public final Object zzb(int i, Object obj, Object obj2) {
        int i2 = i - 1;
        if (i2 == 0) {
            return (byte) 1;
        }
        if (i2 == 2) {
            return zzbui.zzaa(zza, "\u0001\u0005\u0000\u0001\u0001\u0005\u0005\u0000\u0002\u0000\u0001ဌ\u0000\u0002ဇ\u0001\u0003\u001b\u0004\u001b\u0005ဉ\u0002", new Object[]{"zzf", "zzg", zzazm.zza, "zzh", "zzi", zzayt.class, "zzj", zzayt.class, "zzk"});
        }
        if (i2 == 3) {
            return new zzauo();
        }
        if (i2 == 4) {
            return new zzaun(null);
        }
        if (i2 == 5) {
            return zza;
        }
        if (i2 != 6) {
            return null;
        }
        zzbwc zzbwcVar = zze;
        if (zzbwcVar == null) {
            synchronized (zzauo.class) {
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
