package com.google.android.gms.internal.measurement;

import java.util.Iterator;
import java.util.Map;

/* loaded from: classes5.dex */
final class zzky implements zzkv {
    @Override // com.google.android.gms.internal.measurement.zzkv
    public final int zza(int i, Object obj, Object obj2) {
        zzkw zzkwVar = (zzkw) obj;
        if (zzkwVar.isEmpty()) {
            return 0;
        }
        Iterator it2 = zzkwVar.entrySet().iterator();
        if (!it2.hasNext()) {
            return 0;
        }
        Map.Entry entry = (Map.Entry) it2.next();
        entry.getKey();
        entry.getValue();
        throw new NoSuchMethodError();
    }

    @Override // com.google.android.gms.internal.measurement.zzkv
    public final Object zzb(Object obj) {
        return zzkw.zza().zzb();
    }

    @Override // com.google.android.gms.internal.measurement.zzkv
    public final Object zzc(Object obj) {
        ((zzkw) obj).zzc();
        return obj;
    }

    @Override // com.google.android.gms.internal.measurement.zzkv
    public final Map<?, ?> zzd(Object obj) {
        return (zzkw) obj;
    }

    @Override // com.google.android.gms.internal.measurement.zzkv
    public final Map<?, ?> zze(Object obj) {
        return (zzkw) obj;
    }

    @Override // com.google.android.gms.internal.measurement.zzkv
    public final boolean zzf(Object obj) {
        return !((zzkw) obj).zzd();
    }

    @Override // com.google.android.gms.internal.measurement.zzkv
    public final zzkt<?, ?> zza(Object obj) {
        throw new NoSuchMethodError();
    }

    @Override // com.google.android.gms.internal.measurement.zzkv
    public final Object zza(Object obj, Object obj2) {
        zzkw zzkwVar = (zzkw) obj;
        zzkw zzkwVar2 = (zzkw) obj2;
        if (!zzkwVar2.isEmpty()) {
            if (!zzkwVar.zzd()) {
                zzkwVar = zzkwVar.zzb();
            }
            zzkwVar.zza(zzkwVar2);
        }
        return zzkwVar;
    }
}
