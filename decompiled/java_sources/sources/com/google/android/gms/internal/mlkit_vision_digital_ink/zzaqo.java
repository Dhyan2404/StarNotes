package com.google.android.gms.internal.mlkit_vision_digital_ink;

import com.sunia.HTREnginev2.C14434t4;
import java.util.Set;
import java.util.concurrent.atomic.AtomicIntegerFieldUpdater;
import java.util.concurrent.atomic.AtomicReferenceFieldUpdater;
import javax.annotation.CheckForNull;

/* loaded from: classes5.dex */
final class zzaqo extends zzaqn {
    final AtomicReferenceFieldUpdater zza;
    final AtomicIntegerFieldUpdater zzb;

    public zzaqo(AtomicReferenceFieldUpdater atomicReferenceFieldUpdater, AtomicIntegerFieldUpdater atomicIntegerFieldUpdater) {
        super(null);
        this.zza = atomicReferenceFieldUpdater;
        this.zzb = atomicIntegerFieldUpdater;
    }

    @Override // com.google.android.gms.internal.mlkit_vision_digital_ink.zzaqn
    public final int zza(zzaqr zzaqrVar) {
        return this.zzb.decrementAndGet(zzaqrVar);
    }

    @Override // com.google.android.gms.internal.mlkit_vision_digital_ink.zzaqn
    public final void zzb(zzaqr zzaqrVar, @CheckForNull Set set, Set set2) {
        AtomicReferenceFieldUpdater atomicReferenceFieldUpdater = this.zza;
        while (!C14434t4.m57298a(atomicReferenceFieldUpdater, zzaqrVar, null, set2) && atomicReferenceFieldUpdater.get(zzaqrVar) == null) {
        }
    }
}
