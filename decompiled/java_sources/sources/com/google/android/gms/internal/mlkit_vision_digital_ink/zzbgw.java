package com.google.android.gms.internal.mlkit_vision_digital_ink;

/* loaded from: classes5.dex */
public final class zzbgw extends zzbui implements zzbvv {
    private static final zzbgw zza;
    private static volatile zzbwc zze;
    private int zzf;
    private String zzg = "";
    private String zzh = "";
    private String zzi = "";
    private String zzj = "";
    private String zzk = "";
    private String zzl = "";
    private String zzm = "";
    private zzbuq zzn = zzbui.zzW();
    private String zzo = "";
    private boolean zzp;
    private boolean zzq;
    private boolean zzr;
    private int zzs;
    private int zzt;

    static {
        zzbgw zzbgwVar = new zzbgw();
        zza = zzbgwVar;
        zzbui.zzad(zzbgw.class, zzbgwVar);
    }

    private zzbgw() {
    }

    public static zzbgv zza() {
        return (zzbgv) zza.zzN();
    }

    public static zzbgw zzd() {
        return zza;
    }

    public static /* synthetic */ void zzf(zzbgw zzbgwVar, String str) {
        zzbgwVar.zzf |= 1;
        zzbgwVar.zzg = str;
    }

    public static /* synthetic */ void zzg(zzbgw zzbgwVar, String str) {
        zzbgwVar.zzf |= 8;
        zzbgwVar.zzj = str;
    }

    public static /* synthetic */ void zzh(zzbgw zzbgwVar, String str) {
        zzbgwVar.zzf |= 16;
        zzbgwVar.zzk = str;
    }

    public static /* synthetic */ void zzi(zzbgw zzbgwVar, String str) {
        zzbgwVar.zzf |= 32;
        zzbgwVar.zzl = str;
    }

    public static /* synthetic */ void zzj(zzbgw zzbgwVar, String str) {
        zzbgwVar.zzf |= 64;
        zzbgwVar.zzm = str;
    }

    public static /* synthetic */ void zzk(zzbgw zzbgwVar, Iterable iterable) {
        zzbuq zzbuqVar = zzbgwVar.zzn;
        if (!zzbuqVar.zzc()) {
            zzbgwVar.zzn = zzbui.zzX(zzbuqVar);
        }
        zzbsd.zzI(iterable, zzbgwVar.zzn);
    }

    public static /* synthetic */ void zzl(zzbgw zzbgwVar, String str) {
        zzbgwVar.zzf |= 128;
        zzbgwVar.zzo = str;
    }

    public static /* synthetic */ void zzm(zzbgw zzbgwVar, boolean z) {
        zzbgwVar.zzf |= 256;
        zzbgwVar.zzp = z;
    }

    public static /* synthetic */ void zzn(zzbgw zzbgwVar, boolean z) {
        zzbgwVar.zzf |= 512;
        zzbgwVar.zzq = z;
    }

    public static /* synthetic */ void zzo(zzbgw zzbgwVar, int i) {
        zzbgwVar.zzf |= 2048;
        zzbgwVar.zzs = i;
    }

    public static /* synthetic */ void zzp(zzbgw zzbgwVar, int i) {
        zzbgwVar.zzf |= 4096;
        zzbgwVar.zzt = i;
    }

    public static /* synthetic */ void zzq(zzbgw zzbgwVar, String str) {
        zzbgwVar.zzf |= 2;
        zzbgwVar.zzh = str;
    }

    public static /* synthetic */ void zzr(zzbgw zzbgwVar, String str) {
        zzbgwVar.zzf |= 4;
        zzbgwVar.zzi = str;
    }

    @Override // com.google.android.gms.internal.mlkit_vision_digital_ink.zzbui
    public final Object zzb(int i, Object obj, Object obj2) {
        int i2 = i - 1;
        if (i2 == 0) {
            return (byte) 1;
        }
        if (i2 == 2) {
            return zzbui.zzaa(zza, "\u0001\u000e\u0000\u0001\u0001\u000e\u000e\u0000\u0001\u0000\u0001ဈ\u0000\u0002ဈ\u0001\u0003ဈ\u0002\u0004ဈ\u0003\u0005ဈ\u0004\u0006ဈ\u0005\u0007ဈ\u0006\b\u001a\tဈ\u0007\nဇ\b\u000bဇ\t\fဇ\n\rဋ\u000b\u000eင\f", new Object[]{"zzf", "zzg", "zzh", "zzi", "zzj", "zzk", "zzl", "zzm", "zzn", "zzo", "zzp", "zzq", "zzr", "zzs", "zzt"});
        }
        if (i2 == 3) {
            return new zzbgw();
        }
        if (i2 == 4) {
            return new zzbgv(null);
        }
        if (i2 == 5) {
            return zza;
        }
        if (i2 != 6) {
            return null;
        }
        zzbwc zzbwcVar = zze;
        if (zzbwcVar == null) {
            synchronized (zzbgw.class) {
                zzbwcVar = zze;
                if (zzbwcVar == null) {
                    zzbwcVar = new zzbuc(zza);
                    zze = zzbwcVar;
                }
            }
        }
        return zzbwcVar;
    }

    public final String zze() {
        return this.zzk;
    }
}
