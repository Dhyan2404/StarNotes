package com.google.android.gms.internal.mlkit_vision_digital_ink;

/* loaded from: classes5.dex */
public final class zzbby extends zzbui implements zzbvv {
    private static final zzbuo zza = new zzbbt();
    private static final zzbuo zze = new zzbbu();
    private static final zzbby zzf;
    private static volatile zzbwc zzg;
    private int zzh;
    private zzban zzi;
    private zzboo zzj;
    private zzbun zzk = zzbui.zzV();
    private zzbun zzl = zzbui.zzV();
    private zzbae zzm;

    static {
        zzbby zzbbyVar = new zzbby();
        zzf = zzbbyVar;
        zzbui.zzad(zzbby.class, zzbbyVar);
    }

    private zzbby() {
    }

    @Override // com.google.android.gms.internal.mlkit_vision_digital_ink.zzbui
    public final Object zzb(int i, Object obj, Object obj2) {
        int i2 = i - 1;
        if (i2 == 0) {
            return (byte) 1;
        }
        if (i2 == 2) {
            return zzbui.zzaa(zzf, "\u0001\u0005\u0000\u0001\u0001\u0005\u0005\u0000\u0002\u0000\u0001ဉ\u0000\u0002ဉ\u0001\u0003\u001e\u0004\u001e\u0005ဉ\u0002", new Object[]{"zzh", "zzi", "zzj", "zzk", zzbbv.zza, "zzl", zzbbw.zza, "zzm"});
        }
        if (i2 == 3) {
            return new zzbby();
        }
        if (i2 == 4) {
            return new zzbbx(null);
        }
        if (i2 == 5) {
            return zzf;
        }
        if (i2 != 6) {
            return null;
        }
        zzbwc zzbwcVar = zzg;
        if (zzbwcVar == null) {
            synchronized (zzbby.class) {
                zzbwcVar = zzg;
                if (zzbwcVar == null) {
                    zzbwcVar = new zzbuc(zzf);
                    zzg = zzbwcVar;
                }
            }
        }
        return zzbwcVar;
    }
}
