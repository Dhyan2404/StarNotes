package com.google.android.gms.internal.mlkit_vision_digital_ink;

/* loaded from: classes5.dex */
public final class zzbgq extends zzbui implements zzbvv {
    private static final zzbuo zza = new zzbgl();
    private static final zzbuo zze = new zzbgm();
    private static final zzbuo zzf = new zzbgn();
    private static final zzbgq zzg;
    private static volatile zzbwc zzh;
    private int zzi;
    private long zzj;
    private zzbun zzk = zzbui.zzV();
    private zzbun zzl = zzbui.zzV();
    private zzbun zzm = zzbui.zzV();
    private int zzn;

    static {
        zzbgq zzbgqVar = new zzbgq();
        zzg = zzbgqVar;
        zzbui.zzad(zzbgq.class, zzbgqVar);
    }

    private zzbgq() {
    }

    @Override // com.google.android.gms.internal.mlkit_vision_digital_ink.zzbui
    public final Object zzb(int i, Object obj, Object obj2) {
        int i2 = i - 1;
        if (i2 == 0) {
            return (byte) 1;
        }
        if (i2 == 2) {
            zzbum zzbumVar = zzbgp.zza;
            return zzbui.zzaa(zzg, "\u0001\u0005\u0000\u0001\u0001\u0005\u0005\u0000\u0003\u0000\u0001ဃ\u0000\u0002\u001e\u0003\u001e\u0004\u001e\u0005င\u0001", new Object[]{"zzi", "zzj", "zzk", zzbumVar, "zzl", zzbumVar, "zzm", zzbumVar, "zzn"});
        }
        if (i2 == 3) {
            return new zzbgq();
        }
        if (i2 == 4) {
            return new zzbgo(null);
        }
        if (i2 == 5) {
            return zzg;
        }
        if (i2 != 6) {
            return null;
        }
        zzbwc zzbwcVar = zzh;
        if (zzbwcVar == null) {
            synchronized (zzbgq.class) {
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
