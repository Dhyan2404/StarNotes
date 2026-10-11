package com.google.android.gms.internal.mlkit_vision_digital_ink;

/* loaded from: classes5.dex */
public final class zzbai extends zzbui implements zzbvv {
    private static final zzbai zza;
    private static volatile zzbwc zze;
    private int zzf;
    private zzbem zzg;
    private int zzh;

    static {
        zzbai zzbaiVar = new zzbai();
        zza = zzbaiVar;
        zzbui.zzad(zzbai.class, zzbaiVar);
    }

    private zzbai() {
    }

    @Override // com.google.android.gms.internal.mlkit_vision_digital_ink.zzbui
    public final Object zzb(int i, Object obj, Object obj2) {
        int i2 = i - 1;
        if (i2 == 0) {
            return (byte) 1;
        }
        if (i2 == 2) {
            return zzbui.zzaa(zza, "\u0001\u0002\u0000\u0001\u0001\u0002\u0002\u0000\u0000\u0000\u0001ဉ\u0000\u0002ဌ\u0001", new Object[]{"zzf", "zzg", "zzh", zzazm.zza});
        }
        if (i2 == 3) {
            return new zzbai();
        }
        if (i2 == 4) {
            return new zzbah(null);
        }
        if (i2 == 5) {
            return zza;
        }
        if (i2 != 6) {
            return null;
        }
        zzbwc zzbwcVar = zze;
        if (zzbwcVar == null) {
            synchronized (zzbai.class) {
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
