package com.google.android.gms.internal.mlkit_vision_digital_ink;

import java.util.Collection;
import java.util.Set;

/* loaded from: classes5.dex */
final class zzahw extends zzaht implements Set {
    final /* synthetic */ zzahx zzf;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public zzahw(zzahx zzahxVar, Object obj, Set set) {
        super(zzahxVar, obj, set, null);
        this.zzf = zzahxVar;
    }

    @Override // com.google.android.gms.internal.mlkit_vision_digital_ink.zzaht, java.util.AbstractCollection, java.util.Collection
    public final boolean removeAll(Collection collection) {
        if (collection.isEmpty()) {
            return false;
        }
        int size = size();
        boolean zzc = zzalu.zzc((Set) this.zzb, collection);
        if (zzc) {
            zzahx.zzf(this.zzf, this.zzb.size() - size);
            zzc();
        }
        return zzc;
    }
}
