package com.google.android.gms.internal.mlkit_vision_digital_ink;

import java.util.BitSet;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes5.dex */
public final class zzafi extends zzafh {
    private final char zza;
    private final char zzb;

    public zzafi(char c, char c2) {
        zzagg.zze(c2 >= c);
        this.zza = c;
        this.zzb = c2;
    }

    public final String toString() {
        return "CharMatcher.inRange('" + zzafq.zzn(this.zza) + "', '" + zzafq.zzn(this.zzb) + "')";
    }

    @Override // com.google.android.gms.internal.mlkit_vision_digital_ink.zzafq
    public final void zzb(BitSet bitSet) {
        bitSet.set(this.zza, this.zzb + 1);
    }

    @Override // com.google.android.gms.internal.mlkit_vision_digital_ink.zzafq
    public final boolean zzc(char c) {
        return this.zza <= c && c <= this.zzb;
    }
}
