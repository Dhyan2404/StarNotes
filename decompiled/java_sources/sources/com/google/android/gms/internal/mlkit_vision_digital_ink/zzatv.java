package com.google.android.gms.internal.mlkit_vision_digital_ink;

/* loaded from: classes5.dex */
public final class zzatv extends zzbui implements zzbvv {
    private static final zzatv zza;
    private static volatile zzbwc zze;
    private int zzf;
    private int zzg;

    static {
        zzatv zzatvVar = new zzatv();
        zza = zzatvVar;
        zzbui.zzad(zzatv.class, zzatvVar);
    }

    private zzatv() {
    }

    public static zzatu zza() {
        return (zzatu) zza.zzN();
    }

    public static /* synthetic */ void zzd(zzatv zzatvVar, int i) {
        zzatvVar.zzf |= 1;
        zzatvVar.zzg = i;
    }

    @Override // com.google.android.gms.internal.mlkit_vision_digital_ink.zzbui
    public final Object zzb(int i, Object obj, Object obj2) {
        int i2 = i - 1;
        if (i2 == 0) {
            return (byte) 1;
        }
        if (i2 == 2) {
            return zzbui.zzaa(zza, "\u0001\u0001\u0000\u0001\u0001\u0001\u0001\u0000\u0000\u0000\u0001င\u0000", new Object[]{"zzf", "zzg"});
        }
        if (i2 == 3) {
            return new zzatv();
        }
        if (i2 == 4) {
            return new zzatu(null);
        }
        if (i2 == 5) {
            return zza;
        }
        if (i2 != 6) {
            return null;
        }
        zzbwc zzbwcVar = zze;
        if (zzbwcVar == null) {
            synchronized (zzatv.class) {
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
