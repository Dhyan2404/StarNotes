package com.google.android.gms.internal.mlkit_vision_digital_ink;

import java.util.BitSet;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes5.dex */
public final class zzafk extends zzafh {
    private final char zza;
    private final char zzb;

    public zzafk(char c, char c2) {
        this.zza = c;
        this.zzb = c2;
    }

    public final String toString() {
        return "CharMatcher.anyOf(\"" + zzafq.zzn(this.zza) + zzafq.zzn(this.zzb) + "\")";
    }

    @Override // com.google.android.gms.internal.mlkit_vision_digital_ink.zzafq
    public final void zzb(BitSet bitSet) {
        bitSet.set(this.zza);
        bitSet.set(this.zzb);
    }

    @Override // com.google.android.gms.internal.mlkit_vision_digital_ink.zzafq
    public final boolean zzc(char c) {
        return c == this.zza || c == this.zzb;
    }
}
