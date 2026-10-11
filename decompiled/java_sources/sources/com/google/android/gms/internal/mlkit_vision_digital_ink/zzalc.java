package com.google.android.gms.internal.mlkit_vision_digital_ink;

import java.util.Collection;
import java.util.Iterator;
import java.util.Set;
import javax.annotation.CheckForNull;

/* loaded from: classes5.dex */
final class zzalc extends zzaie {
    final zzaky zza;

    public zzalc(zzaky zzakyVar) {
        this.zza = zzakyVar;
    }

    @Override // java.util.AbstractCollection, java.util.Collection
    public final void clear() {
        this.zza.zzq();
    }

    @Override // com.google.android.gms.internal.mlkit_vision_digital_ink.zzaie, java.util.AbstractCollection, java.util.Collection
    public final boolean contains(@CheckForNull Object obj) {
        return this.zza.zzr(obj);
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, com.google.android.gms.internal.mlkit_vision_digital_ink.zzale
    public final Iterator iterator() {
        return new zzakr(this.zza.zzu().iterator());
    }

    @Override // java.util.AbstractCollection, java.util.Collection, com.google.android.gms.internal.mlkit_vision_digital_ink.zzale
    public final int size() {
        return this.zza.zzh();
    }

    @Override // com.google.android.gms.internal.mlkit_vision_digital_ink.zzale
    public final int zza(@CheckForNull Object obj) {
        Collection collection = (Collection) zzakx.zza(this.zza.zzv(), obj);
        if (collection == null) {
            return 0;
        }
        return collection.size();
    }

    @Override // com.google.android.gms.internal.mlkit_vision_digital_ink.zzaie
    public final int zzb() {
        return this.zza.zzv().size();
    }

    @Override // com.google.android.gms.internal.mlkit_vision_digital_ink.zzaie
    public final Iterator zzc() {
        return new zzalb(this, this.zza.zzv().entrySet().iterator());
    }

    @Override // com.google.android.gms.internal.mlkit_vision_digital_ink.zzaie, com.google.android.gms.internal.mlkit_vision_digital_ink.zzale
    public final int zze(@CheckForNull Object obj, int i) {
        zzaij.zza(i, "occurrences");
        if (i == 0) {
            return zza(obj);
        }
        Collection collection = (Collection) zzakx.zza(this.zza.zzv(), obj);
        if (collection == null) {
            return 0;
        }
        int size = collection.size();
        if (i >= size) {
            collection.clear();
        } else {
            Iterator it2 = collection.iterator();
            for (int i2 = 0; i2 < i; i2++) {
                it2.next();
                it2.remove();
            }
        }
        return size;
    }

    @Override // com.google.android.gms.internal.mlkit_vision_digital_ink.zzaie, com.google.android.gms.internal.mlkit_vision_digital_ink.zzale
    public final Set zzg() {
        return this.zza.zzw();
    }
}
