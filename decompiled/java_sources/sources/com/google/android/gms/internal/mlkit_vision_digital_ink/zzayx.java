package com.google.android.gms.internal.mlkit_vision_digital_ink;

/* loaded from: classes5.dex */
public final class zzayx extends zzbui implements zzbvv {
    private static final zzbuo zza = new zzayv();
    private static final zzayx zze;
    private static volatile zzbwc zzf;
    private int zzg;
    private zzbbk zzh;
    private zzbbk zzi;
    private zzbun zzj = zzbui.zzV();
    private long zzk;
    private boolean zzl;

    static {
        zzayx zzayxVar = new zzayx();
        zze = zzayxVar;
        zzbui.zzad(zzayx.class, zzayxVar);
    }

    private zzayx() {
    }

    @Override // com.google.android.gms.internal.mlkit_vision_digital_ink.zzbui
    public final Object zzb(int i, Object obj, Object obj2) {
        int i2 = i - 1;
        if (i2 == 0) {
            return (byte) 1;
        }
        if (i2 == 2) {
            return zzbui.zzaa(zze, "\u0001\u0005\u0000\u0001\u0001\u0005\u0005\u0000\u0001\u0000\u0001ဉ\u0000\u0002ဉ\u0001\u0003\u001e\u0004ဃ\u0002\u0005ဇ\u0003", new Object[]{"zzg", "zzh", "zzi", "zzj", zzazm.zza, "zzk", "zzl"});
        }
        if (i2 == 3) {
            return new zzayx();
        }
        if (i2 == 4) {
            return new zzayw(null);
        }
        if (i2 == 5) {
            return zze;
        }
        if (i2 != 6) {
            return null;
        }
        zzbwc zzbwcVar = zzf;
        if (zzbwcVar == null) {
            synchronized (zzayx.class) {
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
