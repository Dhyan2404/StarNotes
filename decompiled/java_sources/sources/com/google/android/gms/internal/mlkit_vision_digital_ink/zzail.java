package com.google.android.gms.internal.mlkit_vision_digital_ink;

import java.util.AbstractCollection;
import java.util.Collection;
import java.util.Iterator;

/* loaded from: classes5.dex */
final class zzail extends AbstractCollection {
    final Collection zza;
    final zzaft zzb;

    public zzail(Collection collection, zzaft zzaftVar) {
        collection.getClass();
        this.zza = collection;
        zzaftVar.getClass();
        this.zzb = zzaftVar;
    }

    @Override // java.util.AbstractCollection, java.util.Collection
    public final void clear() {
        this.zza.clear();
    }

    @Override // java.util.AbstractCollection, java.util.Collection
    public final boolean isEmpty() {
        return this.zza.isEmpty();
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.lang.Iterable
    public final Iterator iterator() {
        Iterator it2 = this.zza.iterator();
        zzaft zzaftVar = this.zzb;
        zzaftVar.getClass();
        return new zzakh(it2, zzaftVar);
    }

    @Override // java.util.AbstractCollection, java.util.Collection
    public final int size() {
        return this.zza.size();
    }
}
