package com.google.android.gms.internal.mlkit_vision_digital_ink;

/* loaded from: classes5.dex */
public final class zzayl extends zzbui implements zzbvv {
    private static final zzayl zza;
    private static volatile zzbwc zze;
    private int zzf;
    private int zzg;
    private long zzh;
    private int zzi;
    private boolean zzj;

    static {
        zzayl zzaylVar = new zzayl();
        zza = zzaylVar;
        zzbui.zzad(zzayl.class, zzaylVar);
    }

    private zzayl() {
    }

    @Override // com.google.android.gms.internal.mlkit_vision_digital_ink.zzbui
    public final Object zzb(int i, Object obj, Object obj2) {
        int i2 = i - 1;
        if (i2 == 0) {
            return (byte) 1;
        }
        if (i2 == 2) {
            return zzbui.zzaa(zza, "\u0001\u0004\u0000\u0001\u0001\u0004\u0004\u0000\u0000\u0000\u0001ဋ\u0000\u0002ဃ\u0001\u0003ဌ\u0002\u0004ဇ\u0003", new Object[]{"zzf", "zzg", "zzh", "zzi", zzazm.zza, "zzj"});
        }
        if (i2 == 3) {
            return new zzayl();
        }
        if (i2 == 4) {
            return new zzayk(null);
        }
        if (i2 == 5) {
            return zza;
        }
        if (i2 != 6) {
            return null;
        }
        zzbwc zzbwcVar = zze;
        if (zzbwcVar == null) {
            synchronized (zzayl.class) {
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
