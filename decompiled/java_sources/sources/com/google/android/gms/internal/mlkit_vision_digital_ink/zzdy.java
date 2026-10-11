package com.google.android.gms.internal.mlkit_vision_digital_ink;

import java.util.List;

/* loaded from: classes5.dex */
public final class zzdy extends zzbui implements zzbvv {
    private static final zzdy zza;
    private static volatile zzbwc zze;
    private int zzf;
    private zzbxa zzg;
    private zzbuq zzh = zzbui.zzW();
    private boolean zzi;
    private zzec zzj;

    static {
        zzdy zzdyVar = new zzdy();
        zza = zzdyVar;
        zzbui.zzad(zzdy.class, zzdyVar);
    }

    private zzdy() {
    }

    public static zzdy zzd() {
        return zza;
    }

    public static /* synthetic */ void zzg(zzdy zzdyVar, zzbxa zzbxaVar) {
        zzbxaVar.getClass();
        zzdyVar.zzg = zzbxaVar;
        zzdyVar.zzf |= 1;
    }

    public static /* synthetic */ void zzh(zzdy zzdyVar, int i, zzdl zzdlVar) {
        zzdlVar.getClass();
        zzdyVar.zzn();
        zzdyVar.zzh.set(i, zzdlVar);
    }

    public static /* synthetic */ void zzi(zzdy zzdyVar, zzdl zzdlVar) {
        zzdlVar.getClass();
        zzdyVar.zzn();
        zzdyVar.zzh.add(zzdlVar);
    }

    public static /* synthetic */ void zzk(zzdy zzdyVar, boolean z) {
        zzdyVar.zzf |= 2;
        zzdyVar.zzi = true;
    }

    private final void zzn() {
        zzbuq zzbuqVar = this.zzh;
        if (zzbuqVar.zzc()) {
            return;
        }
        this.zzh = zzbui.zzX(zzbuqVar);
    }

    public final zzdl zza(int i) {
        return (zzdl) this.zzh.get(i);
    }

    @Override // com.google.android.gms.internal.mlkit_vision_digital_ink.zzbui
    public final Object zzb(int i, Object obj, Object obj2) {
        int i2 = i - 1;
        if (i2 == 0) {
            return (byte) 1;
        }
        if (i2 == 2) {
            return zzbui.zzaa(zza, "\u0001\u0004\u0000\u0001\u0001\u0004\u0004\u0000\u0001\u0000\u0001ဉ\u0000\u0002\u001b\u0003ဇ\u0001\u0004ဉ\u0002", new Object[]{"zzf", "zzg", "zzh", zzdl.class, "zzi", "zzj"});
        }
        if (i2 == 3) {
            return new zzdy();
        }
        zzbx zzbxVar = null;
        if (i2 == 4) {
            return new zzdx(zzbxVar);
        }
        if (i2 == 5) {
            return zza;
        }
        if (i2 != 6) {
            return null;
        }
        zzbwc zzbwcVar = zze;
        if (zzbwcVar == null) {
            synchronized (zzdy.class) {
                zzbwcVar = zze;
                if (zzbwcVar == null) {
                    zzbwcVar = new zzbuc(zza);
                    zze = zzbwcVar;
                }
            }
        }
        return zzbwcVar;
    }

    public final zzbxa zze() {
        zzbxa zzbxaVar = this.zzg;
        return zzbxaVar == null ? zzbxa.zzh() : zzbxaVar;
    }

    public final List zzf() {
        return this.zzh;
    }

    public final boolean zzl() {
        return this.zzi;
    }

    public final boolean zzm() {
        return (this.zzf & 1) != 0;
    }
}
