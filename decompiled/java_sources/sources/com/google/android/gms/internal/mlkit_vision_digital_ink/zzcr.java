package com.google.android.gms.internal.mlkit_vision_digital_ink;

import java.util.List;

/* loaded from: classes5.dex */
public final class zzcr extends zzbui implements zzbvv {
    private static final zzcr zza;
    private static volatile zzbwc zze;
    private int zzf;
    private zzcm zzg;
    private int zzj;
    private zzbsk zzk;
    private zzbsk zzl;
    private int zzm;
    private int zzn;
    private long zzo;
    private long zzp;
    private zzdh zzq;
    private boolean zzr;
    private int zzt;
    private int zzv;
    private long zzw;
    private zzcba zzz;
    private String zzh = "";
    private String zzi = "";
    private zzbuq zzs = zzbui.zzW();
    private zzbuq zzu = zzbui.zzW();
    private String zzx = "";
    private zzbuq zzy = zzbui.zzW();
    private String zzA = "";

    static {
        zzcr zzcrVar = new zzcr();
        zza = zzcrVar;
        zzbui.zzad(zzcr.class, zzcrVar);
    }

    private zzcr() {
    }

    public static /* synthetic */ void zzA(zzcr zzcrVar, String str) {
        str.getClass();
        zzcrVar.zzf |= 131072;
        zzcrVar.zzA = str;
    }

    public static /* synthetic */ void zzB(zzcr zzcrVar, zzcm zzcmVar) {
        zzcmVar.getClass();
        zzcrVar.zzg = zzcmVar;
        zzcrVar.zzf |= 1;
    }

    public static zzcr zzk() {
        return zza;
    }

    public static zzcr zzl(byte[] bArr, zzbtr zzbtrVar) throws zzbut {
        return (zzcr) zzbui.zzT(zza, bArr, zzbtrVar);
    }

    public static zzbwc zzp() {
        return (zzbwc) zza.zzb(7, null, null);
    }

    public static /* synthetic */ void zzy(zzcr zzcrVar, Iterable iterable) {
        zzbuq zzbuqVar = zzcrVar.zzs;
        if (!zzbuqVar.zzc()) {
            zzcrVar.zzs = zzbui.zzX(zzbuqVar);
        }
        zzbsd.zzI(iterable, zzcrVar.zzs);
    }

    public final boolean zzC() {
        return this.zzr;
    }

    public final boolean zzD() {
        return (this.zzf & 32) != 0;
    }

    public final int zzE() {
        int zza2 = zzcp.zza(this.zzn);
        if (zza2 == 0) {
            return 1;
        }
        return zza2;
    }

    public final int zzF() {
        int zzb = zzws.zzb(this.zzv);
        if (zzb == 0) {
            return 1;
        }
        return zzb;
    }

    public final int zza() {
        return this.zzs.size();
    }

    @Override // com.google.android.gms.internal.mlkit_vision_digital_ink.zzbui
    public final Object zzb(int i, Object obj, Object obj2) {
        int i2 = i - 1;
        if (i2 == 0) {
            return (byte) 1;
        }
        if (i2 == 2) {
            return zzbui.zzaa(zza, "\u0001\u0015\u0000\u0001\u0001年皤\u0015\u0000\u0003\u0000\u0001ဈ\u0001\u0002\u001b\u0003ဂ\b\u0006ဈ\u0002\nင\u0003\u000bဂ\t\fဌ\u0007\rဉ\n\u000eဇ\u000b\u0010င\f\u0011\u001b\u0013ဌ\r\u0014ဉ\u0004\u0015ဌ\u0006\u0017ဂ\u000e\u0019\u001a\u001aဈ\u000f\u001bဉ\u0005\u001cဉ\u0010Ϩဈ\u0011年皤ဉ\u0000", new Object[]{"zzf", "zzh", "zzs", zzck.class, "zzo", "zzi", "zzj", "zzp", "zzn", zzco.zza, "zzq", "zzr", "zzt", "zzu", zzdj.class, "zzv", zzws.zza(), "zzk", "zzm", zzbp.zza, "zzw", "zzy", "zzx", "zzl", "zzz", "zzA", "zzg"});
        }
        if (i2 == 3) {
            return new zzcr();
        }
        zzbx zzbxVar = null;
        if (i2 == 4) {
            return new zzcq(zzbxVar);
        }
        if (i2 == 5) {
            return zza;
        }
        if (i2 != 6) {
            return null;
        }
        zzbwc zzbwcVar = zze;
        if (zzbwcVar == null) {
            synchronized (zzcr.class) {
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

    public final int zzd() {
        return this.zzt;
    }

    public final long zze() {
        return this.zzw;
    }

    public final long zzf() {
        return this.zzp;
    }

    public final long zzg() {
        return this.zzo;
    }

    public final zzck zzh(int i) {
        return (zzck) this.zzs.get(i);
    }

    public final zzcm zzi() {
        zzcm zzcmVar = this.zzg;
        return zzcmVar == null ? zzcm.zzh() : zzcmVar;
    }

    public final zzdh zzm() {
        zzdh zzdhVar = this.zzq;
        return zzdhVar == null ? zzdh.zzd() : zzdhVar;
    }

    public final zzbsk zzn() {
        zzbsk zzbskVar = this.zzl;
        return zzbskVar == null ? zzbsk.zze() : zzbskVar;
    }

    @Deprecated
    public final zzbsk zzo() {
        zzbsk zzbskVar = this.zzk;
        return zzbskVar == null ? zzbsk.zze() : zzbskVar;
    }

    public final String zzq() {
        return this.zzh;
    }

    public final String zzr() {
        return this.zzA;
    }

    public final String zzs() {
        return this.zzi;
    }

    public final String zzt() {
        return this.zzx;
    }

    public final List zzu() {
        return this.zzs;
    }

    public final List zzv() {
        return this.zzu;
    }

    public final List zzw() {
        return this.zzy;
    }

    public final zzcba zzx() {
        zzcba zzcbaVar = this.zzz;
        return zzcbaVar == null ? zzcba.zze() : zzcbaVar;
    }
}
