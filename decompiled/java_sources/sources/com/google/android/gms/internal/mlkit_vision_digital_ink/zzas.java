package com.google.android.gms.internal.mlkit_vision_digital_ink;

/* loaded from: classes5.dex */
public final class zzas extends zzbui implements zzbvv {
    private static final zzas zza;
    private static volatile zzbwc zze;
    private int zzf;
    private int zzi;
    private int zzj;
    private zzcap zzl;
    private int zzn;
    private zzcap zzo;
    private int zzq;
    private int zzr;
    private zzbsk zzu;
    private String zzg = "";
    private String zzh = "";
    private String zzk = "";
    private String zzm = "";
    private zzbuq zzp = zzbui.zzW();
    private String zzs = "";
    private String zzt = "";

    static {
        zzas zzasVar = new zzas();
        zza = zzasVar;
        zzbui.zzad(zzas.class, zzasVar);
    }

    private zzas() {
    }

    public static zzaq zza() {
        return (zzaq) zza.zzN();
    }

    public static /* synthetic */ void zzd(zzas zzasVar, String str) {
        str.getClass();
        zzasVar.zzf |= 1;
        zzasVar.zzg = str;
    }

    public static /* synthetic */ void zze(zzas zzasVar, String str) {
        str.getClass();
        zzasVar.zzf |= 2;
        zzasVar.zzh = str;
    }

    public static /* synthetic */ void zzf(zzas zzasVar, int i) {
        zzasVar.zzf |= 4;
        zzasVar.zzi = i;
    }

    public static /* synthetic */ void zzg(zzas zzasVar, zzcap zzcapVar) {
        zzcapVar.getClass();
        zzasVar.zzl = zzcapVar;
        zzasVar.zzf |= 32;
    }

    public static /* synthetic */ void zzh(zzas zzasVar, String str) {
        str.getClass();
        zzasVar.zzf |= 64;
        zzasVar.zzm = str;
    }

    @Override // com.google.android.gms.internal.mlkit_vision_digital_ink.zzbui
    public final Object zzb(int i, Object obj, Object obj2) {
        int i2 = i - 1;
        if (i2 == 0) {
            return (byte) 1;
        }
        if (i2 == 2) {
            return zzbui.zzaa(zza, "\u0001\u000f\u0000\u0001\u0002\u0015\u000f\u0000\u0001\u0000\u0002ဈ\u0001\u0004င\u0002\u0005ဈ\u0004\u0007ဈ\u0000\u000bဉ\u0005\fဉ\b\r\u001b\u000eဈ\u0006\u000fဌ\u0003\u0010င\u0007\u0011ဌ\t\u0012ဌ\n\u0013ဈ\u000b\u0014ဈ\f\u0015ဉ\r", new Object[]{"zzf", "zzh", "zzi", "zzk", "zzg", "zzl", "zzo", "zzp", zzay.class, "zzm", "zzj", zzar.zza, "zzn", "zzq", zzap.zza, "zzr", zzao.zza, "zzs", "zzt", "zzu"});
        }
        if (i2 == 3) {
            return new zzas();
        }
        zzal zzalVar = null;
        if (i2 == 4) {
            return new zzaq(zzalVar);
        }
        if (i2 == 5) {
            return zza;
        }
        if (i2 != 6) {
            return null;
        }
        zzbwc zzbwcVar = zze;
        if (zzbwcVar == null) {
            synchronized (zzas.class) {
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
