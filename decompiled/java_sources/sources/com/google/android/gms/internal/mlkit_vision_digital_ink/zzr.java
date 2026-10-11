package com.google.android.gms.internal.mlkit_vision_digital_ink;

import java.util.List;

/* loaded from: classes5.dex */
public final class zzr extends zzbui implements zzbvv {
    private static final zzr zza;
    private static volatile zzbwc zze;
    private int zzf;
    private int zzj;
    private int zzk;
    private long zzm;
    private zzbsk zzp;
    private zzbsk zzq;
    private zzcba zzr;
    private String zzg = "";
    private String zzh = "";
    private String zzi = "";
    private zzbuq zzl = zzbui.zzW();
    private String zzn = "";
    private zzbuq zzo = zzbui.zzW();

    static {
        zzr zzrVar = new zzr();
        zza = zzrVar;
        zzbui.zzad(zzr.class, zzrVar);
    }

    private zzr() {
    }

    public static zzn zzf() {
        return (zzn) zza.zzN();
    }

    public static /* synthetic */ void zzm(zzr zzrVar, String str) {
        str.getClass();
        zzrVar.zzf |= 1;
        zzrVar.zzg = str;
    }

    public static /* synthetic */ void zzn(zzr zzrVar, int i) {
        zzrVar.zzf |= 8;
        zzrVar.zzj = i;
    }

    public static /* synthetic */ void zzo(zzr zzrVar, zzq zzqVar) {
        zzrVar.zzk = zzqVar.zza();
        zzrVar.zzf |= 16;
    }

    public static /* synthetic */ void zzp(zzr zzrVar, zzm zzmVar) {
        zzmVar.getClass();
        zzrVar.zzy();
        zzrVar.zzl.add(zzmVar);
    }

    public static /* synthetic */ void zzq(zzr zzrVar, Iterable iterable) {
        zzrVar.zzy();
        zzbsd.zzI(iterable, zzrVar.zzl);
    }

    public static /* synthetic */ void zzr(zzr zzrVar, long j) {
        zzrVar.zzf |= 32;
        zzrVar.zzm = j;
    }

    public static /* synthetic */ void zzs(zzr zzrVar, String str) {
        str.getClass();
        zzrVar.zzf |= 64;
        zzrVar.zzn = str;
    }

    public static /* synthetic */ void zzt(zzr zzrVar, Iterable iterable) {
        zzbuq zzbuqVar = zzrVar.zzo;
        if (!zzbuqVar.zzc()) {
            zzrVar.zzo = zzbui.zzX(zzbuqVar);
        }
        zzbsd.zzI(iterable, zzrVar.zzo);
    }

    public static /* synthetic */ void zzu(zzr zzrVar, zzbsk zzbskVar) {
        zzbskVar.getClass();
        zzrVar.zzp = zzbskVar;
        zzrVar.zzf |= 128;
    }

    public static /* synthetic */ void zzv(zzr zzrVar, zzbsk zzbskVar) {
        zzbskVar.getClass();
        zzrVar.zzq = zzbskVar;
        zzrVar.zzf |= 256;
    }

    public static /* synthetic */ void zzw(zzr zzrVar, String str) {
        str.getClass();
        zzrVar.zzf |= 2;
        zzrVar.zzh = str;
    }

    public static /* synthetic */ void zzx(zzr zzrVar, String str) {
        zzrVar.zzf |= 4;
        zzrVar.zzi = str;
    }

    private final void zzy() {
        zzbuq zzbuqVar = this.zzl;
        if (zzbuqVar.zzc()) {
            return;
        }
        this.zzl = zzbui.zzX(zzbuqVar);
    }

    public final int zza() {
        return this.zzl.size();
    }

    @Override // com.google.android.gms.internal.mlkit_vision_digital_ink.zzbui
    public final Object zzb(int i, Object obj, Object obj2) {
        int i2 = i - 1;
        if (i2 == 0) {
            return (byte) 1;
        }
        if (i2 == 2) {
            return zzbui.zzaa(zza, "\u0001\f\u0000\u0001\u0001\u000e\f\u0000\u0002\u0000\u0001ဈ\u0000\u0002\u001b\u0003ဈ\u0001\u0004င\u0003\u0005ဌ\u0004\u0006ဈ\u0002\bဂ\u0005\n\u001a\u000bဉ\u0007\fဈ\u0006\rဉ\b\u000eဉ\t", new Object[]{"zzf", "zzg", "zzl", zzm.class, "zzh", "zzj", "zzk", zzq.zzc(), "zzi", "zzm", "zzo", "zzp", "zzn", "zzq", "zzr"});
        }
        if (i2 == 3) {
            return new zzr();
        }
        zzk zzkVar = null;
        if (i2 == 4) {
            return new zzn(zzkVar);
        }
        if (i2 == 5) {
            return zza;
        }
        if (i2 != 6) {
            return null;
        }
        zzbwc zzbwcVar = zze;
        if (zzbwcVar == null) {
            synchronized (zzr.class) {
                zzbwcVar = zze;
                if (zzbwcVar == null) {
                    zzbwcVar = new zzbuc(zza);
                    zze = zzbwcVar;
                }
            }
        }
        return zzbwcVar;
    }

    public final int zzc() {
        return this.zzj;
    }

    public final long zzd() {
        return this.zzm;
    }

    public final zzm zze(int i) {
        return (zzm) this.zzl.get(i);
    }

    public final zzq zzg() {
        zzq zzb = zzq.zzb(this.zzk);
        return zzb == null ? zzq.UNSPECIFIED : zzb;
    }

    public final String zzi() {
        return this.zzg;
    }

    public final String zzj() {
        return this.zzh;
    }

    public final String zzk() {
        return this.zzn;
    }

    public final List zzl() {
        return this.zzl;
    }
}
