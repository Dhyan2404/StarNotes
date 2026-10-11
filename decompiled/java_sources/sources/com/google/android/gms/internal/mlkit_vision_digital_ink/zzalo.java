package com.google.android.gms.internal.mlkit_vision_digital_ink;

import java.util.Iterator;
import javax.annotation.CheckForNull;

/* loaded from: classes5.dex */
final class zzalo extends zzaka {
    private final transient zzajp zza;
    private final transient zzajm zzb;

    public zzalo(zzajp zzajpVar, zzajm zzajmVar) {
        this.zza = zzajpVar;
        this.zzb = zzajmVar;
    }

    @Override // com.google.android.gms.internal.mlkit_vision_digital_ink.zzajg, java.util.AbstractCollection, java.util.Collection
    public final boolean contains(@CheckForNull Object obj) {
        return this.zza.get(obj) != null;
    }

    @Override // com.google.android.gms.internal.mlkit_vision_digital_ink.zzaka, com.google.android.gms.internal.mlkit_vision_digital_ink.zzajg, java.util.AbstractCollection, java.util.Collection, java.lang.Iterable
    public final /* synthetic */ Iterator iterator() {
        return this.zzb.listIterator(0);
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public final int size() {
        return this.zza.size();
    }

    @Override // com.google.android.gms.internal.mlkit_vision_digital_ink.zzajg
    public final int zzb(Object[] objArr, int i) {
        return this.zzb.zzb(objArr, 0);
    }

    @Override // com.google.android.gms.internal.mlkit_vision_digital_ink.zzaka, com.google.android.gms.internal.mlkit_vision_digital_ink.zzajg
    public final zzajm zzk() {
        return this.zzb;
    }

    @Override // com.google.android.gms.internal.mlkit_vision_digital_ink.zzaka, com.google.android.gms.internal.mlkit_vision_digital_ink.zzajg
    /* renamed from: zzl */
    public final zzalx iterator() {
        return this.zzb.listIterator(0);
    }

    @Override // com.google.android.gms.internal.mlkit_vision_digital_ink.zzajg
    public final boolean zzm() {
        return true;
    }
}
