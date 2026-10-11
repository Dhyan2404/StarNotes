package com.google.android.gms.internal.mlkit_vision_digital_ink;

/* loaded from: classes5.dex */
public final class zzdh extends zzbui implements zzbvv {
    private static final zzdh zza;
    private static volatile zzbwc zze;
    private int zzf;
    private int zzg;
    private int zzh;
    private long zzi;
    private int zzj;

    static {
        zzdh zzdhVar = new zzdh();
        zza = zzdhVar;
        zzbui.zzad(zzdh.class, zzdhVar);
    }

    private zzdh() {
    }

    public static zzdh zzd() {
        return zza;
    }

    public static zzdh zze(byte[] bArr, zzbtr zzbtrVar) throws zzbut {
        return (zzdh) zzbui.zzT(zza, bArr, zzbtrVar);
    }

    public final long zza() {
        return this.zzi;
    }

    @Override // com.google.android.gms.internal.mlkit_vision_digital_ink.zzbui
    public final Object zzb(int i, Object obj, Object obj2) {
        int i2 = i - 1;
        if (i2 == 0) {
            return (byte) 1;
        }
        if (i2 == 2) {
            return zzbui.zzaa(zza, "\u0001\u0004\u0000\u0001\u0001\u0004\u0004\u0000\u0000\u0000\u0001ဌ\u0000\u0002ဌ\u0001\u0003ဌ\u0003\u0004ဂ\u0002", new Object[]{"zzf", "zzg", zzdf.zza, "zzh", zzdc.zza, "zzj", zzcy.zza, "zzi"});
        }
        if (i2 == 3) {
            return new zzdh();
        }
        zzbx zzbxVar = null;
        if (i2 == 4) {
            return new zzda(zzbxVar);
        }
        if (i2 == 5) {
            return zza;
        }
        if (i2 != 6) {
            return null;
        }
        zzbwc zzbwcVar = zze;
        if (zzbwcVar == null) {
            synchronized (zzdh.class) {
                zzbwcVar = zze;
                if (zzbwcVar == null) {
                    zzbwcVar = new zzbuc(zza);
                    zze = zzbwcVar;
                }
            }
        }
        return zzbwcVar;
    }

    public final int zzf() {
        int zza2 = zzcz.zza(this.zzj);
        if (zza2 == 0) {
            return 1;
        }
        return zza2;
    }

    public final int zzg() {
        int zza2 = zzdd.zza(this.zzh);
        if (zza2 == 0) {
            return 1;
        }
        return zza2;
    }

    public final int zzh() {
        int zza2 = zzdg.zza(this.zzg);
        if (zza2 == 0) {
            return 1;
        }
        return zza2;
    }
}
