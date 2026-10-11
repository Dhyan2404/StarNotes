package com.google.android.gms.internal.mlkit_vision_digital_ink;

/* loaded from: classes5.dex */
public final class zzee extends zzbui implements zzbvv {
    private static final zzee zza;
    private static volatile zzbwc zze;
    private int zzf;
    private int zzh;
    private boolean zzi;
    private long zzj;
    private int zzl;
    private String zzg = "";
    private String zzk = "";

    static {
        zzee zzeeVar = new zzee();
        zza = zzeeVar;
        zzbui.zzad(zzee.class, zzeeVar);
    }

    private zzee() {
    }

    public static zzed zze() {
        return (zzed) zza.zzN();
    }

    public static zzee zzg() {
        return zza;
    }

    public static zzbwc zzh() {
        return (zzbwc) zza.zzb(7, null, null);
    }

    public static /* synthetic */ void zzk(zzee zzeeVar, String str) {
        zzeeVar.zzf |= 1;
        zzeeVar.zzg = str;
    }

    public static /* synthetic */ void zzl(zzee zzeeVar, zzds zzdsVar) {
        zzeeVar.zzh = zzdsVar.zza();
        zzeeVar.zzf |= 2;
    }

    public static /* synthetic */ void zzm(zzee zzeeVar, boolean z) {
        zzeeVar.zzf |= 4;
        zzeeVar.zzi = true;
    }

    public static /* synthetic */ void zzn(zzee zzeeVar, long j) {
        zzeeVar.zzf |= 8;
        zzeeVar.zzj = j;
    }

    public static /* synthetic */ void zzo(zzee zzeeVar, String str) {
        str.getClass();
        zzeeVar.zzf |= 16;
        zzeeVar.zzk = str;
    }

    public static /* synthetic */ void zzp(zzee zzeeVar, int i) {
        zzeeVar.zzf |= 32;
        zzeeVar.zzl = i;
    }

    public final int zza() {
        return this.zzl;
    }

    @Override // com.google.android.gms.internal.mlkit_vision_digital_ink.zzbui
    public final Object zzb(int i, Object obj, Object obj2) {
        int i2 = i - 1;
        if (i2 == 0) {
            return (byte) 1;
        }
        if (i2 == 2) {
            return zzbui.zzaa(zza, "\u0001\u0006\u0000\u0001\u0004\u000b\u0006\u0000\u0000\u0000\u0004ဈ\u0000\u0005ဌ\u0001\bဇ\u0002\tဂ\u0003\nဈ\u0004\u000bင\u0005", new Object[]{"zzf", "zzg", "zzh", zzds.zzc(), "zzi", "zzj", "zzk", "zzl"});
        }
        if (i2 == 3) {
            return new zzee();
        }
        zzbx zzbxVar = null;
        if (i2 == 4) {
            return new zzed(zzbxVar);
        }
        if (i2 == 5) {
            return zza;
        }
        if (i2 != 6) {
            return null;
        }
        zzbwc zzbwcVar = zze;
        if (zzbwcVar == null) {
            synchronized (zzee.class) {
                zzbwcVar = zze;
                if (zzbwcVar == null) {
                    zzbwcVar = new zzbuc(zza);
                    zze = zzbwcVar;
                }
            }
        }
        return zzbwcVar;
    }

    public final long zzc() {
        return this.zzj;
    }

    public final zzds zzd() {
        zzds zzb = zzds.zzb(this.zzh);
        return zzb == null ? zzds.NONE : zzb;
    }

    public final String zzi() {
        return this.zzk;
    }

    public final String zzj() {
        return this.zzg;
    }

    public final boolean zzq() {
        return this.zzi;
    }
}
