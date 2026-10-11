package com.google.android.gms.internal.mlkit_vision_digital_ink;

import java.util.Collection;
import java.util.ConcurrentModificationException;
import java.util.Iterator;
import java.util.List;

/* loaded from: classes5.dex */
class zzahs implements Iterator {
    final Iterator zza;
    final Collection zzb;
    final /* synthetic */ zzaht zzc;

    public zzahs(zzaht zzahtVar, Iterator it2) {
        this.zzc = zzahtVar;
        this.zzb = zzahtVar.zzb;
        this.zza = it2;
    }

    @Override // java.util.Iterator
    public final boolean hasNext() {
        zza();
        return this.zza.hasNext();
    }

    @Override // java.util.Iterator
    public final Object next() {
        zza();
        return this.zza.next();
    }

    @Override // java.util.Iterator
    public final void remove() {
        this.zza.remove();
        zzahx.zze(this.zzc.zze);
        this.zzc.zzc();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void zza() {
        this.zzc.zzb();
        if (this.zzc.zzb != this.zzb) {
            throw new ConcurrentModificationException();
        }
    }

    public zzahs(zzaht zzahtVar) {
        Iterator it2;
        this.zzc = zzahtVar;
        Collection collection = zzahtVar.zzb;
        this.zzb = collection;
        if (collection instanceof List) {
            it2 = ((List) collection).listIterator();
        } else {
            it2 = collection.iterator();
        }
        this.zza = it2;
    }
}
