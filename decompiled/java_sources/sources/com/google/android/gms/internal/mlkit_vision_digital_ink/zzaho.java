package com.google.android.gms.internal.mlkit_vision_digital_ink;

import java.util.Collection;
import java.util.Iterator;
import java.util.Map;
import javax.annotation.CheckForNull;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes5.dex */
public abstract class zzaho implements Iterator {
    final Iterator zza;

    @CheckForNull
    Object zzb;

    @CheckForNull
    Collection zzc;
    Iterator zzd;
    final /* synthetic */ zzahx zze;

    public zzaho(zzahx zzahxVar) {
        Map map;
        this.zze = zzahxVar;
        map = zzahxVar.zza;
        this.zza = map.entrySet().iterator();
        this.zzb = null;
        this.zzc = null;
        this.zzd = zzakk.INSTANCE;
    }

    @Override // java.util.Iterator
    public final boolean hasNext() {
        return this.zza.hasNext() || this.zzd.hasNext();
    }

    @Override // java.util.Iterator
    public final Object next() {
        if (!this.zzd.hasNext()) {
            Map.Entry entry = (Map.Entry) this.zza.next();
            this.zzb = entry.getKey();
            Collection collection = (Collection) entry.getValue();
            this.zzc = collection;
            this.zzd = collection.iterator();
        }
        return zza(this.zzb, this.zzd.next());
    }

    @Override // java.util.Iterator
    public final void remove() {
        this.zzd.remove();
        Collection collection = this.zzc;
        collection.getClass();
        if (collection.isEmpty()) {
            this.zza.remove();
        }
        zzahx.zze(this.zze);
    }

    public abstract Object zza(Object obj, Object obj2);
}
