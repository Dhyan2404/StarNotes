package com.google.android.gms.internal.mlkit_vision_digital_ink;

import java.util.AbstractCollection;
import java.util.Collection;
import java.util.Iterator;
import java.util.Set;
import javax.annotation.CheckForNull;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes5.dex */
public abstract class zzaie extends AbstractCollection implements zzale {

    @CheckForNull
    private transient Set zza;

    @Override // java.util.AbstractCollection, java.util.Collection
    public final boolean add(Object obj) {
        throw new UnsupportedOperationException();
    }

    @Override // java.util.AbstractCollection, java.util.Collection
    public final boolean addAll(Collection collection) {
        collection.getClass();
        if (!(collection instanceof zzale)) {
            if (collection.isEmpty()) {
                return false;
            }
            return zzakl.zzc(this, collection.iterator());
        }
        zzale zzaleVar = (zzale) collection;
        if (zzaleVar instanceof zzahy) {
            if (((zzahy) zzaleVar).isEmpty()) {
                return false;
            }
            throw null;
        }
        if (zzaleVar.isEmpty()) {
            return false;
        }
        for (zzald zzaldVar : zzaleVar.zzh()) {
            zzd(zzaldVar.zzb(), zzaldVar.zza());
        }
        return true;
    }

    @Override // java.util.AbstractCollection, java.util.Collection
    public boolean contains(@CheckForNull Object obj) {
        return zza(obj) > 0;
    }

    @Override // java.util.Collection
    public final boolean equals(@CheckForNull Object obj) {
        return zzali.zza(this, obj);
    }

    @Override // java.util.Collection
    public final int hashCode() {
        return zzh().hashCode();
    }

    @Override // java.util.AbstractCollection, java.util.Collection
    public final boolean isEmpty() {
        return zzh().isEmpty();
    }

    @Override // java.util.AbstractCollection, java.util.Collection
    public final boolean remove(@CheckForNull Object obj) {
        return zze(obj, 1) > 0;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // java.util.AbstractCollection, java.util.Collection
    public final boolean removeAll(Collection collection) {
        if (collection instanceof zzale) {
            collection = ((zzale) collection).zzg();
        }
        return zzg().removeAll(collection);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // java.util.AbstractCollection, java.util.Collection
    public final boolean retainAll(Collection collection) {
        collection.getClass();
        if (collection instanceof zzale) {
            collection = ((zzale) collection).zzg();
        }
        return zzg().retainAll(collection);
    }

    @Override // java.util.AbstractCollection
    public final String toString() {
        return zzh().toString();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public abstract int zzb();

    public abstract Iterator zzc();

    @Override // com.google.android.gms.internal.mlkit_vision_digital_ink.zzale
    public final int zzd(Object obj, int i) {
        throw new UnsupportedOperationException();
    }

    @Override // com.google.android.gms.internal.mlkit_vision_digital_ink.zzale
    public int zze(@CheckForNull Object obj, int i) {
        throw null;
    }

    @Override // com.google.android.gms.internal.mlkit_vision_digital_ink.zzale
    public final int zzf(Object obj, int i) {
        int zza = zza(obj);
        int i2 = -zza;
        if (i2 > 0) {
            zzd(obj, i2);
        } else if (i2 < 0) {
            zze(obj, -i2);
        }
        return zza;
    }

    @Override // com.google.android.gms.internal.mlkit_vision_digital_ink.zzale
    public Set zzg() {
        throw null;
    }

    @Override // com.google.android.gms.internal.mlkit_vision_digital_ink.zzale
    public final Set zzh() {
        Set set = this.zza;
        if (set != null) {
            return set;
        }
        zzaid zzaidVar = new zzaid(this);
        this.zza = zzaidVar;
        return zzaidVar;
    }

    @Override // com.google.android.gms.internal.mlkit_vision_digital_ink.zzale
    public final boolean zzi(Object obj, int i, int i2) {
        zzaij.zza(i, "oldCount");
        if (zza(obj) != i) {
            return false;
        }
        zzf(obj, 0);
        return true;
    }
}
