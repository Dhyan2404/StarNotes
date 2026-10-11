package com.google.android.gms.internal.mlkit_vision_digital_ink;

import java.util.List;

/* loaded from: classes5.dex */
final class zzbvf extends zzbvh {
    public /* synthetic */ zzbvf(zzbve zzbveVar) {
        super(null);
    }

    @Override // com.google.android.gms.internal.mlkit_vision_digital_ink.zzbvh
    public final List zza(Object obj, long j) {
        zzbuq zzbuqVar = (zzbuq) zzbxm.zzf(obj, j);
        if (zzbuqVar.zzc()) {
            return zzbuqVar;
        }
        int size = zzbuqVar.size();
        zzbuq zzd = zzbuqVar.zzd(size == 0 ? 10 : size + size);
        zzbxm.zzs(obj, j, zzd);
        return zzd;
    }

    @Override // com.google.android.gms.internal.mlkit_vision_digital_ink.zzbvh
    public final void zzb(Object obj, long j) {
        ((zzbuq) zzbxm.zzf(obj, j)).zzb();
    }

    @Override // com.google.android.gms.internal.mlkit_vision_digital_ink.zzbvh
    public final void zzc(Object obj, Object obj2, long j) {
        zzbuq zzbuqVar = (zzbuq) zzbxm.zzf(obj, j);
        zzbuq zzbuqVar2 = (zzbuq) zzbxm.zzf(obj2, j);
        int size = zzbuqVar.size();
        int size2 = zzbuqVar2.size();
        if (size > 0 && size2 > 0) {
            if (!zzbuqVar.zzc()) {
                zzbuqVar = zzbuqVar.zzd(size2 + size);
            }
            zzbuqVar.addAll(zzbuqVar2);
        }
        if (size > 0) {
            zzbuqVar2 = zzbuqVar;
        }
        zzbxm.zzs(obj, j, zzbuqVar2);
    }

    private zzbvf() {
        super(null);
    }
}
