package com.google.android.gms.internal.mlkit_vision_digital_ink;

import java.util.List;

/* loaded from: classes5.dex */
public final class zzg extends zzbui implements zzbvv {
    private static final zzg zza;
    private static volatile zzbwc zze;
    private zzbuq zzf = zzbui.zzW();

    static {
        zzg zzgVar = new zzg();
        zza = zzgVar;
        zzbui.zzad(zzg.class, zzgVar);
    }

    private zzg() {
    }

    public static zzbwc zzc() {
        return (zzbwc) zza.zzb(7, null, null);
    }

    @Override // com.google.android.gms.internal.mlkit_vision_digital_ink.zzbui
    public final Object zzb(int i, Object obj, Object obj2) {
        int i2 = i - 1;
        if (i2 == 0) {
            return (byte) 1;
        }
        if (i2 == 2) {
            return zzbui.zzaa(zza, "\u0000\u0001\u0000\u0000\u0001\u0001\u0001\u0000\u0001\u0000\u0001\u001b", new Object[]{"zzf", zzf.class});
        }
        if (i2 == 3) {
            return new zzg();
        }
        if (i2 == 4) {
            return new zzb(null);
        }
        if (i2 == 5) {
            return zza;
        }
        if (i2 != 6) {
            return null;
        }
        zzbwc zzbwcVar = zze;
        if (zzbwcVar == null) {
            synchronized (zzg.class) {
                zzbwcVar = zze;
                if (zzbwcVar == null) {
                    zzbwcVar = new zzbuc(zza);
                    zze = zzbwcVar;
                }
            }
        }
        return zzbwcVar;
    }

    public final List zzd() {
        return this.zzf;
    }
}
