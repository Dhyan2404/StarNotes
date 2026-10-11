package com.google.android.gms.internal.mlkit_vision_digital_ink;

/* loaded from: classes5.dex */
public final class zzbzx extends zzbue implements zzbvv {
    private static final zzbzx zze;
    private static volatile zzbwc zzf;
    private int zzg;
    private zzbyc zzh;
    private zzbyz zzi;
    private zzbyn zzj;
    private zzbzs zzk;
    private zzbzq zzl;
    private int zzm;
    private int zzn;
    private int zzp;
    private zzbzj zzq;
    private long zzr;
    private int zzs;
    private byte zzt = 2;
    private zzbuq zzo = zzbui.zzW();

    static {
        zzbzx zzbzxVar = new zzbzx();
        zze = zzbzxVar;
        zzbui.zzad(zzbzx.class, zzbzxVar);
    }

    private zzbzx() {
    }

    @Override // com.google.android.gms.internal.mlkit_vision_digital_ink.zzbui
    public final Object zzb(int i, Object obj, Object obj2) {
        int i2 = i - 1;
        if (i2 == 0) {
            return Byte.valueOf(this.zzt);
        }
        if (i2 == 2) {
            return zzbui.zzaa(zze, "\u0001\f\u0000\u0001\u0001\f\f\u0000\u0001\u0001\u0001ဉ\u0000\u0002ဉ\u0001\u0003ဉ\u0002\u0004ဉ\u0003\u0005ဉ\u0004\u0006ဌ\u0005\u0007ဌ\u0006\b\u001b\tဌ\u0007\nᐉ\b\u000bဂ\t\fင\n", new Object[]{"zzg", "zzh", "zzi", "zzj", "zzk", "zzl", "zzm", zzbzt.zza, "zzn", zzbzw.zza, "zzo", zzbzo.class, "zzp", zzbzu.zza, "zzq", "zzr", "zzs"});
        }
        if (i2 == 3) {
            return new zzbzx();
        }
        if (i2 == 4) {
            return new zzbzv(null);
        }
        if (i2 == 5) {
            return zze;
        }
        if (i2 != 6) {
            this.zzt = obj == null ? (byte) 0 : (byte) 1;
            return null;
        }
        zzbwc zzbwcVar = zzf;
        if (zzbwcVar == null) {
            synchronized (zzbzx.class) {
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
