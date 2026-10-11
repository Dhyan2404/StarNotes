package com.google.android.gms.internal.mlkit_vision_text_common;

import java.io.Serializable;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.RandomAccess;
import java.util.Set;
import javax.annotation.CheckForNull;

/* loaded from: classes5.dex */
public abstract class zzal extends zzan implements Serializable {
    private transient Map zza;
    private transient int zzb;

    public zzal(Map map) {
        if (!map.isEmpty()) {
            throw new IllegalArgumentException();
        }
        this.zza = map;
    }

    public static /* bridge */ /* synthetic */ int zzd(zzal zzalVar) {
        return zzalVar.zzb;
    }

    public static /* bridge */ /* synthetic */ Map zzg(zzal zzalVar) {
        return zzalVar.zza;
    }

    public static /* bridge */ /* synthetic */ void zzj(zzal zzalVar, int i) {
        zzalVar.zzb = i;
    }

    public static /* bridge */ /* synthetic */ void zzk(zzal zzalVar, Object obj) {
        Object obj2;
        Map map = zzalVar.zza;
        map.getClass();
        try {
            obj2 = map.remove(obj);
        } catch (ClassCastException | NullPointerException unused) {
            obj2 = null;
        }
        Collection collection = (Collection) obj2;
        if (collection != null) {
            int size = collection.size();
            collection.clear();
            zzalVar.zzb -= size;
        }
    }

    public abstract Collection zza();

    public Collection zzb(Object obj, Collection collection) {
        throw null;
    }

    public final Collection zze(Object obj) {
        Collection collection = (Collection) this.zza.get(obj);
        if (collection == null) {
            collection = zza();
        }
        return zzb(obj, collection);
    }

    public final List zzf(Object obj, List list, @CheckForNull zzai zzaiVar) {
        return list instanceof RandomAccess ? new zzag(this, obj, list, zzaiVar) : new zzak(this, obj, list, zzaiVar);
    }

    @Override // com.google.android.gms.internal.mlkit_vision_text_common.zzan
    final Map zzh() {
        return new zzad(this, this.zza);
    }

    @Override // com.google.android.gms.internal.mlkit_vision_text_common.zzan
    public final Set zzi() {
        return new zzaf(this, this.zza);
    }

    public final void zzl() {
        Iterator it2 = this.zza.values().iterator();
        while (it2.hasNext()) {
            ((Collection) it2.next()).clear();
        }
        this.zza.clear();
        this.zzb = 0;
    }

    @Override // com.google.android.gms.internal.mlkit_vision_text_common.zzan, com.google.android.gms.internal.mlkit_vision_text_common.zzcc
    public final boolean zzm(Object obj, Object obj2) {
        Collection collection = (Collection) this.zza.get(obj);
        if (collection != null) {
            if (!collection.add(obj2)) {
                return false;
            }
            this.zzb++;
            return true;
        }
        Collection zza = zza();
        if (!zza.add(obj2)) {
            throw new AssertionError("New Collection violated the Collection spec");
        }
        this.zzb++;
        this.zza.put(obj, zza);
        return true;
    }
}
