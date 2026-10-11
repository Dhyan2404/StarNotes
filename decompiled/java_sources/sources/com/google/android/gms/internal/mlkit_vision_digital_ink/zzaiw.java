package com.google.android.gms.internal.mlkit_vision_digital_ink;

import java.util.ConcurrentModificationException;
import java.util.Iterator;
import java.util.NoSuchElementException;

/* loaded from: classes5.dex */
final class zzaiw implements Iterator {
    int zza;
    int zzb;
    int zzc;
    final /* synthetic */ zzaix zzd;

    public zzaiw(zzaix zzaixVar) {
        int i;
        this.zzd = zzaixVar;
        i = zzaixVar.zzd;
        this.zza = i;
        this.zzb = zzaixVar.zzb();
        this.zzc = -1;
    }

    private final void zza() {
        int i;
        i = this.zzd.zzd;
        if (i != this.zza) {
            throw new ConcurrentModificationException();
        }
    }

    @Override // java.util.Iterator
    public final boolean hasNext() {
        return this.zzb >= 0;
    }

    @Override // java.util.Iterator
    public final Object next() {
        zza();
        if (!hasNext()) {
            throw new NoSuchElementException();
        }
        int i = this.zzb;
        this.zzc = i;
        zzaix zzaixVar = this.zzd;
        Object[] objArr = zzaixVar.zza;
        objArr.getClass();
        Object obj = objArr[i];
        this.zzb = zzaixVar.zzc(i);
        return obj;
    }

    @Override // java.util.Iterator
    public final void remove() {
        zza();
        zzagg.zzk(this.zzc >= 0, "no calls to next() since the last call to remove()");
        this.zza += 32;
        zzaix zzaixVar = this.zzd;
        int i = this.zzc;
        Object[] objArr = zzaixVar.zza;
        objArr.getClass();
        zzaixVar.remove(objArr[i]);
        this.zzb--;
        this.zzc = -1;
    }
}
