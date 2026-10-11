package com.google.android.gms.internal.mlkit_vision_digital_ink;

/* loaded from: classes5.dex */
public final class zzate extends zzbui implements zzbvv {
    private static final zzate zza;
    private static volatile zzbwc zze;
    private int zzf;
    private zzbuq zzg = zzbui.zzW();
    private int zzh;

    static {
        zzate zzateVar = new zzate();
        zza = zzateVar;
        zzbui.zzad(zzate.class, zzateVar);
    }

    private zzate() {
    }

    public static zzatd zza() {
        return (zzatd) zza.zzN();
    }

    public static /* synthetic */ void zzd(zzate zzateVar, Iterable iterable) {
        zzbuq zzbuqVar = zzateVar.zzg;
        if (!zzbuqVar.zzc()) {
            zzateVar.zzg = zzbui.zzX(zzbuqVar);
        }
        zzbsd.zzI(iterable, zzateVar.zzg);
    }

    public static /* synthetic */ void zze(zzate zzateVar, int i) {
        zzateVar.zzf |= 1;
        zzateVar.zzh = i;
    }

    @Override // com.google.android.gms.internal.mlkit_vision_digital_ink.zzbui
    public final Object zzb(int i, Object obj, Object obj2) {
        int i2 = i - 1;
        if (i2 == 0) {
            return (byte) 1;
        }
        if (i2 == 2) {
            return zzbui.zzaa(zza, "\u0001\u0002\u0000\u0001\u0001\u0002\u0002\u0000\u0001\u0000\u0001\u001b\u0002င\u0000", new Object[]{"zzf", "zzg", zzatl.class, "zzh"});
        }
        if (i2 == 3) {
            return new zzate();
        }
        if (i2 == 4) {
            return new zzatd(null);
        }
        if (i2 == 5) {
            return zza;
        }
        if (i2 != 6) {
            return null;
        }
        zzbwc zzbwcVar = zze;
        if (zzbwcVar == null) {
            synchronized (zzate.class) {
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
