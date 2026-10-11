package com.google.android.gms.internal.mlkit_vision_digital_ink;

import java.util.Iterator;
import javax.annotation.CheckForNull;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes5.dex */
public final class zzalv extends zzaka {
    final transient Object zza;

    public zzalv(Object obj) {
        obj.getClass();
        this.zza = obj;
    }

    @Override // com.google.android.gms.internal.mlkit_vision_digital_ink.zzajg, java.util.AbstractCollection, java.util.Collection
    public final boolean contains(@CheckForNull Object obj) {
        return this.zza.equals(obj);
    }

    @Override // com.google.android.gms.internal.mlkit_vision_digital_ink.zzaka, java.util.Collection, java.util.Set
    public final int hashCode() {
        return this.zza.hashCode();
    }

    @Override // com.google.android.gms.internal.mlkit_vision_digital_ink.zzaka, com.google.android.gms.internal.mlkit_vision_digital_ink.zzajg, java.util.AbstractCollection, java.util.Collection, java.lang.Iterable
    public final /* synthetic */ Iterator iterator() {
        return new zzaki(this.zza);
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public final int size() {
        return 1;
    }

    @Override // java.util.AbstractCollection
    public final String toString() {
        return '[' + this.zza.toString() + ']';
    }

    @Override // com.google.android.gms.internal.mlkit_vision_digital_ink.zzajg
    public final int zzb(Object[] objArr, int i) {
        objArr[0] = this.zza;
        return 1;
    }

    @Override // com.google.android.gms.internal.mlkit_vision_digital_ink.zzaka, com.google.android.gms.internal.mlkit_vision_digital_ink.zzajg
    public final zzajm zzk() {
        return zzajm.zzr(this.zza);
    }

    @Override // com.google.android.gms.internal.mlkit_vision_digital_ink.zzaka, com.google.android.gms.internal.mlkit_vision_digital_ink.zzajg
    /* renamed from: zzl */
    public final zzalx iterator() {
        return new zzaki(this.zza);
    }

    @Override // com.google.android.gms.internal.mlkit_vision_digital_ink.zzajg
    public final boolean zzm() {
        return false;
    }
}
