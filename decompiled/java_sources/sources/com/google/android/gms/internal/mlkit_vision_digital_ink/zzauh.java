package com.google.android.gms.internal.mlkit_vision_digital_ink;

/* loaded from: classes5.dex */
public final class zzauh extends zzbui implements zzbvv {
    private static final zzbuo zza = new zzaub();
    private static final zzbuo zze = new zzauc();
    private static final zzbuo zzf = new zzaud();
    private static final zzauh zzg;
    private static volatile zzbwc zzh;
    private int zzi;
    private long zzj;
    private zzbun zzk = zzbui.zzV();
    private zzbun zzl = zzbui.zzV();
    private zzbun zzm = zzbui.zzV();
    private String zzn = "";
    private int zzo;
    private int zzp;

    static {
        zzauh zzauhVar = new zzauh();
        zzg = zzauhVar;
        zzbui.zzad(zzauh.class, zzauhVar);
    }

    private zzauh() {
    }

    @Override // com.google.android.gms.internal.mlkit_vision_digital_ink.zzbui
    public final Object zzb(int i, Object obj, Object obj2) {
        int i2 = i - 1;
        if (i2 == 0) {
            return (byte) 1;
        }
        if (i2 == 2) {
            zzbum zzbumVar = zzaug.zza;
            return zzbui.zzaa(zzg, "\u0001\u0007\u0000\u0001\u0001\u0007\u0007\u0000\u0003\u0000\u0001ဃ\u0000\u0002\u001e\u0003\u001e\u0004\u001e\u0005ဈ\u0001\u0006ဌ\u0002\u0007င\u0003", new Object[]{"zzi", "zzj", "zzk", zzbumVar, "zzl", zzbumVar, "zzm", zzbumVar, "zzn", "zzo", zzauf.zza, "zzp"});
        }
        if (i2 == 3) {
            return new zzauh();
        }
        if (i2 == 4) {
            return new zzaue(null);
        }
        if (i2 == 5) {
            return zzg;
        }
        if (i2 != 6) {
            return null;
        }
        zzbwc zzbwcVar = zzh;
        if (zzbwcVar == null) {
            synchronized (zzauh.class) {
                zzbwcVar = zzh;
                if (zzbwcVar == null) {
                    zzbwcVar = new zzbuc(zzg);
                    zzh = zzbwcVar;
                }
            }
        }
        return zzbwcVar;
    }
}
