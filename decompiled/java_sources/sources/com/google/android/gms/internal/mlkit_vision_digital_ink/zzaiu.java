package com.google.android.gms.internal.mlkit_vision_digital_ink;

import java.util.AbstractCollection;
import java.util.Iterator;
import java.util.Map;

/* loaded from: classes5.dex */
final class zzaiu extends AbstractCollection {
    final /* synthetic */ zzaiv zza;

    public zzaiu(zzaiv zzaivVar) {
        this.zza = zzaivVar;
    }

    @Override // java.util.AbstractCollection, java.util.Collection
    public final void clear() {
        this.zza.clear();
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.lang.Iterable
    public final Iterator iterator() {
        zzaiv zzaivVar = this.zza;
        Map zzk = zzaivVar.zzk();
        return zzk != null ? zzk.values().iterator() : new zzaip(zzaivVar);
    }

    @Override // java.util.AbstractCollection, java.util.Collection
    public final int size() {
        return this.zza.size();
    }
}
