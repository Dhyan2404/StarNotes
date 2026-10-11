package com.google.android.gms.internal.mlkit_vision_digital_ink;

import java.util.Collections;
import java.util.Map;

/* loaded from: classes5.dex */
public final class zzeh extends zzbui implements zzbvv {
    private static final zzeh zza;
    private static volatile zzbwc zze;
    private zzbvo zzf = zzbvo.zza();

    static {
        zzeh zzehVar = new zzeh();
        zza = zzehVar;
        zzbui.zzad(zzeh.class, zzehVar);
    }

    private zzeh() {
    }

    public static zzef zzc() {
        return (zzef) zza.zzN();
    }

    public static zzeh zze() {
        return zza;
    }

    public static /* synthetic */ Map zzf(zzeh zzehVar) {
        if (!zzehVar.zzf.zze()) {
            zzehVar.zzf = zzehVar.zzf.zzb();
        }
        return zzehVar.zzf;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final zzee zza(String str, zzee zzeeVar) {
        str.getClass();
        zzbvo zzbvoVar = this.zzf;
        if (zzbvoVar.containsKey(str)) {
            return (zzee) zzbvoVar.get(str);
        }
        return null;
    }

    @Override // com.google.android.gms.internal.mlkit_vision_digital_ink.zzbui
    public final Object zzb(int i, Object obj, Object obj2) {
        int i2 = i - 1;
        if (i2 == 0) {
            return (byte) 1;
        }
        if (i2 == 2) {
            return zzbui.zzaa(zza, "\u0001\u0001\u0000\u0000\u0001\u0001\u0001\u0001\u0000\u0000\u00012", new Object[]{"zzf", zzeg.zza});
        }
        if (i2 == 3) {
            return new zzeh();
        }
        zzbx zzbxVar = null;
        if (i2 == 4) {
            return new zzef(zzbxVar);
        }
        if (i2 == 5) {
            return zza;
        }
        if (i2 != 6) {
            return null;
        }
        zzbwc zzbwcVar = zze;
        if (zzbwcVar == null) {
            synchronized (zzeh.class) {
                zzbwcVar = zze;
                if (zzbwcVar == null) {
                    zzbwcVar = new zzbuc(zza);
                    zze = zzbwcVar;
                }
            }
        }
        return zzbwcVar;
    }

    public final Map zzg() {
        return Collections.unmodifiableMap(this.zzf);
    }
}
