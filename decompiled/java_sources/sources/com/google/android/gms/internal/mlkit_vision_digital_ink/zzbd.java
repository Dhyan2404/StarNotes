package com.google.android.gms.internal.mlkit_vision_digital_ink;

/* loaded from: classes5.dex */
public final class zzbd extends zzbui implements zzbvv {
    private static final zzbd zza;
    private static volatile zzbwc zze;
    private int zzf;
    private int zzg;
    private int zzh;
    private long zzi;
    private int zzj;

    static {
        zzbd zzbdVar = new zzbd();
        zza = zzbdVar;
        zzbui.zzad(zzbd.class, zzbdVar);
    }

    private zzbd() {
    }

    public static zzba zza() {
        return (zzba) zza.zzN();
    }

    public static /* synthetic */ void zzd(zzbd zzbdVar, int i) {
        zzbdVar.zzh = i - 1;
        zzbdVar.zzf |= 2;
    }

    @Override // com.google.android.gms.internal.mlkit_vision_digital_ink.zzbui
    public final Object zzb(int i, Object obj, Object obj2) {
        int i2 = i - 1;
        if (i2 == 0) {
            return (byte) 1;
        }
        if (i2 == 2) {
            return zzbui.zzaa(zza, "\u0001\u0004\u0000\u0001\u0001\u0004\u0004\u0000\u0000\u0000\u0001ဌ\u0000\u0002ဌ\u0001\u0003ဌ\u0003\u0004ဂ\u0002", new Object[]{"zzf", "zzg", zzbc.zza, "zzh", zzbb.zza, "zzj", zzaz.zza, "zzi"});
        }
        if (i2 == 3) {
            return new zzbd();
        }
        zzal zzalVar = null;
        if (i2 == 4) {
            return new zzba(zzalVar);
        }
        if (i2 == 5) {
            return zza;
        }
        if (i2 != 6) {
            return null;
        }
        zzbwc zzbwcVar = zze;
        if (zzbwcVar == null) {
            synchronized (zzbd.class) {
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
