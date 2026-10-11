package com.google.android.gms.internal.mlkit_vision_digital_ink;

/* loaded from: classes5.dex */
public final class zzbzj extends zzbue implements zzbvv {
    private static final zzbzj zze;
    private static volatile zzbwc zzf;
    private int zzg;
    private boolean zzi;
    private byte zzj = 2;
    private zzbuq zzh = zzbui.zzW();

    static {
        zzbzj zzbzjVar = new zzbzj();
        zze = zzbzjVar;
        zzbui.zzad(zzbzj.class, zzbzjVar);
    }

    private zzbzj() {
    }

    @Override // com.google.android.gms.internal.mlkit_vision_digital_ink.zzbui
    public final Object zzb(int i, Object obj, Object obj2) {
        int i2 = i - 1;
        if (i2 == 0) {
            return Byte.valueOf(this.zzj);
        }
        if (i2 == 2) {
            return zzbui.zzaa(zze, "\u0001\u0002\u0000\u0001\u0001\u0002\u0002\u0000\u0001\u0000\u0001\u001b\u0002ဇ\u0000", new Object[]{"zzg", "zzh", zzbzi.class, "zzi"});
        }
        if (i2 == 3) {
            return new zzbzj();
        }
        if (i2 == 4) {
            return new zzbzg(null);
        }
        if (i2 == 5) {
            return zze;
        }
        if (i2 != 6) {
            this.zzj = obj == null ? (byte) 0 : (byte) 1;
            return null;
        }
        zzbwc zzbwcVar = zzf;
        if (zzbwcVar == null) {
            synchronized (zzbzj.class) {
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
