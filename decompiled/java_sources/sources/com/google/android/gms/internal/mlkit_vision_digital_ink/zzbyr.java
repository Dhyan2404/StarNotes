package com.google.android.gms.internal.mlkit_vision_digital_ink;

/* loaded from: classes5.dex */
public final class zzbyr extends zzbui implements zzbvv {
    private static final zzbyr zza;
    private static volatile zzbwc zze;
    private int zzf;
    private zzbyc zzg;
    private zzbyz zzh;
    private zzbyn zzi;
    private int zzj;
    private zzbyk zzk;
    private zzbzj zzl;
    private long zzm;
    private long zzn;
    private boolean zzo;
    private int zzp;
    private byte zzq = 2;

    static {
        zzbyr zzbyrVar = new zzbyr();
        zza = zzbyrVar;
        zzbui.zzad(zzbyr.class, zzbyrVar);
    }

    private zzbyr() {
    }

    @Override // com.google.android.gms.internal.mlkit_vision_digital_ink.zzbui
    public final Object zzb(int i, Object obj, Object obj2) {
        int i2 = i - 1;
        if (i2 == 0) {
            return Byte.valueOf(this.zzq);
        }
        if (i2 == 2) {
            return zzbui.zzaa(zza, "\u0001\n\u0000\u0001\u0001\n\n\u0000\u0000\u0001\u0001ဉ\u0000\u0002ဉ\u0001\u0003ဌ\u0003\u0004ဉ\u0004\u0005ᐉ\u0005\u0006ဂ\u0006\u0007ဂ\u0007\bဇ\b\tင\t\nဉ\u0002", new Object[]{"zzf", "zzg", "zzh", "zzj", zzbyl.zza, "zzk", "zzl", "zzm", "zzn", "zzo", "zzp", "zzi"});
        }
        if (i2 == 3) {
            return new zzbyr();
        }
        if (i2 == 4) {
            return new zzbyq(null);
        }
        if (i2 == 5) {
            return zza;
        }
        if (i2 != 6) {
            this.zzq = obj == null ? (byte) 0 : (byte) 1;
            return null;
        }
        zzbwc zzbwcVar = zze;
        if (zzbwcVar == null) {
            synchronized (zzbyr.class) {
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
