package com.google.android.gms.internal.mlkit_vision_digital_ink;

/* loaded from: classes5.dex */
public final class zzcag extends zzbui implements zzbvv {
    private static final zzcag zza;
    private static volatile zzbwc zze;
    private int zzf;
    private String zzg = "";
    private String zzh = "";

    static {
        zzcag zzcagVar = new zzcag();
        zza = zzcagVar;
        zzbui.zzad(zzcag.class, zzcagVar);
    }

    private zzcag() {
    }

    @Override // com.google.android.gms.internal.mlkit_vision_digital_ink.zzbui
    public final Object zzb(int i, Object obj, Object obj2) {
        int i2 = i - 1;
        if (i2 == 0) {
            return (byte) 1;
        }
        if (i2 == 2) {
            return zzbui.zzaa(zza, "\u0001\u0002\u0000\u0001\u0001\u0002\u0002\u0000\u0000\u0000\u0001ဈ\u0000\u0002ဈ\u0001", new Object[]{"zzf", "zzg", "zzh"});
        }
        if (i2 == 3) {
            return new zzcag();
        }
        if (i2 == 4) {
            return new zzcaf(null);
        }
        if (i2 == 5) {
            return zza;
        }
        if (i2 != 6) {
            return null;
        }
        zzbwc zzbwcVar = zze;
        if (zzbwcVar == null) {
            synchronized (zzcag.class) {
                zzbwcVar = zze;
                if (zzbwcVar == null) {
                    zzbwcVar = new zzbuc(zza);
                    zze = zzbwcVar;
                }
            }
        }
        return zzbwcVar;
    }

    public final String zze() {
        return this.zzg;
    }

    public final String zzf() {
        return this.zzh;
    }

    public final boolean zzg() {
        return (this.zzf & 1) != 0;
    }

    public final boolean zzh() {
        return (this.zzf & 2) != 0;
    }
}
