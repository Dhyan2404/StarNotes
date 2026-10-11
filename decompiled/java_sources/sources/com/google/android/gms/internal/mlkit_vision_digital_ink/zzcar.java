package com.google.android.gms.internal.mlkit_vision_digital_ink;

/* loaded from: classes5.dex */
public final class zzcar extends zzbui implements zzbvv {
    private static final zzcar zza;
    private static volatile zzbwc zze;
    private int zzf;
    private String zzg = "";

    static {
        zzcar zzcarVar = new zzcar();
        zza = zzcarVar;
        zzbui.zzad(zzcar.class, zzcarVar);
    }

    private zzcar() {
    }

    public static zzcaq zzc() {
        return (zzcaq) zza.zzN();
    }

    public static zzcar zzf() {
        return zza;
    }

    public static /* synthetic */ void zzh(zzcar zzcarVar, String str) {
        zzcarVar.zzf |= 1;
        zzcarVar.zzg = "*";
    }

    @Override // com.google.android.gms.internal.mlkit_vision_digital_ink.zzbui
    public final Object zzb(int i, Object obj, Object obj2) {
        int i2 = i - 1;
        if (i2 == 0) {
            return (byte) 1;
        }
        if (i2 == 2) {
            return zzbui.zzaa(zza, "\u0001\u0001\u0000\u0001\u0001\u0001\u0001\u0000\u0000\u0000\u0001ဈ\u0000", new Object[]{"zzf", "zzg"});
        }
        if (i2 == 3) {
            return new zzcar();
        }
        if (i2 == 4) {
            return new zzcaq(null);
        }
        if (i2 == 5) {
            return zza;
        }
        if (i2 != 6) {
            return null;
        }
        zzbwc zzbwcVar = zze;
        if (zzbwcVar == null) {
            synchronized (zzcar.class) {
                zzbwcVar = zze;
                if (zzbwcVar == null) {
                    zzbwcVar = new zzbuc(zza);
                    zze = zzbwcVar;
                }
            }
        }
        return zzbwcVar;
    }

    public final String zzg() {
        return this.zzg;
    }

    public final boolean zzi() {
        return (this.zzf & 1) != 0;
    }
}
