package com.google.android.gms.internal.mlkit_vision_digital_ink;

import java.util.ConcurrentModificationException;
import java.util.Iterator;
import java.util.NoSuchElementException;

/* loaded from: classes5.dex */
abstract class zzair implements Iterator {
    int zzb;
    int zzc;
    int zzd;
    final /* synthetic */ zzaiv zze;

    public /* synthetic */ zzair(zzaiv zzaivVar, zzain zzainVar) {
        int i;
        this.zze = zzaivVar;
        i = zzaivVar.zzf;
        this.zzb = i;
        this.zzc = zzaivVar.zze();
        this.zzd = -1;
    }

    private final void zzb() {
        int i;
        i = this.zze.zzf;
        if (i != this.zzb) {
            throw new ConcurrentModificationException();
        }
    }

    @Override // java.util.Iterator
    public final boolean hasNext() {
        return this.zzc >= 0;
    }

    @Override // java.util.Iterator
    public final Object next() {
        zzb();
        if (!hasNext()) {
            throw new NoSuchElementException();
        }
        int i = this.zzc;
        this.zzd = i;
        Object zza = zza(i);
        this.zzc = this.zze.zzf(this.zzc);
        return zza;
    }

    @Override // java.util.Iterator
    public final void remove() {
        zzb();
        zzagg.zzk(this.zzd >= 0, "no calls to next() since the last call to remove()");
        this.zzb += 32;
        zzaiv zzaivVar = this.zze;
        int i = this.zzd;
        Object[] objArr = zzaivVar.zzb;
        objArr.getClass();
        zzaivVar.remove(objArr[i]);
        this.zzc--;
        this.zzd = -1;
    }

    public abstract Object zza(int i);
}
