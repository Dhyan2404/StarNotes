package com.google.android.gms.internal.mlkit_vision_digital_ink;

import java.util.AbstractCollection;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import javax.annotation.CheckForNull;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes5.dex */
public final class zzaik extends AbstractCollection {
    final Collection zza;
    final zzagh zzb;

    public zzaik(Collection collection, zzagh zzaghVar) {
        this.zza = collection;
        this.zzb = zzaghVar;
    }

    @Override // java.util.AbstractCollection, java.util.Collection
    public final boolean add(Object obj) {
        zzagg.zze(this.zzb.zza(obj));
        return this.zza.add(obj);
    }

    @Override // java.util.AbstractCollection, java.util.Collection
    public final boolean addAll(Collection collection) {
        Iterator it2 = collection.iterator();
        while (it2.hasNext()) {
            zzagg.zze(this.zzb.zza(it2.next()));
        }
        return this.zza.addAll(collection);
    }

    @Override // java.util.AbstractCollection, java.util.Collection
    public final void clear() {
        zzakf.zzb(this.zza, this.zzb);
    }

    @Override // java.util.AbstractCollection, java.util.Collection
    public final boolean contains(@CheckForNull Object obj) {
        if (zzaim.zzc(this.zza, obj)) {
            return this.zzb.zza(obj);
        }
        return false;
    }

    @Override // java.util.AbstractCollection, java.util.Collection
    public final boolean containsAll(Collection collection) {
        Iterator it2 = collection.iterator();
        while (it2.hasNext()) {
            if (!contains(it2.next())) {
                return false;
            }
        }
        return true;
    }

    @Override // java.util.AbstractCollection, java.util.Collection
    public final boolean isEmpty() {
        return zzakl.zza(this.zza.iterator(), this.zzb) == -1;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.lang.Iterable
    public final Iterator iterator() {
        Iterator it2 = this.zza.iterator();
        zzagh zzaghVar = this.zzb;
        it2.getClass();
        zzaghVar.getClass();
        return new zzakg(it2, zzaghVar);
    }

    @Override // java.util.AbstractCollection, java.util.Collection
    public final boolean remove(@CheckForNull Object obj) {
        return contains(obj) && this.zza.remove(obj);
    }

    @Override // java.util.AbstractCollection, java.util.Collection
    public final boolean removeAll(Collection collection) {
        Iterator it2 = this.zza.iterator();
        boolean z = false;
        while (it2.hasNext()) {
            Object next = it2.next();
            if (this.zzb.zza(next) && collection.contains(next)) {
                it2.remove();
                z = true;
            }
        }
        return z;
    }

    @Override // java.util.AbstractCollection, java.util.Collection
    public final boolean retainAll(Collection collection) {
        Iterator it2 = this.zza.iterator();
        boolean z = false;
        while (it2.hasNext()) {
            Object next = it2.next();
            if (this.zzb.zza(next) && !collection.contains(next)) {
                it2.remove();
                z = true;
            }
        }
        return z;
    }

    @Override // java.util.AbstractCollection, java.util.Collection
    public final int size() {
        Iterator it2 = this.zza.iterator();
        int i = 0;
        while (it2.hasNext()) {
            if (this.zzb.zza(it2.next())) {
                i++;
            }
        }
        return i;
    }

    @Override // java.util.AbstractCollection, java.util.Collection
    public final Object[] toArray() {
        Iterator it2 = iterator();
        ArrayList arrayList = new ArrayList();
        zzakl.zzc(arrayList, it2);
        return arrayList.toArray();
    }

    @Override // java.util.AbstractCollection, java.util.Collection
    public final Object[] toArray(Object[] objArr) {
        Iterator it2 = iterator();
        ArrayList arrayList = new ArrayList();
        zzakl.zzc(arrayList, it2);
        return arrayList.toArray(objArr);
    }
}
