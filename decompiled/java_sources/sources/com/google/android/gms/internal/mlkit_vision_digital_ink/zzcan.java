package com.google.android.gms.internal.mlkit_vision_digital_ink;

/* loaded from: classes5.dex */
public final class zzcan extends zzbui implements zzbvv {
    private static final zzcan zza;
    private static volatile zzbwc zze;
    private int zzf;
    private int zzg = 0;
    private Object zzh;

    static {
        zzcan zzcanVar = new zzcan();
        zza = zzcanVar;
        zzbui.zzad(zzcan.class, zzcanVar);
    }

    private zzcan() {
    }

    public static zzcam zzg() {
        return (zzcam) zza.zzN();
    }

    public static /* synthetic */ void zzj(zzcan zzcanVar, zzcad zzcadVar) {
        zzcadVar.getClass();
        zzcanVar.zzh = zzcadVar;
        zzcanVar.zzg = 1;
    }

    public static /* synthetic */ void zzk(zzcan zzcanVar, zzcaj zzcajVar) {
        zzcajVar.getClass();
        zzcanVar.zzh = zzcajVar;
        zzcanVar.zzg = 2;
    }

    public static /* synthetic */ void zzl(zzcan zzcanVar, zzcal zzcalVar) {
        zzcalVar.getClass();
        zzcanVar.zzh = zzcalVar;
        zzcanVar.zzg = 3;
    }

    public static /* synthetic */ void zzm(zzcan zzcanVar, zzcar zzcarVar) {
        zzcarVar.getClass();
        zzcanVar.zzh = zzcarVar;
        zzcanVar.zzg = 4;
    }

    @Override // com.google.android.gms.internal.mlkit_vision_digital_ink.zzbui
    public final Object zzb(int i, Object obj, Object obj2) {
        int i2 = i - 1;
        if (i2 == 0) {
            return (byte) 1;
        }
        if (i2 == 2) {
            return zzbui.zzaa(zza, "\u0001\u0005\u0001\u0001\u0001\u0005\u0005\u0000\u0000\u0000\u0001ြ\u0000\u0002ြ\u0000\u0003ြ\u0000\u0004ြ\u0000\u0005ြ\u0000", new Object[]{"zzh", "zzg", "zzf", zzcad.class, zzcaj.class, zzcal.class, zzcar.class, zzcah.class});
        }
        if (i2 == 3) {
            return new zzcan();
        }
        zzcab zzcabVar = null;
        if (i2 == 4) {
            return new zzcam(zzcabVar);
        }
        if (i2 == 5) {
            return zza;
        }
        if (i2 != 6) {
            return null;
        }
        zzbwc zzbwcVar = zze;
        if (zzbwcVar == null) {
            synchronized (zzcan.class) {
                zzbwcVar = zze;
                if (zzbwcVar == null) {
                    zzbwcVar = new zzbuc(zza);
                    zze = zzbwcVar;
                }
            }
        }
        return zzbwcVar;
    }

    public final zzcah zzc() {
        return this.zzg == 5 ? (zzcah) this.zzh : zzcah.zzf();
    }

    public final zzcaj zze() {
        return this.zzg == 2 ? (zzcaj) this.zzh : zzcaj.zze();
    }

    public final zzcal zzf() {
        return this.zzg == 3 ? (zzcal) this.zzh : zzcal.zze();
    }

    public final zzcar zzi() {
        return this.zzg == 4 ? (zzcar) this.zzh : zzcar.zzf();
    }

    public final boolean zzn() {
        return this.zzg == 1;
    }

    public final boolean zzo() {
        return this.zzg == 4;
    }

    public final int zzp() {
        int i = this.zzg;
        if (i == 0) {
            return 6;
        }
        int i2 = 1;
        if (i != 1) {
            i2 = 2;
            if (i != 2) {
                i2 = 3;
                if (i != 3) {
                    i2 = 4;
                    if (i != 4) {
                        i2 = 5;
                        if (i != 5) {
                            return 0;
                        }
                    }
                }
            }
        }
        return i2;
    }
}
