package com.google.android.gms.internal.mlkit_vision_digital_ink;

import java.util.Collections;
import java.util.HashMap;
import java.util.Map;

/* loaded from: classes5.dex */
public final class zzbtr {
    static final zzbtr zza = new zzbtr(true);
    public static final /* synthetic */ int zzb = 0;
    private static volatile boolean zzc;
    private static volatile zzbtr zzd;
    private final Map zze;

    public zzbtr() {
        this.zze = new HashMap();
    }

    public static zzbtr zza() {
        return zza;
    }

    public static zzbtr zzb() {
        zzbtr zzbtrVar = zzd;
        if (zzbtrVar != null) {
            return zzbtrVar;
        }
        synchronized (zzbtr.class) {
            zzbtr zzbtrVar2 = zzd;
            if (zzbtrVar2 != null) {
                return zzbtrVar2;
            }
            zzbtr zzb2 = zzbtz.zzb(zzbtr.class);
            zzd = zzb2;
            return zzb2;
        }
    }

    public final zzbug zzc(zzbvu zzbvuVar, int i) {
        return (zzbug) this.zze.get(new zzbtq(zzbvuVar, i));
    }

    public zzbtr(boolean z) {
        this.zze = Collections.emptyMap();
    }
}
