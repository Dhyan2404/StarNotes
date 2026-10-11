package com.google.android.gms.internal.mlkit_vision_digital_ink;

/* loaded from: classes5.dex */
public final class zzatz extends zzbui implements zzbvv {
    public static final zzbug zza;
    private static final zzatz zze;
    private static volatile zzbwc zzf;
    private int zzg;
    private int zzh;
    private zzatv zzi;
    private zzatp zzj;
    private zzatn zzk;
    private zzatr zzl;
    private zzatt zzm;
    private zzate zzn;
    private long zzo;
    private zzatj zzp;
    private zzath zzq;
    private zzbun zzr = zzbui.zzV();

    static {
        zzatz zzatzVar = new zzatz();
        zze = zzatzVar;
        zzbui.zzad(zzatz.class, zzatzVar);
        zza = zzbui.zzP(zzazz.zzd(), zzatzVar, zzatzVar, null, 43, zzbxs.zzk, zzatz.class);
    }

    private zzatz() {
    }

    public static zzatf zza() {
        return (zzatf) zze.zzN();
    }

    public static /* synthetic */ void zze(zzatz zzatzVar, zzaty zzatyVar) {
        zzatzVar.zzh = zzatyVar.zza();
        zzatzVar.zzg |= 1;
    }

    public static /* synthetic */ void zzf(zzatz zzatzVar, zzatv zzatvVar) {
        zzatvVar.getClass();
        zzatzVar.zzi = zzatvVar;
        zzatzVar.zzg |= 2;
    }

    public static /* synthetic */ void zzg(zzatz zzatzVar, zzatp zzatpVar) {
        zzatpVar.getClass();
        zzatzVar.zzj = zzatpVar;
        zzatzVar.zzg |= 4;
    }

    public static /* synthetic */ void zzh(zzatz zzatzVar, zzatn zzatnVar) {
        zzatnVar.getClass();
        zzatzVar.zzk = zzatnVar;
        zzatzVar.zzg |= 8;
    }

    public static /* synthetic */ void zzi(zzatz zzatzVar, zzatr zzatrVar) {
        zzatrVar.getClass();
        zzatzVar.zzl = zzatrVar;
        zzatzVar.zzg |= 16;
    }

    public static /* synthetic */ void zzj(zzatz zzatzVar, zzate zzateVar) {
        zzateVar.getClass();
        zzatzVar.zzn = zzateVar;
        zzatzVar.zzg |= 64;
    }

    public static /* synthetic */ void zzk(zzatz zzatzVar) {
        zzatzVar.zzn = null;
        zzatzVar.zzg &= -65;
    }

    public static /* synthetic */ void zzl(zzatz zzatzVar, long j) {
        zzatzVar.zzg |= 128;
        zzatzVar.zzo = j;
    }

    public static /* synthetic */ void zzm(zzatz zzatzVar, zzatj zzatjVar) {
        zzatjVar.getClass();
        zzatzVar.zzp = zzatjVar;
        zzatzVar.zzg |= 256;
    }

    public static /* synthetic */ void zzn(zzatz zzatzVar, Iterable iterable) {
        zzbun zzbunVar = zzatzVar.zzr;
        if (!zzbunVar.zzc()) {
            int size = zzbunVar.size();
            zzatzVar.zzr = zzbunVar.zzd(size == 0 ? 10 : size + size);
        }
        zzbsd.zzI(iterable, zzatzVar.zzr);
    }

    @Override // com.google.android.gms.internal.mlkit_vision_digital_ink.zzbui
    public final Object zzb(int i, Object obj, Object obj2) {
        int i2 = i - 1;
        if (i2 == 0) {
            return (byte) 1;
        }
        if (i2 == 2) {
            return zzbui.zzaa(zze, "\u0001\u000b\u0000\u0001\u0001\u000b\u000b\u0000\u0001\u0000\u0001ဌ\u0000\u0002ဉ\u0001\u0003ဉ\u0002\u0004ဉ\u0003\u0005ဃ\u0007\u0006ဉ\u0006\u0007ဉ\u0004\bဉ\u0005\tဉ\b\nဉ\t\u000b\u0016", new Object[]{"zzg", "zzh", zzaty.zzc(), "zzi", "zzj", "zzk", "zzo", "zzn", "zzl", "zzm", "zzp", "zzq", "zzr"});
        }
        if (i2 == 3) {
            return new zzatz();
        }
        if (i2 == 4) {
            return new zzatf(null);
        }
        if (i2 == 5) {
            return zze;
        }
        if (i2 != 6) {
            return null;
        }
        zzbwc zzbwcVar = zzf;
        if (zzbwcVar == null) {
            synchronized (zzatz.class) {
                zzbwcVar = zzf;
                if (zzbwcVar == null) {
                    zzbwcVar = new zzbuc(zze);
                    zzf = zzbwcVar;
                }
            }
        }
        return zzbwcVar;
    }

    public final zzaty zzc() {
        zzaty zzb = zzaty.zzb(this.zzh);
        return zzb == null ? zzaty.UNKNOWN_ERROR : zzb;
    }
}
