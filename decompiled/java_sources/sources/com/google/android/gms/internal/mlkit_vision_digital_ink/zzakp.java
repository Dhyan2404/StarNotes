package com.google.android.gms.internal.mlkit_vision_digital_ink;

import com.google.firebase.analytics.FirebaseAnalytics;
import java.util.AbstractList;
import java.util.Iterator;
import java.util.List;
import java.util.ListIterator;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes5.dex */
public class zzakp extends AbstractList {
    private final List zza;

    public zzakp(List list) {
        list.getClass();
        this.zza = list;
    }

    private final int zzb(int i) {
        int size = size();
        zzagg.zza(i, size, FirebaseAnalytics.Param.INDEX);
        return (size - 1) - i;
    }

    @Override // java.util.AbstractList, java.util.List
    public final void add(int i, Object obj) {
        List list = this.zza;
        int size = size();
        zzagg.zzb(i, size, FirebaseAnalytics.Param.INDEX);
        list.add(size - i, obj);
    }

    @Override // java.util.AbstractList, java.util.AbstractCollection, java.util.Collection, java.util.List
    public final void clear() {
        this.zza.clear();
    }

    @Override // java.util.AbstractList, java.util.List
    public final Object get(int i) {
        return this.zza.get(zzb(i));
    }

    @Override // java.util.AbstractList, java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.List
    public final Iterator iterator() {
        return listIterator();
    }

    @Override // java.util.AbstractList, java.util.List
    public final ListIterator listIterator(int i) {
        int size = size();
        zzagg.zzb(i, size, FirebaseAnalytics.Param.INDEX);
        return new zzako(this, this.zza.listIterator(size - i));
    }

    @Override // java.util.AbstractList, java.util.List
    public final Object remove(int i) {
        return this.zza.remove(zzb(i));
    }

    @Override // java.util.AbstractList
    public final void removeRange(int i, int i2) {
        subList(i, i2).clear();
    }

    @Override // java.util.AbstractList, java.util.List
    public final Object set(int i, Object obj) {
        return this.zza.set(zzb(i), obj);
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final int size() {
        return this.zza.size();
    }

    @Override // java.util.AbstractList, java.util.List
    public final List subList(int i, int i2) {
        zzagg.zzi(i, i2, size());
        List list = this.zza;
        int size = size();
        zzagg.zzb(i2, size, FirebaseAnalytics.Param.INDEX);
        int size2 = size();
        zzagg.zzb(i, size2, FirebaseAnalytics.Param.INDEX);
        return zzakq.zza(list.subList(size - i2, size2 - i));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final List zza() {
        return this.zza;
    }
}
