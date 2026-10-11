package com.google.android.gms.internal.mlkit_vision_digital_ink;

import java.util.AbstractSet;
import java.util.Iterator;
import java.util.Map;
import javax.annotation.CheckForNull;

/* loaded from: classes5.dex */
final class zzaiq extends AbstractSet {
    final /* synthetic */ zzaiv zza;

    public zzaiq(zzaiv zzaivVar) {
        this.zza = zzaivVar;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public final void clear() {
        this.zza.clear();
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public final boolean contains(@CheckForNull Object obj) {
        int zzq;
        Map zzk = this.zza.zzk();
        if (zzk != null) {
            return zzk.entrySet().contains(obj);
        }
        if (obj instanceof Map.Entry) {
            Map.Entry entry = (Map.Entry) obj;
            zzq = this.zza.zzq(entry.getKey());
            if (zzq != -1) {
                Object[] objArr = this.zza.zzc;
                objArr.getClass();
                if (zzaga.zza(objArr[zzq], entry.getValue())) {
                    return true;
                }
            }
        }
        return false;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.Set
    public final Iterator iterator() {
        zzaiv zzaivVar = this.zza;
        Map zzk = zzaivVar.zzk();
        return zzk != null ? zzk.entrySet().iterator() : new zzaio(zzaivVar);
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public final boolean remove(@CheckForNull Object obj) {
        int zzp;
        Map zzk = this.zza.zzk();
        if (zzk != null) {
            return zzk.entrySet().remove(obj);
        }
        if (!(obj instanceof Map.Entry)) {
            return false;
        }
        Map.Entry entry = (Map.Entry) obj;
        zzaiv zzaivVar = this.zza;
        if (zzaivVar.zzo()) {
            return false;
        }
        zzp = zzaivVar.zzp();
        Object key = entry.getKey();
        Object value = entry.getValue();
        Object zzj = zzaiv.zzj(this.zza);
        zzaiv zzaivVar2 = this.zza;
        int[] iArr = zzaivVar2.zza;
        iArr.getClass();
        Object[] objArr = zzaivVar2.zzb;
        objArr.getClass();
        Object[] objArr2 = zzaivVar2.zzc;
        objArr2.getClass();
        int zzb = zzaiy.zzb(key, value, zzp, zzj, iArr, objArr, objArr2);
        if (zzb == -1) {
            return false;
        }
        this.zza.zzn(zzb, zzp);
        zzaiv.zzb(this.zza);
        this.zza.zzl();
        return true;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public final int size() {
        return this.zza.size();
    }
}
