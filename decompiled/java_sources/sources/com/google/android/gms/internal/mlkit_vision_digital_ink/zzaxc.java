package com.google.android.gms.internal.mlkit_vision_digital_ink;

/* loaded from: classes5.dex */
public final class zzaxc extends zzbui implements zzbvv {
    private static final zzbuo zza = new zzaxa();
    private static final zzaxc zze;
    private static volatile zzbwc zzf;
    private int zzg;
    private zzbbk zzh;
    private zzbbk zzi;
    private zzbun zzj = zzbui.zzV();
    private long zzk;

    static {
        zzaxc zzaxcVar = new zzaxc();
        zze = zzaxcVar;
        zzbui.zzad(zzaxc.class, zzaxcVar);
    }

    private zzaxc() {
    }

    @Override // com.google.android.gms.internal.mlkit_vision_digital_ink.zzbui
    public final Object zzb(int i, Object obj, Object obj2) {
        int i2 = i - 1;
        if (i2 == 0) {
            return (byte) 1;
        }
        if (i2 == 2) {
            return zzbui.zzaa(zze, "\u0001\u0004\u0000\u0001\u0001\u0004\u0004\u0000\u0001\u0000\u0001ဉ\u0000\u0002ဉ\u0001\u0003\u001e\u0004ဃ\u0002", new Object[]{"zzg", "zzh", "zzi", "zzj", zzazm.zza, "zzk"});
        }
        if (i2 == 3) {
            return new zzaxc();
        }
        if (i2 == 4) {
            return new zzaxb(null);
        }
        if (i2 == 5) {
            return zze;
        }
        if (i2 != 6) {
            return null;
        }
        zzbwc zzbwcVar = zzf;
        if (zzbwcVar == null) {
            synchronized (zzaxc.class) {
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
