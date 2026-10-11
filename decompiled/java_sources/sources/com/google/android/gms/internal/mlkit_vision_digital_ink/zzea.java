package com.google.android.gms.internal.mlkit_vision_digital_ink;

/* loaded from: classes5.dex */
public final class zzea extends zzbui implements zzbvv {
    private static final zzea zza;
    private static volatile zzbwc zze;
    private int zzf;
    private int zzh;
    private int zzj;
    private zzcap zzk;
    private String zzg = "";
    private String zzi = "";

    static {
        zzea zzeaVar = new zzea();
        zza = zzeaVar;
        zzbui.zzad(zzea.class, zzeaVar);
    }

    private zzea() {
    }

    public static zzdz zzc() {
        return (zzdz) zza.zzN();
    }

    public static /* synthetic */ void zzh(zzea zzeaVar, String str) {
        str.getClass();
        zzeaVar.zzf |= 1;
        zzeaVar.zzg = str;
    }

    public static /* synthetic */ void zzi(zzea zzeaVar, int i) {
        zzeaVar.zzf |= 2;
        zzeaVar.zzh = i;
    }

    public static /* synthetic */ void zzj(zzea zzeaVar, String str) {
        str.getClass();
        zzeaVar.zzf |= 4;
        zzeaVar.zzi = str;
    }

    public static /* synthetic */ void zzk(zzea zzeaVar, zzcap zzcapVar) {
        zzcapVar.getClass();
        zzeaVar.zzk = zzcapVar;
        zzeaVar.zzf |= 16;
    }

    public static /* synthetic */ void zzn(zzea zzeaVar, int i) {
        zzeaVar.zzj = i - 1;
        zzeaVar.zzf |= 8;
    }

    @Deprecated
    public final int zza() {
        return this.zzh;
    }

    @Override // com.google.android.gms.internal.mlkit_vision_digital_ink.zzbui
    public final Object zzb(int i, Object obj, Object obj2) {
        int i2 = i - 1;
        if (i2 == 0) {
            return (byte) 1;
        }
        if (i2 == 2) {
            return zzbui.zzaa(zza, "\u0001\u0005\u0000\u0001\u0001\u0005\u0005\u0000\u0000\u0000\u0001ဈ\u0000\u0002င\u0001\u0003ဈ\u0002\u0004ဌ\u0003\u0005ဉ\u0004", new Object[]{"zzf", "zzg", "zzh", "zzi", "zzj", zzco.zza, "zzk"});
        }
        if (i2 == 3) {
            return new zzea();
        }
        zzbx zzbxVar = null;
        if (i2 == 4) {
            return new zzdz(zzbxVar);
        }
        if (i2 == 5) {
            return zza;
        }
        if (i2 != 6) {
            return null;
        }
        zzbwc zzbwcVar = zze;
        if (zzbwcVar == null) {
            synchronized (zzea.class) {
                zzbwcVar = zze;
                if (zzbwcVar == null) {
                    zzbwcVar = new zzbuc(zza);
                    zze = zzbwcVar;
                }
            }
        }
        return zzbwcVar;
    }

    @Deprecated
    public final zzcap zze() {
        zzcap zzcapVar = this.zzk;
        return zzcapVar == null ? zzcap.zzi() : zzcapVar;
    }

    public final String zzf() {
        return this.zzi;
    }

    @Deprecated
    public final String zzg() {
        return this.zzg;
    }

    @Deprecated
    public final boolean zzl() {
        return (this.zzf & 16) != 0;
    }

    public final int zzm() {
        int zza2 = zzcp.zza(this.zzj);
        if (zza2 == 0) {
            return 1;
        }
        return zza2;
    }
}
