package com.google.android.gms.internal.mlkit_vision_digital_ink;

import java.io.IOException;

/* loaded from: classes5.dex */
final class zzbhs extends zzblm {
    private zzbio zza;

    @Override // com.google.android.gms.internal.mlkit_vision_digital_ink.zzbio
    public final Object zza(zzbny zzbnyVar) throws IOException {
        zzbio zzbioVar = this.zza;
        if (zzbioVar != null) {
            return zzbioVar.zza(zzbnyVar);
        }
        throw new IllegalStateException("Delegate has not been set yet");
    }

    @Override // com.google.android.gms.internal.mlkit_vision_digital_ink.zzbio
    public final void zzb(zzboa zzboaVar, Object obj) throws IOException {
        throw null;
    }

    public final void zzc(zzbio zzbioVar) {
        if (this.zza != null) {
            throw new AssertionError();
        }
        this.zza = zzbioVar;
    }
}
