package com.google.android.gms.internal.mlkit_vision_digital_ink;

import java.io.IOException;

/* loaded from: classes5.dex */
final class zzbnx extends zzbju {
    @Override // com.google.android.gms.internal.mlkit_vision_digital_ink.zzbju
    public final void zza(zzbny zzbnyVar) throws IOException {
        int i;
        int i2 = zzbnyVar.zza;
        if (i2 == 0) {
            i2 = zzbnyVar.zzb();
        }
        if (i2 == 13) {
            i = 9;
        } else if (i2 == 12) {
            i = 8;
        } else {
            if (i2 != 14) {
                throw new IllegalStateException("Expected a name but was " + zzbnz.zza(zzbnyVar.zzt()) + zzbnyVar.zzg());
            }
            i = 10;
        }
        zzbnyVar.zza = i;
    }
}
