package com.google.android.gms.internal.mlkit_vision_digital_ink;

/* loaded from: classes5.dex */
public final class zzdw extends zzbui implements zzbvv {
    private static final zzdw zza;
    private static volatile zzbwc zze;
    private int zzf;
    private boolean zzg;

    static {
        zzdw zzdwVar = new zzdw();
        zza = zzdwVar;
        zzbui.zzad(zzdw.class, zzdwVar);
    }

    private zzdw() {
    }

    public static zzdw zzc() {
        return zza;
    }

    public static zzbwc zzd() {
        return (zzbwc) zza.zzb(7, null, null);
    }

    @Override // com.google.android.gms.internal.mlkit_vision_digital_ink.zzbui
    public final Object zzb(int i, Object obj, Object obj2) {
        int i2 = i - 1;
        if (i2 == 0) {
            return (byte) 1;
        }
        if (i2 == 2) {
            return zzbui.zzaa(zza, "\u0001\u0001\u0000\u0001\u0001\u0001\u0001\u0000\u0000\u0000\u0001ဇ\u0000", new Object[]{"zzf", "zzg"});
        }
        if (i2 == 3) {
            return new zzdw();
        }
        zzbx zzbxVar = null;
        if (i2 == 4) {
            return new zzdv(zzbxVar);
        }
        if (i2 == 5) {
            return zza;
        }
        if (i2 != 6) {
            return null;
        }
        zzbwc zzbwcVar = zze;
        if (zzbwcVar == null) {
            synchronized (zzdw.class) {
                zzbwcVar = zze;
                if (zzbwcVar == null) {
                    zzbwcVar = new zzbuc(zza);
                    zze = zzbwcVar;
                }
            }
        }
        return zzbwcVar;
    }

    public final boolean zze() {
        return this.zzg;
    }
}
