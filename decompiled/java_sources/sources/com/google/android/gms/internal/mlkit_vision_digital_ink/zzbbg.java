package com.google.android.gms.internal.mlkit_vision_digital_ink;

/* loaded from: classes5.dex */
public final class zzbbg extends zzbui implements zzbvv {
    private static final zzbbg zza;
    private static volatile zzbwc zze;
    private int zzf;
    private int zzi;
    private int zzl;
    private long zzm;
    private boolean zzn;
    private boolean zzo;
    private String zzg = "";
    private String zzh = "";
    private String zzj = "";
    private String zzk = "";

    static {
        zzbbg zzbbgVar = new zzbbg();
        zza = zzbbgVar;
        zzbui.zzad(zzbbg.class, zzbbgVar);
    }

    private zzbbg() {
    }

    @Override // com.google.android.gms.internal.mlkit_vision_digital_ink.zzbui
    public final Object zzb(int i, Object obj, Object obj2) {
        int i2 = i - 1;
        if (i2 == 0) {
            return (byte) 1;
        }
        if (i2 == 2) {
            return zzbui.zzaa(zza, "\u0001\t\u0000\u0001\u0001\t\t\u0000\u0000\u0000\u0001ဈ\u0000\u0002ဈ\u0001\u0003ဌ\u0002\u0004ဈ\u0003\u0005ဈ\u0004\u0006ဌ\u0005\u0007ဃ\u0006\bဇ\u0007\tဇ\b", new Object[]{"zzf", "zzg", "zzh", "zzi", zzbbf.zza, "zzj", "zzk", "zzl", zzbbe.zza, "zzm", "zzn", "zzo"});
        }
        if (i2 == 3) {
            return new zzbbg();
        }
        if (i2 == 4) {
            return new zzbbd(null);
        }
        if (i2 == 5) {
            return zza;
        }
        if (i2 != 6) {
            return null;
        }
        zzbwc zzbwcVar = zze;
        if (zzbwcVar == null) {
            synchronized (zzbbg.class) {
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
