package com.google.android.gms.internal.mlkit_vision_digital_ink;

/* loaded from: classes5.dex */
public final class zzazh extends zzbui implements zzbvv {
    private static final zzbuo zza = new zzaze();
    private static final zzazh zze;
    private static volatile zzbwc zzf;
    private zzbun zzg = zzbui.zzV();

    static {
        zzazh zzazhVar = new zzazh();
        zze = zzazhVar;
        zzbui.zzad(zzazh.class, zzazhVar);
    }

    private zzazh() {
    }

    @Override // com.google.android.gms.internal.mlkit_vision_digital_ink.zzbui
    public final Object zzb(int i, Object obj, Object obj2) {
        int i2 = i - 1;
        if (i2 == 0) {
            return (byte) 1;
        }
        if (i2 == 2) {
            return zzbui.zzaa(zze, "\u0001\u0001\u0000\u0000\u0001\u0001\u0001\u0000\u0001\u0000\u0001,", new Object[]{"zzg", zzazg.zza});
        }
        if (i2 == 3) {
            return new zzazh();
        }
        if (i2 == 4) {
            return new zzazf(null);
        }
        if (i2 == 5) {
            return zze;
        }
        if (i2 != 6) {
            return null;
        }
        zzbwc zzbwcVar = zzf;
        if (zzbwcVar == null) {
            synchronized (zzazh.class) {
                zzbwcVar = zzf;
                if (zzbwcVar == null) {
                    zzbwcVar = new zzbuc(zze);
                    zzf = zzbwcVar;
                }
            }
        }
        return zzbwcVar;
    }
}
