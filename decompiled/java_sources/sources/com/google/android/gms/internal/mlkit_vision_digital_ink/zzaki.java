package com.google.android.gms.internal.mlkit_vision_digital_ink;

import java.util.NoSuchElementException;

/* loaded from: classes5.dex */
final class zzaki extends zzalx {
    boolean zza;
    final /* synthetic */ Object zzb;

    public zzaki(Object obj) {
        this.zzb = obj;
    }

    @Override // java.util.Iterator
    public final boolean hasNext() {
        return !this.zza;
    }

    @Override // java.util.Iterator
    public final Object next() {
        if (this.zza) {
            throw new NoSuchElementException();
        }
        this.zza = true;
        return this.zzb;
    }
}
