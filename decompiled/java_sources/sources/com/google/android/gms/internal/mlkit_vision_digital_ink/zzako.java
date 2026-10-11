package com.google.android.gms.internal.mlkit_vision_digital_ink;

import com.google.firebase.analytics.FirebaseAnalytics;
import java.util.ListIterator;
import java.util.NoSuchElementException;

/* loaded from: classes5.dex */
final class zzako implements ListIterator {
    boolean zza;
    final /* synthetic */ ListIterator zzb;
    final /* synthetic */ zzakp zzc;

    public zzako(zzakp zzakpVar, ListIterator listIterator) {
        this.zzc = zzakpVar;
        this.zzb = listIterator;
    }

    @Override // java.util.ListIterator
    public final void add(Object obj) {
        this.zzb.add(obj);
        this.zzb.previous();
        this.zza = false;
    }

    @Override // java.util.ListIterator, java.util.Iterator
    public final boolean hasNext() {
        return this.zzb.hasPrevious();
    }

    @Override // java.util.ListIterator
    public final boolean hasPrevious() {
        return this.zzb.hasNext();
    }

    @Override // java.util.ListIterator, java.util.Iterator
    public final Object next() {
        if (!hasNext()) {
            throw new NoSuchElementException();
        }
        this.zza = true;
        return this.zzb.previous();
    }

    @Override // java.util.ListIterator
    public final int nextIndex() {
        zzakp zzakpVar = this.zzc;
        int nextIndex = this.zzb.nextIndex();
        int size = zzakpVar.size();
        zzagg.zzb(nextIndex, size, FirebaseAnalytics.Param.INDEX);
        return size - nextIndex;
    }

    @Override // java.util.ListIterator
    public final Object previous() {
        if (!hasPrevious()) {
            throw new NoSuchElementException();
        }
        this.zza = true;
        return this.zzb.next();
    }

    @Override // java.util.ListIterator
    public final int previousIndex() {
        return nextIndex() - 1;
    }

    @Override // java.util.ListIterator, java.util.Iterator
    public final void remove() {
        zzagg.zzk(this.zza, "no calls to next() since the last call to remove()");
        this.zzb.remove();
        this.zza = false;
    }

    @Override // java.util.ListIterator
    public final void set(Object obj) {
        zzagg.zzj(this.zza);
        this.zzb.set(obj);
    }
}
