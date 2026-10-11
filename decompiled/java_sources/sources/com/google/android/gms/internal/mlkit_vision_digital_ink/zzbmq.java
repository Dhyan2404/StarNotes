package com.google.android.gms.internal.mlkit_vision_digital_ink;

import java.io.IOException;

/* loaded from: classes5.dex */
final class zzbmq extends zzbio {
    final /* synthetic */ Class zza;
    final /* synthetic */ zzbmr zzb;

    public zzbmq(zzbmr zzbmrVar, Class cls) {
        this.zzb = zzbmrVar;
        this.zza = cls;
    }

    @Override // com.google.android.gms.internal.mlkit_vision_digital_ink.zzbio
    public final Object zza(zzbny zzbnyVar) throws IOException {
        Object zza = this.zzb.zzb.zza(zzbnyVar);
        if (zza == null || this.zza.isInstance(zza)) {
            return zza;
        }
        throw new zzbif("Expected a " + this.zza.getName() + " but was " + zza.getClass().getName() + "; at path " + zzbnyVar.zzf());
    }

    @Override // com.google.android.gms.internal.mlkit_vision_digital_ink.zzbio
    public final void zzb(zzboa zzboaVar, Object obj) throws IOException {
        throw null;
    }
}
