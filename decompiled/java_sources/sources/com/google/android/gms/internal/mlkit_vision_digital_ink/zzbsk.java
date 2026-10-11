package com.google.android.gms.internal.mlkit_vision_digital_ink;

/* loaded from: classes5.dex */
public final class zzbsk extends zzbui implements zzbvv {
    private static final zzbsk zza;
    private static volatile zzbwc zze;
    private String zzf = "";
    private zzbsz zzg = zzbsz.zzb;

    static {
        zzbsk zzbskVar = new zzbsk();
        zza = zzbskVar;
        zzbui.zzad(zzbsk.class, zzbskVar);
    }

    private zzbsk() {
    }

    public static zzbsk zze() {
        return zza;
    }

    @Override // com.google.android.gms.internal.mlkit_vision_digital_ink.zzbui
    public final Object zzb(int i, Object obj, Object obj2) {
        int i2 = i - 1;
        if (i2 == 0) {
            return (byte) 1;
        }
        if (i2 == 2) {
            return new zzbwg(zza, "\u0000\u0002\u0000\u0000\u0001\u0002\u0002\u0000\u0000\u0000\u0001Ȉ\u0002\n", new Object[]{"zzf", "zzg"});
        }
        if (i2 == 3) {
            return new zzbsk();
        }
        zzbsi zzbsiVar = null;
        if (i2 == 4) {
            return new zzbsj(zzbsiVar);
        }
        if (i2 == 5) {
            return zza;
        }
        if (i2 != 6) {
            return null;
        }
        zzbwc zzbwcVar = zze;
        if (zzbwcVar == null) {
            synchronized (zzbsk.class) {
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
