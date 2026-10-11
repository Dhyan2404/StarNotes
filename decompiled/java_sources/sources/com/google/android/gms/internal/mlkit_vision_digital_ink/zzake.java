package com.google.android.gms.internal.mlkit_vision_digital_ink;

import java.util.Iterator;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes5.dex */
public abstract class zzake extends zzaka {
    @Override // com.google.android.gms.internal.mlkit_vision_digital_ink.zzaka, com.google.android.gms.internal.mlkit_vision_digital_ink.zzajg, java.util.AbstractCollection, java.util.Collection, java.lang.Iterable
    public final /* synthetic */ Iterator iterator() {
        return zzk().listIterator(0);
    }

    public abstract Object zza(int i);

    @Override // com.google.android.gms.internal.mlkit_vision_digital_ink.zzajg
    public final int zzb(Object[] objArr, int i) {
        return zzk().zzb(objArr, 0);
    }

    @Override // com.google.android.gms.internal.mlkit_vision_digital_ink.zzaka
    public final zzajm zze() {
        return new zzakd(this);
    }

    @Override // com.google.android.gms.internal.mlkit_vision_digital_ink.zzaka, com.google.android.gms.internal.mlkit_vision_digital_ink.zzajg
    /* renamed from: zzl */
    public final zzalx iterator() {
        return zzk().listIterator(0);
    }
}
