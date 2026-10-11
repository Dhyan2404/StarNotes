package com.google.android.gms.internal.mlkit_vision_digital_ink;

import java.util.Iterator;
import java.util.Map;
import javax.annotation.CheckForNull;

/* loaded from: classes5.dex */
final class zzajs extends zzajg {
    final zzaju zza;

    public zzajs(zzaju zzajuVar) {
        this.zza = zzajuVar;
    }

    @Override // com.google.android.gms.internal.mlkit_vision_digital_ink.zzajg, java.util.AbstractCollection, java.util.Collection
    public final boolean contains(@CheckForNull Object obj) {
        if (!(obj instanceof Map.Entry)) {
            return false;
        }
        Map.Entry entry = (Map.Entry) obj;
        return this.zza.zzx(entry.getKey(), entry.getValue());
    }

    @Override // com.google.android.gms.internal.mlkit_vision_digital_ink.zzajg, java.util.AbstractCollection, java.util.Collection, java.lang.Iterable
    public final /* synthetic */ Iterator iterator() {
        return new zzajq(this.zza);
    }

    @Override // java.util.AbstractCollection, java.util.Collection
    public final int size() {
        return this.zza.size;
    }

    @Override // com.google.android.gms.internal.mlkit_vision_digital_ink.zzajg
    /* renamed from: zzl */
    public final zzalx iterator() {
        return new zzajq(this.zza);
    }

    @Override // com.google.android.gms.internal.mlkit_vision_digital_ink.zzajg
    public final boolean zzm() {
        throw null;
    }
}
