package com.google.android.recaptcha.internal;

import java.util.Iterator;

/* loaded from: classes6.dex */
final class zzfq implements Iterator {
    boolean zza = true;
    final /* synthetic */ Iterator zzb;

    public zzfq(zzfr zzfrVar, Iterator it2) {
        this.zzb = it2;
    }

    @Override // java.util.Iterator
    public final boolean hasNext() {
        return this.zzb.hasNext();
    }

    @Override // java.util.Iterator
    public final Object next() {
        Object next = this.zzb.next();
        this.zza = false;
        return next;
    }

    @Override // java.util.Iterator
    public final void remove() {
        zzff.zze(!this.zza, "no calls to next() since the last call to remove()");
        this.zzb.remove();
    }
}
