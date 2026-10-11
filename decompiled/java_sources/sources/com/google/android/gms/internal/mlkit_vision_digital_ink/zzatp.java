package com.google.android.gms.internal.mlkit_vision_digital_ink;

/* loaded from: classes5.dex */
public final class zzatp extends zzbui implements zzbvv {
    private static final zzatp zza;
    private static volatile zzbwc zze;

    static {
        zzatp zzatpVar = new zzatp();
        zza = zzatpVar;
        zzbui.zzad(zzatp.class, zzatpVar);
    }

    private zzatp() {
    }

    public static zzatp zzc() {
        return zza;
    }

    @Override // com.google.android.gms.internal.mlkit_vision_digital_ink.zzbui
    public final Object zzb(int i, Object obj, Object obj2) {
        int i2 = i - 1;
        if (i2 == 0) {
            return (byte) 1;
        }
        if (i2 == 2) {
            return zzbui.zzaa(zza, "\u0001\u0000", null);
        }
        if (i2 == 3) {
            return new zzatp();
        }
        if (i2 == 4) {
            return new zzato(null);
        }
        if (i2 == 5) {
            return zza;
        }
        if (i2 != 6) {
            return null;
        }
        zzbwc zzbwcVar = zze;
        if (zzbwcVar == null) {
            synchronized (zzatp.class) {
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
