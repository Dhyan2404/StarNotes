package com.google.android.gms.internal.mlkit_vision_digital_ink;

/* loaded from: classes5.dex */
public final class zzboo extends zzbui implements zzbvv {
    private static final zzbuo zza = new zzbom();
    private static final zzboo zze;
    private static volatile zzbwc zzf;
    private zzbun zzg = zzbui.zzV();

    static {
        zzboo zzbooVar = new zzboo();
        zze = zzbooVar;
        zzbui.zzad(zzboo.class, zzbooVar);
    }

    private zzboo() {
    }

    @Override // com.google.android.gms.internal.mlkit_vision_digital_ink.zzbui
    public final Object zzb(int i, Object obj, Object obj2) {
        int i2 = i - 1;
        if (i2 == 0) {
            return (byte) 1;
        }
        if (i2 == 2) {
            return zzbui.zzaa(zze, "\u0001\u0001\u0000\u0000\u0001\u0001\u0001\u0000\u0001\u0000\u0001\u001e", new Object[]{"zzg", zzbsb.zza()});
        }
        if (i2 == 3) {
            return new zzboo();
        }
        if (i2 == 4) {
            return new zzbon(null);
        }
        if (i2 == 5) {
            return zze;
        }
        if (i2 != 6) {
            return null;
        }
        zzbwc zzbwcVar = zzf;
        if (zzbwcVar == null) {
            synchronized (zzboo.class) {
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
