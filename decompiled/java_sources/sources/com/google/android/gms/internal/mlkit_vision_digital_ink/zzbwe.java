package com.google.android.gms.internal.mlkit_vision_digital_ink;

import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.ConcurrentMap;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes5.dex */
public final class zzbwe {
    private static final zzbwe zza = new zzbwe();
    private final ConcurrentMap zzc = new ConcurrentHashMap();
    private final zzbwj zzb = new zzbvl();

    private zzbwe() {
    }

    public static zzbwe zza() {
        return zza;
    }

    public final zzbwi zzb(Class cls) {
        zzbur.zzf(cls, "messageType");
        zzbwi zzbwiVar = (zzbwi) this.zzc.get(cls);
        if (zzbwiVar == null) {
            zzbwiVar = this.zzb.zza(cls);
            zzbur.zzf(cls, "messageType");
            zzbur.zzf(zzbwiVar, "schema");
            zzbwi zzbwiVar2 = (zzbwi) this.zzc.putIfAbsent(cls, zzbwiVar);
            if (zzbwiVar2 != null) {
                return zzbwiVar2;
            }
        }
        return zzbwiVar;
    }
}
