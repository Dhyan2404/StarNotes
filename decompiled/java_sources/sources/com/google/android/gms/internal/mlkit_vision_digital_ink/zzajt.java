package com.google.android.gms.internal.mlkit_vision_digital_ink;

import java.util.Collection;
import java.util.Map;
import java.util.Set;
import javax.annotation.CheckForNull;

/* loaded from: classes5.dex */
final class zzajt extends zzajx {
    final /* synthetic */ zzaju zza;

    public zzajt(zzaju zzajuVar) {
        this.zza = zzajuVar;
    }

    @Override // com.google.android.gms.internal.mlkit_vision_digital_ink.zzajx, com.google.android.gms.internal.mlkit_vision_digital_ink.zzajg, java.util.AbstractCollection, java.util.Collection
    public final boolean contains(@CheckForNull Object obj) {
        return this.zza.map.containsKey(obj);
    }

    @Override // java.util.AbstractCollection, java.util.Collection, com.google.android.gms.internal.mlkit_vision_digital_ink.zzale
    public final int size() {
        return this.zza.size;
    }

    @Override // com.google.android.gms.internal.mlkit_vision_digital_ink.zzale
    public final int zza(@CheckForNull Object obj) {
        Collection collection = (Collection) this.zza.map.get(obj);
        if (collection == null) {
            return 0;
        }
        return collection.size();
    }

    @Override // com.google.android.gms.internal.mlkit_vision_digital_ink.zzajx, com.google.android.gms.internal.mlkit_vision_digital_ink.zzale
    public final /* synthetic */ Set zzg() {
        return this.zza.map.keySet();
    }

    @Override // com.google.android.gms.internal.mlkit_vision_digital_ink.zzajg
    public final boolean zzm() {
        throw null;
    }

    @Override // com.google.android.gms.internal.mlkit_vision_digital_ink.zzajx
    public final zzaka zzo() {
        return this.zza.map.keySet();
    }

    @Override // com.google.android.gms.internal.mlkit_vision_digital_ink.zzajx
    public final zzald zzp(int i) {
        Map.Entry entry = (Map.Entry) this.zza.map.entrySet().zzk().get(i);
        return new zzalh(entry.getKey(), ((Collection) entry.getValue()).size());
    }
}
