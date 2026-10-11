package com.google.android.gms.internal.mlkit_vision_digital_ink;

/* loaded from: classes5.dex */
public final class zzayt extends zzbui implements zzbvv {
    private static final zzayt zza;
    private static volatile zzbwc zze;
    private int zzf;
    private int zzg;
    private zzbun zzh = zzbui.zzV();

    static {
        zzayt zzaytVar = new zzayt();
        zza = zzaytVar;
        zzbui.zzad(zzayt.class, zzaytVar);
    }

    private zzayt() {
    }

    @Override // com.google.android.gms.internal.mlkit_vision_digital_ink.zzbui
    public final Object zzb(int i, Object obj, Object obj2) {
        int i2 = i - 1;
        if (i2 == 0) {
            return (byte) 1;
        }
        if (i2 == 2) {
            return zzbui.zzaa(zza, "\u0001\u0002\u0000\u0001\u0001\u0002\u0002\u0000\u0001\u0000\u0001ဌ\u0000\u0002\u0016", new Object[]{"zzf", "zzg", zzays.zza, "zzh"});
        }
        if (i2 == 3) {
            return new zzayt();
        }
        if (i2 == 4) {
            return new zzayr(null);
        }
        if (i2 == 5) {
            return zza;
        }
        if (i2 != 6) {
            return null;
        }
        zzbwc zzbwcVar = zze;
        if (zzbwcVar == null) {
            synchronized (zzayt.class) {
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
