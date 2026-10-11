package com.google.android.gms.internal.mlkit_vision_digital_ink;

import java.io.IOException;
import java.util.Map;

/* loaded from: classes5.dex */
final class zzblj extends zzblh {
    private final zzbke zzb;

    public zzblj(zzbke zzbkeVar, Map map) {
        super(map);
        this.zzb = zzbkeVar;
    }

    @Override // com.google.android.gms.internal.mlkit_vision_digital_ink.zzblh
    public final Object zzc() {
        return this.zzb.zza();
    }

    @Override // com.google.android.gms.internal.mlkit_vision_digital_ink.zzblh
    public final Object zze(Object obj) {
        return obj;
    }

    @Override // com.google.android.gms.internal.mlkit_vision_digital_ink.zzblh
    public final void zzf(Object obj, zzbny zzbnyVar, zzbli zzbliVar) throws IllegalAccessException, IOException {
        zzbliVar.zzb(zzbnyVar, obj);
    }
}
