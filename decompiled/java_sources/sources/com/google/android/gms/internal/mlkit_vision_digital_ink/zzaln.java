package com.google.android.gms.internal.mlkit_vision_digital_ink;

import java.util.Iterator;
import java.util.Map;
import javax.annotation.CheckForNull;

/* loaded from: classes5.dex */
final class zzaln extends zzaka {
    private final transient zzajp zza;
    private final transient Object[] zzb;
    private final transient int zzc;

    public zzaln(zzajp zzajpVar, Object[] objArr, int i, int i2) {
        this.zza = zzajpVar;
        this.zzb = objArr;
        this.zzc = i2;
    }

    @Override // com.google.android.gms.internal.mlkit_vision_digital_ink.zzajg, java.util.AbstractCollection, java.util.Collection
    public final boolean contains(@CheckForNull Object obj) {
        if (obj instanceof Map.Entry) {
            Map.Entry entry = (Map.Entry) obj;
            Object key = entry.getKey();
            Object value = entry.getValue();
            if (value != null && value.equals(this.zza.get(key))) {
                return true;
            }
        }
        return false;
    }

    @Override // com.google.android.gms.internal.mlkit_vision_digital_ink.zzaka, com.google.android.gms.internal.mlkit_vision_digital_ink.zzajg, java.util.AbstractCollection, java.util.Collection, java.lang.Iterable
    public final /* synthetic */ Iterator iterator() {
        return zzk().listIterator(0);
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public final int size() {
        return this.zzc;
    }

    @Override // com.google.android.gms.internal.mlkit_vision_digital_ink.zzajg
    public final int zzb(Object[] objArr, int i) {
        return zzk().zzb(objArr, 0);
    }

    @Override // com.google.android.gms.internal.mlkit_vision_digital_ink.zzaka
    public final zzajm zze() {
        return new zzalm(this);
    }

    @Override // com.google.android.gms.internal.mlkit_vision_digital_ink.zzaka, com.google.android.gms.internal.mlkit_vision_digital_ink.zzajg
    /* renamed from: zzl */
    public final zzalx iterator() {
        return zzk().listIterator(0);
    }

    @Override // com.google.android.gms.internal.mlkit_vision_digital_ink.zzajg
    public final boolean zzm() {
        return true;
    }
}
