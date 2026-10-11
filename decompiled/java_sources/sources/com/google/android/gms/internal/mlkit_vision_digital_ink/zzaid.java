package com.google.android.gms.internal.mlkit_vision_digital_ink;

import java.util.Iterator;

/* loaded from: classes5.dex */
final class zzaid extends zzalg {
    final /* synthetic */ zzaie zza;

    public zzaid(zzaie zzaieVar) {
        this.zza = zzaieVar;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.Set
    public final Iterator iterator() {
        return this.zza.zzc();
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public final int size() {
        return this.zza.zzb();
    }

    @Override // com.google.android.gms.internal.mlkit_vision_digital_ink.zzalg
    public final zzale zza() {
        return this.zza;
    }
}
