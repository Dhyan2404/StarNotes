package com.google.android.gms.internal.mlkit_vision_digital_ink;

import com.google.android.material.motion.MotionUtils;
import java.util.BitSet;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes5.dex */
public final class zzafp extends zzafq {
    final zzafq zza;
    final zzafq zzb;

    public zzafp(zzafq zzafqVar, zzafq zzafqVar2) {
        this.zza = zzafqVar;
        zzafqVar2.getClass();
        this.zzb = zzafqVar2;
    }

    public final String toString() {
        return "CharMatcher.or(" + this.zza + ", " + this.zzb + MotionUtils.f31762d;
    }

    @Override // com.google.android.gms.internal.mlkit_vision_digital_ink.zzafq
    public final void zzb(BitSet bitSet) {
        this.zza.zzb(bitSet);
        this.zzb.zzb(bitSet);
    }

    @Override // com.google.android.gms.internal.mlkit_vision_digital_ink.zzafq
    public final boolean zzc(char c) {
        return this.zza.zzc(c) || this.zzb.zzc(c);
    }
}
