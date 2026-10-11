package com.google.android.gms.internal.mlkit_vision_digital_ink;

import java.util.BitSet;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes5.dex */
public final class zzafg extends zzafl {
    private final BitSet zza;

    public /* synthetic */ zzafg(BitSet bitSet, String str, zzafe zzafeVar) {
        super(str);
        this.zza = bitSet.length() + 64 < bitSet.size() ? (BitSet) bitSet.clone() : bitSet;
    }

    @Override // com.google.android.gms.internal.mlkit_vision_digital_ink.zzafq
    public final void zzb(BitSet bitSet) {
        bitSet.or(this.zza);
    }

    @Override // com.google.android.gms.internal.mlkit_vision_digital_ink.zzafq
    public final boolean zzc(char c) {
        return this.zza.get(c);
    }
}
