package com.google.android.gms.internal.mlkit_vision_digital_ink;

/* loaded from: classes5.dex */
public final class zzcal extends zzbui implements zzbvv {
    private static final zzcal zza;
    private static volatile zzbwc zze;
    private int zzf;
    private int zzg = 0;
    private Object zzh;

    static {
        zzcal zzcalVar = new zzcal();
        zza = zzcalVar;
        zzbui.zzad(zzcal.class, zzcalVar);
    }

    private zzcal() {
    }

    public static zzcal zze() {
        return zza;
    }

    @Override // com.google.android.gms.internal.mlkit_vision_digital_ink.zzbui
    public final Object zzb(int i, Object obj, Object obj2) {
        int i2 = i - 1;
        if (i2 == 0) {
            return (byte) 1;
        }
        if (i2 == 2) {
            return zzbui.zzaa(zza, "\u0001\u0001\u0001\u0001\u0001\u0001\u0001\u0000\u0000\u0000\u0001ျ\u0000", new Object[]{"zzh", "zzg", "zzf"});
        }
        if (i2 == 3) {
            return new zzcal();
        }
        if (i2 == 4) {
            return new zzcak(null);
        }
        if (i2 == 5) {
            return zza;
        }
        if (i2 != 6) {
            return null;
        }
        zzbwc zzbwcVar = zze;
        if (zzbwcVar == null) {
            synchronized (zzcal.class) {
                zzbwcVar = zze;
                if (zzbwcVar == null) {
                    zzbwcVar = new zzbuc(zza);
                    zze = zzbwcVar;
                }
            }
        }
        return zzbwcVar;
    }

    public final String zzf() {
        return this.zzg == 1 ? (String) this.zzh : "";
    }

    public final boolean zzg() {
        return this.zzg == 1;
    }
}
