package com.google.android.gms.internal.mlkit_vision_digital_ink;

@Deprecated
/* loaded from: classes5.dex */
public final class zzbo extends zzbui implements zzbvv {
    private static final zzbo zza;
    private static volatile zzbwc zze;
    private int zzf;
    private int zzh;
    private zzbsk zzi;
    private long zzk;
    private long zzl;
    private String zzg = "";
    private zzbuq zzj = zzbui.zzW();

    static {
        zzbo zzboVar = new zzbo();
        zza = zzboVar;
        zzbui.zzad(zzbo.class, zzboVar);
    }

    private zzbo() {
    }

    @Override // com.google.android.gms.internal.mlkit_vision_digital_ink.zzbui
    public final Object zzb(int i, Object obj, Object obj2) {
        int i2 = i - 1;
        if (i2 == 0) {
            return (byte) 1;
        }
        if (i2 == 2) {
            return zzbui.zzaa(zza, "\u0001\u0006\u0000\u0001\u0001\u0007\u0006\u0000\u0001\u0000\u0001ဈ\u0000\u0002င\u0001\u0003ဉ\u0002\u0004\u001a\u0006ဂ\u0003\u0007ဂ\u0004", new Object[]{"zzf", "zzg", "zzh", "zzi", "zzj", "zzk", "zzl"});
        }
        if (i2 == 3) {
            return new zzbo();
        }
        zzbm zzbmVar = null;
        if (i2 == 4) {
            return new zzbn(zzbmVar);
        }
        if (i2 == 5) {
            return zza;
        }
        if (i2 != 6) {
            return null;
        }
        zzbwc zzbwcVar = zze;
        if (zzbwcVar == null) {
            synchronized (zzbo.class) {
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
