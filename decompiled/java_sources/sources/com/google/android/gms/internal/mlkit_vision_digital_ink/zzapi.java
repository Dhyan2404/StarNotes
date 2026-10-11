package com.google.android.gms.internal.mlkit_vision_digital_ink;

/* loaded from: classes5.dex */
public final class zzapi extends zzbui implements zzbvv {
    private static final zzapi zza;
    private static volatile zzbwc zze;
    private int zzf;
    private int zzg;
    private int zzi;
    private boolean zzk;
    private long zzl;
    private boolean zzm;
    private long zzn;
    private String zzh = "";
    private String zzj = "";
    private String zzo = "";

    static {
        zzapi zzapiVar = new zzapi();
        zza = zzapiVar;
        zzbui.zzad(zzapi.class, zzapiVar);
    }

    private zzapi() {
    }

    public static zzaph zza() {
        return (zzaph) zza.zzN();
    }

    public static /* synthetic */ void zzd(zzapi zzapiVar, String str) {
        str.getClass();
        zzapiVar.zzf |= 2;
        zzapiVar.zzh = str;
    }

    public static /* synthetic */ void zze(zzapi zzapiVar, int i) {
        zzapiVar.zzf |= 4;
        zzapiVar.zzi = i;
    }

    public static /* synthetic */ void zzf(zzapi zzapiVar, String str) {
        str.getClass();
        zzapiVar.zzf |= 8;
        zzapiVar.zzj = str;
    }

    public static /* synthetic */ void zzg(zzapi zzapiVar, boolean z) {
        zzapiVar.zzf |= 16;
        zzapiVar.zzk = true;
    }

    public static /* synthetic */ void zzh(zzapi zzapiVar, long j) {
        zzapiVar.zzf |= 32;
        zzapiVar.zzl = j;
    }

    public static /* synthetic */ void zzi(zzapi zzapiVar, long j) {
        zzapiVar.zzf |= 128;
        zzapiVar.zzn = j;
    }

    public static /* synthetic */ void zzj(zzapi zzapiVar, String str) {
        str.getClass();
        zzapiVar.zzf |= 256;
        zzapiVar.zzo = str;
    }

    public static /* synthetic */ void zzk(zzapi zzapiVar, int i) {
        if (i == 1) {
            throw new IllegalArgumentException("Can't get the number of an unknown enum value.");
        }
        zzapiVar.zzg = i - 2;
        zzapiVar.zzf |= 1;
    }

    @Override // com.google.android.gms.internal.mlkit_vision_digital_ink.zzbui
    public final Object zzb(int i, Object obj, Object obj2) {
        int i2 = i - 1;
        if (i2 == 0) {
            return (byte) 1;
        }
        if (i2 == 2) {
            return zzbui.zzaa(zza, "\u0001\t\u0000\u0001\u0001\t\t\u0000\u0000\u0000\u0001ဌ\u0000\u0002ဈ\u0001\u0003င\u0002\u0004ဈ\u0003\u0005ဇ\u0004\u0006ဂ\u0005\u0007ဇ\u0006\bဂ\u0007\tဈ\b", new Object[]{"zzf", "zzg", zzapn.zza, "zzh", "zzi", "zzj", "zzk", "zzl", "zzm", "zzn", "zzo"});
        }
        if (i2 == 3) {
            return new zzapi();
        }
        if (i2 == 4) {
            return new zzaph(null);
        }
        if (i2 == 5) {
            return zza;
        }
        if (i2 != 6) {
            return null;
        }
        zzbwc zzbwcVar = zze;
        if (zzbwcVar == null) {
            synchronized (zzapi.class) {
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
