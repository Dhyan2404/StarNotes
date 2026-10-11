package com.google.android.gms.internal.mlkit_vision_digital_ink;

import java.util.Collection;
import java.util.Map;

/* loaded from: classes5.dex */
final class zzala extends zzalf {
    final /* synthetic */ Map.Entry zza;

    public zzala(zzalb zzalbVar, Map.Entry entry) {
        this.zza = entry;
    }

    @Override // com.google.android.gms.internal.mlkit_vision_digital_ink.zzald
    public final int zza() {
        return ((Collection) this.zza.getValue()).size();
    }

    @Override // com.google.android.gms.internal.mlkit_vision_digital_ink.zzald
    public final Object zzb() {
        return this.zza.getKey();
    }
}
