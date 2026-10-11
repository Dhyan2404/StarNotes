package com.google.android.gms.internal.mlkit_vision_digital_ink;

/* loaded from: classes5.dex */
public final class zzaye extends zzbui implements zzbvv {
    private static final zzaye zza;
    private static volatile zzbwc zze;
    private int zzf;
    private zzban zzg;
    private zzaxo zzh;
    private zzbae zzi;

    static {
        zzaye zzayeVar = new zzaye();
        zza = zzayeVar;
        zzbui.zzad(zzaye.class, zzayeVar);
    }

    private zzaye() {
    }

    @Override // com.google.android.gms.internal.mlkit_vision_digital_ink.zzbui
    public final Object zzb(int i, Object obj, Object obj2) {
        int i2 = i - 1;
        if (i2 == 0) {
            return (byte) 1;
        }
        if (i2 == 2) {
            return zzbui.zzaa(zza, "\u0001\u0003\u0000\u0001\u0001\u0003\u0003\u0000\u0000\u0000\u0001ဉ\u0000\u0002ဉ\u0001\u0003ဉ\u0002", new Object[]{"zzf", "zzg", "zzh", "zzi"});
        }
        if (i2 == 3) {
            return new zzaye();
        }
        if (i2 == 4) {
            return new zzayd(null);
        }
        if (i2 == 5) {
            return zza;
        }
        if (i2 != 6) {
            return null;
        }
        zzbwc zzbwcVar = zze;
        if (zzbwcVar == null) {
            synchronized (zzaye.class) {
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
