package com.google.android.gms.internal.mlkit_vision_digital_ink;

import java.util.List;
import java.util.ListIterator;

/* loaded from: classes5.dex */
final class zzahu extends zzahs implements ListIterator {
    final /* synthetic */ zzahv zzd;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public zzahu(zzahv zzahvVar) {
        super(zzahvVar);
        this.zzd = zzahvVar;
    }

    @Override // java.util.ListIterator
    public final void add(Object obj) {
        boolean isEmpty = this.zzd.isEmpty();
        zza();
        ((ListIterator) this.zza).add(obj);
        zzahx.zzd(this.zzd.zzf);
        if (isEmpty) {
            this.zzd.zza();
        }
    }

    @Override // java.util.ListIterator
    public final boolean hasPrevious() {
        zza();
        return ((ListIterator) this.zza).hasPrevious();
    }

    @Override // java.util.ListIterator
    public final int nextIndex() {
        zza();
        return ((ListIterator) this.zza).nextIndex();
    }

    @Override // java.util.ListIterator
    public final Object previous() {
        zza();
        return ((ListIterator) this.zza).previous();
    }

    @Override // java.util.ListIterator
    public final int previousIndex() {
        zza();
        return ((ListIterator) this.zza).previousIndex();
    }

    @Override // java.util.ListIterator
    public final void set(Object obj) {
        zza();
        ((ListIterator) this.zza).set(obj);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public zzahu(zzahv zzahvVar, int i) {
        super(zzahvVar, ((List) zzahvVar.zzb).listIterator(i));
        this.zzd = zzahvVar;
    }
}
