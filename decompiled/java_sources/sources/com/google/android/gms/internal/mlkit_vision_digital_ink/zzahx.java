package com.google.android.gms.internal.mlkit_vision_digital_ink;

import java.io.Serializable;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.RandomAccess;
import java.util.Set;
import javax.annotation.CheckForNull;

/* loaded from: classes5.dex */
public abstract class zzahx extends zzaic implements Serializable {
    private final transient Map zza;
    private transient int zzb;

    public zzahx(Map map) {
        zzagg.zze(map.isEmpty());
        this.zza = map;
    }

    public static /* synthetic */ int zzd(zzahx zzahxVar) {
        int i = zzahxVar.zzb;
        zzahxVar.zzb = i + 1;
        return i;
    }

    public static /* synthetic */ int zze(zzahx zzahxVar) {
        int i = zzahxVar.zzb;
        zzahxVar.zzb = i - 1;
        return i;
    }

    public static /* synthetic */ int zzf(zzahx zzahxVar, int i) {
        int i2 = zzahxVar.zzb + i;
        zzahxVar.zzb = i2;
        return i2;
    }

    public static /* synthetic */ int zzg(zzahx zzahxVar, int i) {
        int i2 = zzahxVar.zzb - i;
        zzahxVar.zzb = i2;
        return i2;
    }

    public static /* synthetic */ Map zzm(zzahx zzahxVar) {
        return zzahxVar.zza;
    }

    public static /* synthetic */ void zzp(zzahx zzahxVar, Object obj) {
        Object obj2;
        try {
            obj2 = zzahxVar.zza.remove(obj);
        } catch (ClassCastException | NullPointerException unused) {
            obj2 = null;
        }
        Collection collection = (Collection) obj2;
        if (collection != null) {
            int size = collection.size();
            collection.clear();
            zzahxVar.zzb -= size;
        }
    }

    public abstract Collection zza();

    @Override // com.google.android.gms.internal.mlkit_vision_digital_ink.zzaky
    public Collection zzb(Object obj) {
        Collection collection = (Collection) this.zza.get(obj);
        if (collection == null) {
            collection = zza();
        }
        return zzc(obj, collection);
    }

    public Collection zzc(Object obj, Collection collection) {
        throw null;
    }

    @Override // com.google.android.gms.internal.mlkit_vision_digital_ink.zzaky
    public final int zzh() {
        return this.zzb;
    }

    @Override // com.google.android.gms.internal.mlkit_vision_digital_ink.zzaic
    public final zzale zzi() {
        return new zzalc(this);
    }

    @Override // com.google.android.gms.internal.mlkit_vision_digital_ink.zzaic
    public final Collection zzj() {
        return this instanceof zzals ? new zzaib(this) : new zzaia(this);
    }

    @Override // com.google.android.gms.internal.mlkit_vision_digital_ink.zzaic
    public final Iterator zzk() {
        return new zzahk(this);
    }

    public final List zzl(Object obj, List list, @CheckForNull zzaht zzahtVar) {
        return list instanceof RandomAccess ? new zzahr(this, obj, list, zzahtVar) : new zzahv(this, obj, list, zzahtVar);
    }

    @Override // com.google.android.gms.internal.mlkit_vision_digital_ink.zzaic
    final Map zzn() {
        return new zzahn(this, this.zza);
    }

    @Override // com.google.android.gms.internal.mlkit_vision_digital_ink.zzaic
    final Set zzo() {
        return new zzahq(this, this.zza);
    }

    @Override // com.google.android.gms.internal.mlkit_vision_digital_ink.zzaky
    public final void zzq() {
        Iterator it2 = this.zza.values().iterator();
        while (it2.hasNext()) {
            ((Collection) it2.next()).clear();
        }
        this.zza.clear();
        this.zzb = 0;
    }

    @Override // com.google.android.gms.internal.mlkit_vision_digital_ink.zzaky
    public final boolean zzr(@CheckForNull Object obj) {
        return this.zza.containsKey(obj);
    }

    @Override // com.google.android.gms.internal.mlkit_vision_digital_ink.zzaic, com.google.android.gms.internal.mlkit_vision_digital_ink.zzaky
    public final boolean zzs(Object obj, Object obj2) {
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
