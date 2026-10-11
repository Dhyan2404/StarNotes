package com.google.android.gms.internal.mlkit_vision_digital_ink;

import java.util.AbstractList;
import java.util.Iterator;
import java.util.List;
import java.util.ListIterator;
import java.util.RandomAccess;

@Deprecated
/* loaded from: classes5.dex */
public final class zzbxh extends AbstractList implements RandomAccess, zzbvb {
    private final zzbvb zza;

    public zzbxh(zzbvb zzbvbVar) {
        this.zza = zzbvbVar;
    }

    @Override // java.util.AbstractList, java.util.List
    public final /* bridge */ /* synthetic */ Object get(int i) {
        return ((zzbva) this.zza).get(i);
    }

    @Override // java.util.AbstractList, java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.List
    public final Iterator iterator() {
        return new zzbxg(this);
    }

    @Override // java.util.AbstractList, java.util.List
    public final ListIterator listIterator(int i) {
        return new zzbxf(this, i);
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final int size() {
        return this.zza.size();
    }

    @Override // com.google.android.gms.internal.mlkit_vision_digital_ink.zzbvb
    public final zzbvb zze() {
        return this;
    }

    @Override // com.google.android.gms.internal.mlkit_vision_digital_ink.zzbvb
    public final Object zzf(int i) {
        return this.zza.zzf(i);
    }

    @Override // com.google.android.gms.internal.mlkit_vision_digital_ink.zzbvb
    public final List zzh() {
        return this.zza.zzh();
    }

    @Override // com.google.android.gms.internal.mlkit_vision_digital_ink.zzbvb
    public final void zzi(zzbsz zzbszVar) {
        throw new UnsupportedOperationException();
    }
}
