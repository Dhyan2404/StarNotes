package com.google.android.gms.internal.mlkit_vision_digital_ink;

import java.util.Iterator;
import java.util.NoSuchElementException;

/* loaded from: classes5.dex */
final class zzanw implements Iterator {
    final /* synthetic */ zzanx zza;
    private int zzb = 0;

    public zzanw(zzanx zzanxVar) {
        this.zza = zzanxVar;
    }

    @Override // java.util.Iterator
    public final boolean hasNext() {
        int i = this.zzb;
        zzanx zzanxVar = this.zza;
        return i < zzanxVar.zza() - zzanxVar.zzb();
    }

    @Override // java.util.Iterator
    public final Object next() {
        Object[] objArr;
        int i = this.zzb;
        zzanx zzanxVar = this.zza;
        if (i >= zzanxVar.zza() - zzanxVar.zzb()) {
            throw new NoSuchElementException();
        }
        zzanx zzanxVar2 = this.zza;
        objArr = zzanxVar2.zzb.zzb;
        Object obj = objArr[zzanxVar2.zzb() + i];
        this.zzb = i + 1;
        return obj;
    }

    @Override // java.util.Iterator
    public final void remove() {
        throw new UnsupportedOperationException();
    }
}
