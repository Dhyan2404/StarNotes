package com.google.android.gms.internal.mlkit_vision_digital_ink;

/* loaded from: classes5.dex */
public final class zzatn extends zzbui implements zzbvv {
    private static final zzatn zza;
    private static volatile zzbwc zze;
    private int zzf;
    private String zzg = "";

    static {
        zzatn zzatnVar = new zzatn();
        zza = zzatnVar;
        zzbui.zzad(zzatn.class, zzatnVar);
    }

    private zzatn() {
    }

    public static zzatm zza() {
        return (zzatm) zza.zzN();
    }

    public static /* synthetic */ void zzd(zzatn zzatnVar, String str) {
        str.getClass();
        zzatnVar.zzf |= 1;
        zzatnVar.zzg = str;
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
            return new zzatn();
        }
        if (i2 == 4) {
            return new zzatm(null);
        }
        if (i2 == 5) {
            return zza;
        }
        if (i2 != 6) {
            return null;
        }
        zzbwc zzbwcVar = zze;
        if (zzbwcVar == null) {
            synchronized (zzatn.class) {
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
