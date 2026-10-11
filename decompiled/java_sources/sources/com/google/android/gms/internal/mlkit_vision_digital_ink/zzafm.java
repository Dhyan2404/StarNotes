package com.google.android.gms.internal.mlkit_vision_digital_ink;

import java.util.BitSet;
import java.util.Objects;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes5.dex */
public class zzafm extends zzafq {
    final zzafq zzb;

    public zzafm(zzafq zzafqVar) {
        this.zzb = zzafqVar;
    }

    public String toString() {
        zzafq zzafqVar = this.zzb;
        Objects.toString(zzafqVar);
        return zzafqVar.toString().concat(".negate()");
    }

    @Override // com.google.android.gms.internal.mlkit_vision_digital_ink.zzafq
    public final void zzb(BitSet bitSet) {
        BitSet bitSet2 = new BitSet();
        this.zzb.zzb(bitSet2);
        bitSet2.flip(0, 65536);
        bitSet.or(bitSet2);
    }

    @Override // com.google.android.gms.internal.mlkit_vision_digital_ink.zzafq
    public final boolean zzc(char c) {
        return !this.zzb.zzc(c);
    }

    @Override // com.google.android.gms.internal.mlkit_vision_digital_ink.zzafq
    public final boolean zzd(CharSequence charSequence) {
        return this.zzb.zzg(charSequence);
    }
}
