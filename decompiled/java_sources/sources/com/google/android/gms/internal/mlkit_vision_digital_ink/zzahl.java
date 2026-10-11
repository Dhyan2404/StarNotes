package com.google.android.gms.internal.mlkit_vision_digital_ink;

import java.util.Iterator;
import java.util.Map;
import javax.annotation.CheckForNull;

/* loaded from: classes5.dex */
final class zzahl extends zzakt {
    final /* synthetic */ zzahn zza;

    public zzahl(zzahn zzahnVar) {
        this.zza = zzahnVar;
    }

    @Override // com.google.android.gms.internal.mlkit_vision_digital_ink.zzakt, java.util.AbstractCollection, java.util.Collection, java.util.Set
    public final boolean contains(@CheckForNull Object obj) {
        return zzaim.zzc(this.zza.zza.entrySet(), obj);
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.Set
    public final Iterator iterator() {
        return new zzahm(this.zza);
    }

    @Override // com.google.android.gms.internal.mlkit_vision_digital_ink.zzakt, java.util.AbstractCollection, java.util.Collection, java.util.Set
    public final boolean remove(@CheckForNull Object obj) {
        if (!contains(obj)) {
            return false;
        }
        Map.Entry entry = (Map.Entry) obj;
        entry.getClass();
        zzahx.zzp(this.zza.zzb, entry.getKey());
        return true;
    }

    @Override // com.google.android.gms.internal.mlkit_vision_digital_ink.zzakt
    public final Map zza() {
        return this.zza;
    }
}
