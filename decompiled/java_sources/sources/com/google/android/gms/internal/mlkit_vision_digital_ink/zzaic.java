package com.google.android.gms.internal.mlkit_vision_digital_ink;

import java.util.Collection;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;
import javax.annotation.CheckForNull;

/* loaded from: classes5.dex */
abstract class zzaic<K, V> implements zzaky<K, V> {

    @CheckForNull
    private transient Collection zza;

    @CheckForNull
    private transient Set zzb;

    @CheckForNull
    private transient zzale zzc;

    @CheckForNull
    private transient Map zzd;

    public final boolean equals(@CheckForNull Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj instanceof zzaky) {
            return zzv().equals(((zzaky) obj).zzv());
        }
        return false;
    }

    public final int hashCode() {
        return zzv().hashCode();
    }

    public final String toString() {
        return zzv().toString();
    }

    public abstract zzale zzi();

    public abstract Collection zzj();

    public abstract Iterator zzk();

    abstract Map zzn();

    abstract Set zzo();

    @Override // com.google.android.gms.internal.mlkit_vision_digital_ink.zzaky
    public boolean zzs(Object obj, Object obj2) {
        throw null;
    }

    @Override // com.google.android.gms.internal.mlkit_vision_digital_ink.zzaky
    public zzale zzt() {
        zzale zzaleVar = this.zzc;
        if (zzaleVar != null) {
            return zzaleVar;
        }
        zzale zzi = zzi();
        this.zzc = zzi;
        return zzi;
    }

    @Override // com.google.android.gms.internal.mlkit_vision_digital_ink.zzaky
    public Collection zzu() {
        Collection collection = this.zza;
        if (collection != null) {
            return collection;
        }
        Collection zzj = zzj();
        this.zza = zzj;
        return zzj;
    }

    @Override // com.google.android.gms.internal.mlkit_vision_digital_ink.zzaky
    public Map zzv() {
        Map map = this.zzd;
        if (map != null) {
            return map;
        }
        Map zzn = zzn();
        this.zzd = zzn;
        return zzn;
    }

    @Override // com.google.android.gms.internal.mlkit_vision_digital_ink.zzaky
    public Set zzw() {
        Set set = this.zzb;
        if (set != null) {
            return set;
        }
        Set zzo = zzo();
        this.zzb = zzo;
        return zzo;
    }

    @Override // com.google.android.gms.internal.mlkit_vision_digital_ink.zzaky
    public boolean zzx(@CheckForNull Object obj, @CheckForNull Object obj2) {
        Collection collection = (Collection) zzv().get(obj);
        return collection != null && collection.contains(obj2);
    }

    @Override // com.google.android.gms.internal.mlkit_vision_digital_ink.zzaky
    public boolean zzy(@CheckForNull Object obj, @CheckForNull Object obj2) {
        Collection collection = (Collection) zzv().get(obj);
        return collection != null && collection.remove(obj2);
    }
}
