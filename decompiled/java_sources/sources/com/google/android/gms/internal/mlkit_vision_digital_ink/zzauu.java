package com.google.android.gms.internal.mlkit_vision_digital_ink;

/* loaded from: classes5.dex */
public final class zzauu extends zzbui implements zzbvv {
    private static final zzbuo zza = new zzaur();
    private static final zzbuo zze = new zzaus();
    private static final zzauu zzf;
    private static volatile zzbwc zzg;
    private int zzh;
    private int zzi;
    private boolean zzj;
    private boolean zzk;
    private zzbae zzl;
    private zzboo zzm;
    private zzbun zzn = zzbui.zzV();
    private zzbun zzo = zzbui.zzV();

    static {
        zzauu zzauuVar = new zzauu();
        zzf = zzauuVar;
        zzbui.zzad(zzauu.class, zzauuVar);
    }

    private zzauu() {
    }

    @Override // com.google.android.gms.internal.mlkit_vision_digital_ink.zzbui
    public final Object zzb(int i, Object obj, Object obj2) {
        int i2 = i - 1;
        if (i2 == 0) {
            return (byte) 1;
        }
        if (i2 == 2) {
            return zzbui.zzaa(zzf, "\u0001\u0007\u0000\u0001\u0001\u0007\u0007\u0000\u0002\u0000\u0001ဌ\u0000\u0002ဇ\u0001\u0003ဇ\u0002\u0004ဉ\u0003\u0005ဉ\u0004\u0006\u001e\u0007\u001e", new Object[]{"zzh", "zzi", zzazm.zza, "zzj", "zzk", "zzl", "zzm", "zzn", zzbbv.zza, "zzo", zzbbw.zza});
        }
        if (i2 == 3) {
            return new zzauu();
        }
        if (i2 == 4) {
            return new zzaut(null);
        }
        if (i2 == 5) {
            return zzf;
        }
        if (i2 != 6) {
            return null;
        }
        zzbwc zzbwcVar = zzg;
        if (zzbwcVar == null) {
            synchronized (zzauu.class) {
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
