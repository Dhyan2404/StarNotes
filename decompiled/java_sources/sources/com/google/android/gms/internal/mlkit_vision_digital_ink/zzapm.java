package com.google.android.gms.internal.mlkit_vision_digital_ink;

/* loaded from: classes5.dex */
public final class zzapm extends zzbui implements zzbvv {
    private static final zzapm zza;
    private static volatile zzbwc zze;
    private int zzf;
    private int zzg;
    private int zzh;
    private zzbuq zzi = zzbui.zzW();
    private long zzj;

    static {
        zzapm zzapmVar = new zzapm();
        zza = zzapmVar;
        zzbui.zzad(zzapm.class, zzapmVar);
    }

    private zzapm() {
    }

    public static zzapl zza() {
        return (zzapl) zza.zzN();
    }

    public static /* synthetic */ void zzd(zzapm zzapmVar, zzapg zzapgVar) {
        zzapgVar.getClass();
        zzbuq zzbuqVar = zzapmVar.zzi;
        if (!zzbuqVar.zzc()) {
            zzapmVar.zzi = zzbui.zzX(zzbuqVar);
        }
        zzapmVar.zzi.add(zzapgVar);
    }

    public static /* synthetic */ void zze(zzapm zzapmVar, long j) {
        zzapmVar.zzf |= 4;
        zzapmVar.zzj = j;
    }

    public static /* synthetic */ void zzf(zzapm zzapmVar, int i) {
        zzapmVar.zzg = 2;
        zzapmVar.zzf |= 1;
    }

    public static /* synthetic */ void zzg(zzapm zzapmVar, int i) {
        zzapmVar.zzh = i - 2;
        zzapmVar.zzf |= 2;
    }

    @Override // com.google.android.gms.internal.mlkit_vision_digital_ink.zzbui
    public final Object zzb(int i, Object obj, Object obj2) {
        int i2 = i - 1;
        if (i2 == 0) {
            return (byte) 1;
        }
        if (i2 == 2) {
            return zzbui.zzaa(zza, "\u0001\u0004\u0000\u0001\u0001\u0004\u0004\u0000\u0001\u0000\u0001ဌ\u0000\u0002ဌ\u0001\u0003\u001b\u0004ဂ\u0002", new Object[]{"zzf", "zzg", zzapo.zza, "zzh", zzapp.zza, "zzi", zzapg.class, "zzj"});
        }
        if (i2 == 3) {
            return new zzapm();
        }
        if (i2 == 4) {
            return new zzapl(null);
        }
        if (i2 == 5) {
            return zza;
        }
        if (i2 != 6) {
            return null;
        }
        zzbwc zzbwcVar = zze;
        if (zzbwcVar == null) {
            synchronized (zzapm.class) {
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
