package com.google.android.gms.internal.mlkit_vision_digital_ink;

import java.util.AbstractList;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.List;
import java.util.RandomAccess;

/* loaded from: classes5.dex */
public final class zzbva extends zzbsg implements RandomAccess, zzbvb {

    @Deprecated
    public static final zzbvb zza;
    private static final zzbva zzb;
    private final List zzc;

    static {
        zzbva zzbvaVar = new zzbva(10);
        zzb = zzbvaVar;
        zzbvaVar.zzb();
        zza = zzbvaVar;
    }

    public zzbva() {
        this(10);
    }

    private static String zzj(Object obj) {
        return obj instanceof String ? (String) obj : obj instanceof zzbsz ? ((zzbsz) obj).zzp(zzbur.zzb) : zzbur.zzh((byte[]) obj);
    }

    @Override // com.google.android.gms.internal.mlkit_vision_digital_ink.zzbsg, java.util.AbstractList, java.util.List
    public final /* bridge */ /* synthetic */ void add(int i, Object obj) {
        zza();
        this.zzc.add(i, (String) obj);
        ((AbstractList) this).modCount++;
    }

    @Override // com.google.android.gms.internal.mlkit_vision_digital_ink.zzbsg, java.util.AbstractList, java.util.List
    public final boolean addAll(int i, Collection collection) {
        zza();
        if (collection instanceof zzbvb) {
            collection = ((zzbvb) collection).zzh();
        }
        boolean addAll = this.zzc.addAll(i, collection);
        ((AbstractList) this).modCount++;
        return addAll;
    }

    @Override // com.google.android.gms.internal.mlkit_vision_digital_ink.zzbsg, java.util.AbstractList, java.util.AbstractCollection, java.util.Collection, java.util.List
    public final void clear() {
        zza();
        this.zzc.clear();
        ((AbstractList) this).modCount++;
    }

    @Override // com.google.android.gms.internal.mlkit_vision_digital_ink.zzbsg, java.util.AbstractList, java.util.List
    public final /* bridge */ /* synthetic */ Object remove(int i) {
        zza();
        Object remove = this.zzc.remove(i);
        ((AbstractList) this).modCount++;
        return zzj(remove);
    }

    @Override // com.google.android.gms.internal.mlkit_vision_digital_ink.zzbsg, java.util.AbstractList, java.util.List
    public final /* bridge */ /* synthetic */ Object set(int i, Object obj) {
        zza();
        return zzj(this.zzc.set(i, (String) obj));
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final int size() {
        return this.zzc.size();
    }

    @Override // com.google.android.gms.internal.mlkit_vision_digital_ink.zzbuq
    public final /* bridge */ /* synthetic */ zzbuq zzd(int i) {
        if (i < size()) {
            throw new IllegalArgumentException();
        }
        ArrayList arrayList = new ArrayList(i);
        arrayList.addAll(this.zzc);
        return new zzbva(arrayList);
    }

    @Override // com.google.android.gms.internal.mlkit_vision_digital_ink.zzbvb
    public final zzbvb zze() {
        return zzc() ? new zzbxh(this) : this;
    }

    @Override // com.google.android.gms.internal.mlkit_vision_digital_ink.zzbvb
    public final Object zzf(int i) {
        return this.zzc.get(i);
    }

    @Override // java.util.AbstractList, java.util.List
    /* renamed from: zzg, reason: merged with bridge method [inline-methods] */
    public final String get(int i) {
        Object obj = this.zzc.get(i);
        if (obj instanceof String) {
            return (String) obj;
        }
        if (obj instanceof zzbsz) {
            zzbsz zzbszVar = (zzbsz) obj;
            String zzp = zzbszVar.zzp(zzbur.zzb);
            if (zzbszVar.zzi()) {
                this.zzc.set(i, zzp);
            }
            return zzp;
        }
        byte[] bArr = (byte[]) obj;
        String zzh = zzbur.zzh(bArr);
        if (zzbur.zzj(bArr)) {
            this.zzc.set(i, zzh);
        }
        return zzh;
    }

    @Override // com.google.android.gms.internal.mlkit_vision_digital_ink.zzbvb
    public final List zzh() {
        return Collections.unmodifiableList(this.zzc);
    }

    @Override // com.google.android.gms.internal.mlkit_vision_digital_ink.zzbvb
    public final void zzi(zzbsz zzbszVar) {
        zza();
        this.zzc.add(zzbszVar);
        ((AbstractList) this).modCount++;
    }

    public zzbva(int i) {
        this.zzc = new ArrayList(i);
    }

    private zzbva(ArrayList arrayList) {
        this.zzc = arrayList;
    }

    @Override // com.google.android.gms.internal.mlkit_vision_digital_ink.zzbsg, java.util.AbstractCollection, java.util.Collection, java.util.List
    public final boolean addAll(Collection collection) {
        return addAll(size(), collection);
    }
}
