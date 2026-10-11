package com.google.android.gms.internal.mlkit_vision_digital_ink;

import java.util.Random;

/* loaded from: classes5.dex */
final class zzagk extends Random {
    private final boolean zza = true;

    private zzagk() {
    }

    @Override // java.util.Random
    public final void setSeed(long j) {
        if (this.zza) {
            throw new UnsupportedOperationException("Setting the seed on the shared Random object is not permitted");
        }
        super.setSeed(j);
    }

    public /* synthetic */ zzagk(zzagj zzagjVar) {
    }
}
