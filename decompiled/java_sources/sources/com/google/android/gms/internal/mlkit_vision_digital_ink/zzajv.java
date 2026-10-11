package com.google.android.gms.internal.mlkit_vision_digital_ink;

import java.util.Iterator;
import javax.annotation.CheckForNull;

/* loaded from: classes5.dex */
final class zzajv extends zzalx {
    int zza;

    @CheckForNull
    Object zzb;
    final /* synthetic */ Iterator zzc;

    public zzajv(zzajx zzajxVar, Iterator it2) {
        this.zzc = it2;
    }

    @Override // java.util.Iterator
    public final boolean hasNext() {
        return this.zza > 0 || this.zzc.hasNext();
    }

    @Override // java.util.Iterator
    public final Object next() {
        int i = this.zza;
        if (i <= 0) {
            zzald zzaldVar = (zzald) this.zzc.next();
            this.zzb = zzaldVar.zzb();
            i = zzaldVar.zza();
        }
        this.zza = i - 1;
        Object obj = this.zzb;
        obj.getClass();
        return obj;
    }
}
