package com.google.android.gms.internal.mlkit_vision_digital_ink;

import java.util.Collection;
import java.util.Iterator;
import java.util.Map;
import javax.annotation.CheckForNull;

/* loaded from: classes5.dex */
final class zzahm implements Iterator {
    final Iterator zza;

    @CheckForNull
    Collection zzb;
    final /* synthetic */ zzahn zzc;

    public zzahm(zzahn zzahnVar) {
        this.zzc = zzahnVar;
        this.zza = zzahnVar.zza.entrySet().iterator();
    }

    @Override // java.util.Iterator
    public final boolean hasNext() {
        return this.zza.hasNext();
    }

    @Override // java.util.Iterator
    public final /* bridge */ /* synthetic */ Object next() {
        Map.Entry entry = (Map.Entry) this.zza.next();
        this.zzb = (Collection) entry.getValue();
        zzahn zzahnVar = this.zzc;
        Object key = entry.getKey();
        return new zzajh(key, zzahnVar.zzb.zzc(key, (Collection) entry.getValue()));
    }

    @Override // java.util.Iterator
    public final void remove() {
        zzagg.zzk(this.zzb != null, "no calls to next() since the last call to remove()");
        this.zza.remove();
        zzahx.zzg(this.zzc.zzb, this.zzb.size());
        this.zzb.clear();
        this.zzb = null;
    }
}
