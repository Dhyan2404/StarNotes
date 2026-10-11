package com.google.android.gms.internal.mlkit_vision_digital_ink;

/* loaded from: classes5.dex */
public final class zzatj extends zzbui implements zzbvv {
    private static final zzatj zza;
    private static volatile zzbwc zze;
    private int zzf;
    private int zzg;
    private String zzh = "";
    private int zzi;

    static {
        zzatj zzatjVar = new zzatj();
        zza = zzatjVar;
        zzbui.zzad(zzatj.class, zzatjVar);
    }

    private zzatj() {
    }

    public static zzati zza() {
        return (zzati) zza.zzN();
    }

    public static /* synthetic */ void zzd(zzatj zzatjVar, int i) {
        zzatjVar.zzf |= 1;
        zzatjVar.zzg = i;
    }

    public static /* synthetic */ void zze(zzatj zzatjVar, String str) {
        str.getClass();
        zzatjVar.zzf |= 2;
        zzatjVar.zzh = str;
    }

    public static /* synthetic */ void zzf(zzatj zzatjVar, int i) {
        zzatjVar.zzf |= 4;
        zzatjVar.zzi = i;
    }

    @Override // com.google.android.gms.internal.mlkit_vision_digital_ink.zzbui
    public final Object zzb(int i, Object obj, Object obj2) {
        int i2 = i - 1;
        if (i2 == 0) {
            return (byte) 1;
        }
        if (i2 == 2) {
            return zzbui.zzaa(zza, "\u0001\u0003\u0000\u0001\u0001\u0003\u0003\u0000\u0000\u0000\u0001င\u0000\u0002ဈ\u0001\u0003င\u0002", new Object[]{"zzf", "zzg", "zzh", "zzi"});
        }
        if (i2 == 3) {
            return new zzatj();
        }
        if (i2 == 4) {
            return new zzati(null);
        }
        if (i2 == 5) {
            return zza;
        }
        if (i2 != 6) {
            return null;
        }
        zzbwc zzbwcVar = zze;
        if (zzbwcVar == null) {
            synchronized (zzatj.class) {
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
