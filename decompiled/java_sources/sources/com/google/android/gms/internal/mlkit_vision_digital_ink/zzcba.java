package com.google.android.gms.internal.mlkit_vision_digital_ink;

/* loaded from: classes5.dex */
public final class zzcba extends zzbui implements zzbvv {
    private static final zzcba zza;
    private static volatile zzbwc zze;
    private zzbuq zzf = zzbui.zzW();
    private zzbun zzg = zzbui.zzV();

    static {
        zzcba zzcbaVar = new zzcba();
        zza = zzcbaVar;
        zzbui.zzad(zzcba.class, zzcbaVar);
    }

    private zzcba() {
    }

    public static zzcba zze() {
        return zza;
    }

    @Override // com.google.android.gms.internal.mlkit_vision_digital_ink.zzbui
    public final Object zzb(int i, Object obj, Object obj2) {
        int i2 = i - 1;
        if (i2 == 0) {
            return (byte) 1;
        }
        if (i2 == 2) {
            return zzbui.zzaa(zza, "\u0001\u0002\u0000\u0000\u0001\u0002\u0002\u0000\u0002\u0000\u0001\u001b\u0002'", new Object[]{"zzf", zzcay.class, "zzg"});
        }
        if (i2 == 3) {
            return new zzcba();
        }
        zzcav zzcavVar = null;
        if (i2 == 4) {
            return new zzcaw(zzcavVar);
        }
        if (i2 == 5) {
            return zza;
        }
        if (i2 != 6) {
            return null;
        }
        zzbwc zzbwcVar = zze;
        if (zzbwcVar == null) {
            synchronized (zzcba.class) {
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
