package com.google.android.gms.internal.mlkit_vision_digital_ink;

import java.util.concurrent.atomic.AtomicReferenceFieldUpdater;

/* loaded from: classes5.dex */
final class zzbrk extends zzbre {
    final AtomicReferenceFieldUpdater zza;
    final AtomicReferenceFieldUpdater zzb;
    final AtomicReferenceFieldUpdater zzc;
    final AtomicReferenceFieldUpdater zzd;
    final AtomicReferenceFieldUpdater zze;

    public zzbrk(AtomicReferenceFieldUpdater atomicReferenceFieldUpdater, AtomicReferenceFieldUpdater atomicReferenceFieldUpdater2, AtomicReferenceFieldUpdater atomicReferenceFieldUpdater3, AtomicReferenceFieldUpdater atomicReferenceFieldUpdater4, AtomicReferenceFieldUpdater atomicReferenceFieldUpdater5) {
        super(null);
        this.zza = atomicReferenceFieldUpdater;
        this.zzb = atomicReferenceFieldUpdater2;
        this.zzc = atomicReferenceFieldUpdater3;
        this.zzd = atomicReferenceFieldUpdater4;
        this.zze = atomicReferenceFieldUpdater5;
    }

    @Override // com.google.android.gms.internal.mlkit_vision_digital_ink.zzbre
    public final void zza(zzbrn zzbrnVar, zzbrn zzbrnVar2) {
        this.zzb.lazySet(zzbrnVar, zzbrnVar2);
    }

    @Override // com.google.android.gms.internal.mlkit_vision_digital_ink.zzbre
    public final void zzb(zzbrn zzbrnVar, Thread thread) {
        this.zza.lazySet(zzbrnVar, thread);
    }

    @Override // com.google.android.gms.internal.mlkit_vision_digital_ink.zzbre
    public final boolean zzc(zzbro zzbroVar, zzbri zzbriVar, zzbri zzbriVar2) {
        return zzbrj.zza(this.zzd, zzbroVar, zzbriVar, zzbriVar2);
    }

    @Override // com.google.android.gms.internal.mlkit_vision_digital_ink.zzbre
    public final boolean zzd(zzbro zzbroVar, Object obj, Object obj2) {
        return zzbrj.zza(this.zze, zzbroVar, obj, obj2);
    }

    @Override // com.google.android.gms.internal.mlkit_vision_digital_ink.zzbre
    public final boolean zze(zzbro zzbroVar, zzbrn zzbrnVar, zzbrn zzbrnVar2) {
        return zzbrj.zza(this.zzc, zzbroVar, zzbrnVar, zzbrnVar2);
    }
}
