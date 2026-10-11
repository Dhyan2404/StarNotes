package com.google.android.gms.internal.mlkit_vision_digital_ink;

import java.util.Collections;
import java.util.List;
import java.util.Map;

/* loaded from: classes5.dex */
public final class zzdp extends zzbui implements zzbvv {
    private static final zzdp zza;
    private static volatile zzbwc zze;
    private zzbvo zzf = zzbvo.zza();
    private zzbvo zzg = zzbvo.zza();
    private zzbuq zzh = zzbui.zzW();

    static {
        zzdp zzdpVar = new zzdp();
        zza = zzdpVar;
        zzbui.zzad(zzdp.class, zzdpVar);
    }

    private zzdp() {
    }

    public static zzdm zza() {
        return (zzdm) zza.zzN();
    }

    public static zzdp zzd() {
        return zza;
    }

    public static /* synthetic */ Map zzf(zzdp zzdpVar) {
        if (!zzdpVar.zzf.zze()) {
            zzdpVar.zzf = zzdpVar.zzf.zzb();
        }
        return zzdpVar.zzf;
    }

    public static /* synthetic */ void zzi(zzdp zzdpVar, Iterable iterable) {
        zzbuq zzbuqVar = zzdpVar.zzh;
        if (!zzbuqVar.zzc()) {
            zzdpVar.zzh = zzbui.zzX(zzbuqVar);
        }
        zzbsd.zzI(iterable, zzdpVar.zzh);
    }

    @Override // com.google.android.gms.internal.mlkit_vision_digital_ink.zzbui
    public final Object zzb(int i, Object obj, Object obj2) {
        int i2 = i - 1;
        if (i2 == 0) {
            return (byte) 1;
        }
        if (i2 == 2) {
            return zzbui.zzaa(zza, "\u0001\u0003\u0000\u0000\u0001\u0003\u0003\u0002\u0001\u0000\u00012\u00022\u0003\u001b", new Object[]{"zzf", zzdn.zza, "zzg", zzdo.zza, "zzh", zzcr.class});
        }
        if (i2 == 3) {
            return new zzdp();
        }
        zzbx zzbxVar = null;
        if (i2 == 4) {
            return new zzdm(zzbxVar);
        }
        if (i2 == 5) {
            return zza;
        }
        if (i2 != 6) {
            return null;
        }
        zzbwc zzbwcVar = zze;
        if (zzbwcVar == null) {
            synchronized (zzdp.class) {
                zzbwcVar = zze;
                if (zzbwcVar == null) {
                    zzbwcVar = new zzbuc(zza);
                    zze = zzbwcVar;
                }
            }
        }
        return zzbwcVar;
    }

    public final List zze() {
        return this.zzh;
    }

    public final Map zzg() {
        return Collections.unmodifiableMap(this.zzf);
    }

    public final Map zzh() {
        return Collections.unmodifiableMap(this.zzg);
    }
}
