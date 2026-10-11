package com.google.android.gms.internal.mlkit_vision_digital_ink;

/* loaded from: classes5.dex */
public final class zzav extends zzbui implements zzbvv {
    private static final zzav zza;
    private static volatile zzbwc zze;
    private int zzf;
    private int zzi;
    private zzbsk zzj;
    private zzbsk zzk;
    private zzbo zzl;
    private int zzm;
    private int zzn;
    private long zzo;
    private long zzp;
    private zzbd zzq;
    private boolean zzr;
    private int zzt;
    private int zzv;
    private long zzw;
    private zzcba zzz;
    private String zzg = "";
    private String zzh = "";
    private zzbuq zzs = zzbui.zzW();
    private zzbuq zzu = zzbui.zzW();
    private String zzx = "";
    private zzbuq zzy = zzbui.zzW();

    static {
        zzav zzavVar = new zzav();
        zza = zzavVar;
        zzbui.zzad(zzav.class, zzavVar);
    }

    private zzav() {
    }

    public static zzau zzc() {
        return (zzau) zza.zzN();
    }

    public static /* synthetic */ void zzh(zzav zzavVar, String str) {
        str.getClass();
        zzavVar.zzf |= 1;
        zzavVar.zzg = str;
    }

    public static /* synthetic */ void zzi(zzav zzavVar, String str) {
        str.getClass();
        zzavVar.zzf |= 2;
        zzavVar.zzh = str;
    }

    public static /* synthetic */ void zzj(zzav zzavVar, zzas zzasVar) {
        zzasVar.getClass();
        zzbuq zzbuqVar = zzavVar.zzs;
        if (!zzbuqVar.zzc()) {
            zzavVar.zzs = zzbui.zzX(zzbuqVar);
        }
        zzavVar.zzs.add(zzasVar);
    }

    public final long zza() {
        return this.zzw;
    }

    @Override // com.google.android.gms.internal.mlkit_vision_digital_ink.zzbui
    public final Object zzb(int i, Object obj, Object obj2) {
        int i2 = i - 1;
        if (i2 == 0) {
            return (byte) 1;
        }
        if (i2 == 2) {
            return zzbui.zzaa(zza, "\u0001\u0014\u0000\u0001\u0001\u001c\u0014\u0000\u0003\u0000\u0001ဈ\u0000\u0002\u001b\u0003ဂ\b\u0006ဈ\u0001\nင\u0002\u000bဂ\t\fဌ\u0007\rဉ\n\u000eဇ\u000b\u0010င\f\u0011\u001b\u0013ဌ\r\u0014ဉ\u0003\u0015ဌ\u0006\u0016ဉ\u0005\u0017ဂ\u000e\u0019\u001a\u001aဈ\u000f\u001bဉ\u0004\u001cဉ\u0010", new Object[]{"zzf", "zzg", "zzs", zzas.class, "zzo", "zzh", "zzi", "zzp", "zzn", zzat.zza, "zzq", "zzr", "zzt", "zzu", zzbf.class, "zzv", zzws.zza(), "zzj", "zzm", zzbp.zza, "zzl", "zzw", "zzy", "zzx", "zzk", "zzz"});
        }
        if (i2 == 3) {
            return new zzav();
        }
        zzal zzalVar = null;
        if (i2 == 4) {
            return new zzau(zzalVar);
        }
        if (i2 == 5) {
            return zza;
        }
        if (i2 != 6) {
            return null;
        }
        zzbwc zzbwcVar = zze;
        if (zzbwcVar == null) {
            synchronized (zzav.class) {
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
        return this.zzg;
    }

    public final String zzf() {
        return this.zzh;
    }

    public final String zzg() {
        return this.zzx;
    }

    public final boolean zzk() {
        return (this.zzf & 2) != 0;
    }
}
