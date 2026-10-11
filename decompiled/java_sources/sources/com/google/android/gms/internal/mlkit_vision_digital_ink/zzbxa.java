package com.google.android.gms.internal.mlkit_vision_digital_ink;

/* loaded from: classes5.dex */
public final class zzbxa extends zzbui implements zzbvv {
    private static final zzbxa zza;
    private static volatile zzbwc zze;
    private long zzf;
    private int zzg;

    static {
        zzbxa zzbxaVar = new zzbxa();
        zza = zzbxaVar;
        zzbui.zzad(zzbxa.class, zzbxaVar);
    }

    private zzbxa() {
    }

    public static zzbwz zzf() {
        return (zzbwz) zza.zzN();
    }

    public static zzbxa zzh() {
        return zza;
    }

    @Override // com.google.android.gms.internal.mlkit_vision_digital_ink.zzbui
    public final Object zzb(int i, Object obj, Object obj2) {
        int i2 = i - 1;
        if (i2 == 0) {
            return (byte) 1;
        }
        if (i2 == 2) {
            return new zzbwg(zza, "\u0000\u0002\u0000\u0000\u0001\u0002\u0002\u0000\u0000\u0000\u0001\u0002\u0002\u0004", new Object[]{"zzf", "zzg"});
        }
        if (i2 == 3) {
            return new zzbxa();
        }
        if (i2 == 4) {
            return new zzbwz(null);
        }
        if (i2 == 5) {
            return zza;
        }
        if (i2 != 6) {
            return null;
        }
        zzbwc zzbwcVar = zze;
        if (zzbwcVar == null) {
            synchronized (zzbxa.class) {
                zzbwcVar = zze;
                if (zzbwcVar == null) {
                    zzbwcVar = new zzbuc(zza);
                    zze = zzbwcVar;
                }
            }
        }
        return zzbwcVar;
    }

    public final int zzc() {
        return this.zzg;
    }

    public final long zze() {
        return this.zzf;
    }
}
