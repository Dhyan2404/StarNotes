package com.google.android.gms.internal.mlkit_vision_digital_ink;

/* loaded from: classes5.dex */
public final class zzayz extends zzbui implements zzbvv {
    private static final zzayz zza;
    private static volatile zzbwc zze;
    private int zzf;
    private int zzg;
    private boolean zzh;
    private String zzi = "";

    static {
        zzayz zzayzVar = new zzayz();
        zza = zzayzVar;
        zzbui.zzad(zzayz.class, zzayzVar);
    }

    private zzayz() {
    }

    @Override // com.google.android.gms.internal.mlkit_vision_digital_ink.zzbui
    public final Object zzb(int i, Object obj, Object obj2) {
        int i2 = i - 1;
        if (i2 == 0) {
            return (byte) 1;
        }
        if (i2 == 2) {
            return zzbui.zzaa(zza, "\u0001\u0003\u0000\u0001\u0001\u0003\u0003\u0000\u0000\u0000\u0001ဌ\u0000\u0002ဇ\u0001\u0003ဈ\u0002", new Object[]{"zzf", "zzg", zzbbe.zza, "zzh", "zzi"});
        }
        if (i2 == 3) {
            return new zzayz();
        }
        if (i2 == 4) {
            return new zzayy(null);
        }
        if (i2 == 5) {
            return zza;
        }
        if (i2 != 6) {
            return null;
        }
        zzbwc zzbwcVar = zze;
        if (zzbwcVar == null) {
            synchronized (zzayz.class) {
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
