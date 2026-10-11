package com.google.android.gms.internal.mlkit_vision_digital_ink;

import java.io.Serializable;

/* loaded from: classes5.dex */
final class zzalh extends zzalf implements Serializable {
    private final Object zza;
    private final int zzb;

    public zzalh(Object obj, int i) {
        this.zza = obj;
        this.zzb = i;
        zzaij.zza(i, "count");
    }

    @Override // com.google.android.gms.internal.mlkit_vision_digital_ink.zzald
    public final int zza() {
        return this.zzb;
    }

    @Override // com.google.android.gms.internal.mlkit_vision_digital_ink.zzald
    public final Object zzb() {
        return this.zza;
    }
}
