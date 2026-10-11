package com.google.android.gms.internal.mlkit_vision_digital_ink;

import java.util.AbstractSet;
import java.util.Iterator;
import java.util.Map;
import javax.annotation.CheckForNull;

/* loaded from: classes5.dex */
final class zzais extends AbstractSet {
    final /* synthetic */ zzaiv zza;

    public zzais(zzaiv zzaivVar) {
        this.zza = zzaivVar;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public final void clear() {
        this.zza.clear();
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public final boolean contains(@CheckForNull Object obj) {
        return this.zza.containsKey(obj);
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.Set
    public final Iterator iterator() {
        zzaiv zzaivVar = this.zza;
        Map zzk = zzaivVar.zzk();
        return zzk != null ? zzk.keySet().iterator() : new zzain(zzaivVar);
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public final boolean remove(@CheckForNull Object obj) {
        Object zzs;
        Object obj2;
        Map zzk = this.zza.zzk();
        if (zzk != null) {
            return zzk.keySet().remove(obj);
        }
        zzs = this.zza.zzs(obj);
        obj2 = zzaiv.zzd;
        return zzs != obj2;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public final int size() {
        return this.zza.size();
    }
}
