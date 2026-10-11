package com.google.android.gms.internal.mlkit_vision_digital_ink;

import java.util.List;

/* loaded from: classes5.dex */
public final class zzck extends zzbui implements zzbvv {
    private static final zzck zza;
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
        zzck zzckVar = new zzck();
        zza = zzckVar;
        zzbui.zzad(zzck.class, zzckVar);
    }

    private zzck() {
    }

    public static /* synthetic */ void zzq(zzck zzckVar, String str) {
        zzckVar.zzf |= 16;
        zzckVar.zzk = str;
    }

    public static /* synthetic */ void zzr(zzck zzckVar, String str) {
        zzckVar.zzf |= 64;
        zzckVar.zzm = str;
    }

    public final int zza() {
        return this.zzi;
    }

    @Override // com.google.android.gms.internal.mlkit_vision_digital_ink.zzbui
    public final Object zzb(int i, Object obj, Object obj2) {
        int i2 = i - 1;
        if (i2 == 0) {
            return (byte) 1;
        }
        if (i2 == 2) {
            return zzbui.zzaa(zza, "\u0001\u000f\u0000\u0001\u0002\u0015\u000f\u0000\u0001\u0000\u0002ဈ\u0001\u0004င\u0002\u0005ဈ\u0004\u0007ဈ\u0000\u000bဉ\u0005\fဉ\b\r\u001b\u000eဈ\u0006\u000fဌ\u0003\u0010င\u0007\u0011ဌ\t\u0012ဌ\n\u0013ဈ\u000b\u0014ဈ\f\u0015ဉ\r", new Object[]{"zzf", "zzh", "zzi", "zzk", "zzg", "zzl", "zzo", "zzp", zzcw.class, "zzm", "zzj", zzci.zza, "zzn", "zzq", zzce.zza, "zzr", zzcb.zza, "zzs", "zzt", "zzu"});
        }
        if (i2 == 3) {
            return new zzck();
        }
        zzbx zzbxVar = null;
        if (i2 == 4) {
            return new zzcg(zzbxVar);
        }
        if (i2 == 5) {
            return zza;
        }
        if (i2 != 6) {
            return null;
        }
        zzbwc zzbwcVar = zze;
        if (zzbwcVar == null) {
            synchronized (zzck.class) {
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
        return this.zzp.size();
    }

    public final int zzd() {
        return this.zzn;
    }

    public final zzcw zzf(int i) {
        return (zzcw) this.zzp.get(i);
    }

    public final zzbsk zzg() {
        zzbsk zzbskVar = this.zzu;
        return zzbskVar == null ? zzbsk.zze() : zzbskVar;
    }

    public final zzcap zzh() {
        zzcap zzcapVar = this.zzl;
        return zzcapVar == null ? zzcap.zzi() : zzcapVar;
    }

    public final zzcap zzi() {
        zzcap zzcapVar = this.zzo;
        return zzcapVar == null ? zzcap.zzi() : zzcapVar;
    }

    public final String zzj() {
        return this.zzs;
    }

    public final String zzk() {
        return this.zzk;
    }

    public final String zzl() {
        return this.zzm;
    }

    public final String zzm() {
        return this.zzg;
    }

    public final String zzn() {
        return this.zzt;
    }

    public final String zzo() {
        return this.zzh;
    }

    public final List zzp() {
        return this.zzp;
    }

    public final boolean zzs() {
        return (this.zzf & 16) != 0;
    }

    public final boolean zzt() {
        return (this.zzf & 8192) != 0;
    }

    public final boolean zzu() {
        return (this.zzf & 32) != 0;
    }

    public final boolean zzv() {
        return (this.zzf & 64) != 0;
    }

    public final boolean zzw() {
        return (this.zzf & 256) != 0;
    }

    public final int zzx() {
        int zza2 = zzcc.zza(this.zzr);
        if (zza2 == 0) {
            return 1;
        }
        return zza2;
    }

    public final int zzy() {
        int zza2 = zzcf.zza(this.zzq);
        if (zza2 == 0) {
            return 1;
        }
        return zza2;
    }

    public final int zzz() {
        int zza2 = zzcj.zza(this.zzj);
        if (zza2 == 0) {
            return 1;
        }
        return zza2;
    }
}
