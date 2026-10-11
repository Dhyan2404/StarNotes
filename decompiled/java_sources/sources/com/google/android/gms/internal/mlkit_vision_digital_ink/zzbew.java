package com.google.android.gms.internal.mlkit_vision_digital_ink;

/* loaded from: classes5.dex */
public final class zzbew extends zzbui implements zzbvv {
    private static final zzbew zza;
    private static volatile zzbwc zze;
    private int zzf;
    private zzbez zzg;
    private int zzh;

    static {
        zzbew zzbewVar = new zzbew();
        zza = zzbewVar;
        zzbui.zzad(zzbew.class, zzbewVar);
    }

    private zzbew() {
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
            return new zzbew();
        }
        if (i2 == 4) {
            return new zzbev(null);
        }
        if (i2 == 5) {
            return zza;
        }
        if (i2 != 6) {
            return null;
        }
        zzbwc zzbwcVar = zze;
        if (zzbwcVar == null) {
            synchronized (zzbew.class) {
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
