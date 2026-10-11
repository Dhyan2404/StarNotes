package com.google.android.gms.internal.mlkit_vision_digital_ink;

import java.util.BitSet;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes5.dex */
public final class zzafj extends zzafh {
    private final char zza;

    public zzafj(char c) {
        this.zza = c;
    }

    public final String toString() {
        return "CharMatcher.is('" + zzafq.zzn(this.zza) + "')";
    }

    @Override // com.google.android.gms.internal.mlkit_vision_digital_ink.zzafq
    public final void zzb(BitSet bitSet) {
        bitSet.set(this.zza);
    }

    @Override // com.google.android.gms.internal.mlkit_vision_digital_ink.zzafq
    public final boolean zzc(char c) {
        return c == this.zza;
    }
}
