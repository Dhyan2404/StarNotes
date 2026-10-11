package com.google.android.gms.internal.mlkit_vision_digital_ink;

import java.io.IOException;
import java.util.ArrayList;
import java.util.concurrent.atomic.AtomicLongArray;

/* loaded from: classes5.dex */
final class zzbhr extends zzbio {
    final /* synthetic */ zzbio zza;

    public zzbhr(zzbio zzbioVar) {
        this.zza = zzbioVar;
    }

    @Override // com.google.android.gms.internal.mlkit_vision_digital_ink.zzbio
    public final /* bridge */ /* synthetic */ Object zza(zzbny zzbnyVar) throws IOException {
        ArrayList arrayList = new ArrayList();
        zzbnyVar.zzj();
        while (zzbnyVar.zzq()) {
            arrayList.add(Long.valueOf(((Number) this.zza.zza(zzbnyVar)).longValue()));
        }
        zzbnyVar.zzl();
        int size = arrayList.size();
        AtomicLongArray atomicLongArray = new AtomicLongArray(size);
        for (int i = 0; i < size; i++) {
            atomicLongArray.set(i, ((Long) arrayList.get(i)).longValue());
        }
        return atomicLongArray;
    }

    @Override // com.google.android.gms.internal.mlkit_vision_digital_ink.zzbio
    public final /* bridge */ /* synthetic */ void zzb(zzboa zzboaVar, Object obj) throws IOException {
        throw null;
    }
}
