package com.google.android.gms.internal.mlkit_vision_digital_ink;

/* loaded from: classes5.dex */
public final class zzatl extends zzbui implements zzbvv {
    private static final zzatl zza;
    private static volatile zzbwc zze;
    private int zzf;
    private zzatr zzg;
    private zzatt zzh;
    private long zzi;

    static {
        zzatl zzatlVar = new zzatl();
        zza = zzatlVar;
        zzbui.zzad(zzatl.class, zzatlVar);
    }

    private zzatl() {
    }

    public static zzatk zza() {
        return (zzatk) zza.zzN();
    }

    public static /* synthetic */ void zzd(zzatl zzatlVar, zzatr zzatrVar) {
        zzatrVar.getClass();
        zzatlVar.zzg = zzatrVar;
        zzatlVar.zzf |= 1;
    }

    public static /* synthetic */ void zze(zzatl zzatlVar, zzatt zzattVar) {
        zzattVar.getClass();
        zzatlVar.zzh = zzattVar;
        zzatlVar.zzf |= 2;
    }

    public static /* synthetic */ void zzf(zzatl zzatlVar, long j) {
        zzatlVar.zzf |= 4;
        zzatlVar.zzi = j;
    }

    @Override // com.google.android.gms.internal.mlkit_vision_digital_ink.zzbui
    public final Object zzb(int i, Object obj, Object obj2) {
        int i2 = i - 1;
        if (i2 == 0) {
            return (byte) 1;
        }
        if (i2 == 2) {
            return zzbui.zzaa(zza, "\u0001\u0003\u0000\u0001\u0001\u0003\u0003\u0000\u0000\u0000\u0001ဉ\u0000\u0002ဉ\u0001\u0003ဃ\u0002", new Object[]{"zzf", "zzg", "zzh", "zzi"});
        }
        if (i2 == 3) {
            return new zzatl();
        }
        if (i2 == 4) {
            return new zzatk(null);
        }
        if (i2 == 5) {
            return zza;
        }
        if (i2 != 6) {
            return null;
        }
        zzbwc zzbwcVar = zze;
        if (zzbwcVar == null) {
            synchronized (zzatl.class) {
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
