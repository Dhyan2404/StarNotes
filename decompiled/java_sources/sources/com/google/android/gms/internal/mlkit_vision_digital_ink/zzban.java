package com.google.android.gms.internal.mlkit_vision_digital_ink;

/* loaded from: classes5.dex */
public final class zzban extends zzbui implements zzbvv {
    private static final zzban zza;
    private static volatile zzbwc zze;
    private int zzf;
    private long zzg;
    private int zzh;
    private boolean zzi;
    private boolean zzj;
    private boolean zzk;
    private boolean zzl;
    private int zzm;
    private zzbuq zzn = zzbui.zzW();
    private boolean zzo;
    private boolean zzp;

    static {
        zzban zzbanVar = new zzban();
        zza = zzbanVar;
        zzbui.zzad(zzban.class, zzbanVar);
    }

    private zzban() {
    }

    @Override // com.google.android.gms.internal.mlkit_vision_digital_ink.zzbui
    public final Object zzb(int i, Object obj, Object obj2) {
        int i2 = i - 1;
        if (i2 == 0) {
            return (byte) 1;
        }
        if (i2 == 2) {
            return zzbui.zzaa(zza, "\u0001\n\u0000\u0001\u0001\n\n\u0000\u0001\u0000\u0001ဃ\u0000\u0002ဌ\u0001\u0003ဇ\u0002\u0004ဇ\u0003\u0005ဇ\u0004\u0006ဇ\u0005\u0007ဋ\u0006\b\u001b\tဇ\u0007\nဇ\b", new Object[]{"zzf", "zzg", "zzh", zzazm.zza, "zzi", "zzj", "zzk", "zzl", "zzm", "zzn", zzbgk.class, "zzo", "zzp"});
        }
        if (i2 == 3) {
            return new zzban();
        }
        if (i2 == 4) {
            return new zzbam(null);
        }
        if (i2 == 5) {
            return zza;
        }
        if (i2 != 6) {
            return null;
        }
        zzbwc zzbwcVar = zze;
        if (zzbwcVar == null) {
            synchronized (zzban.class) {
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
