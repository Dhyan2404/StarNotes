package com.google.android.gms.internal.mlkit_vision_digital_ink;

import java.io.IOException;
import java.util.ArrayList;
import java.util.concurrent.atomic.AtomicIntegerArray;

/* loaded from: classes5.dex */
final class zzblr extends zzbio {
    @Override // com.google.android.gms.internal.mlkit_vision_digital_ink.zzbio
    public final /* bridge */ /* synthetic */ Object zza(zzbny zzbnyVar) throws IOException {
        ArrayList arrayList = new ArrayList();
        zzbnyVar.zzj();
        while (zzbnyVar.zzq()) {
            try {
                arrayList.add(Integer.valueOf(zzbnyVar.zzc()));
            } catch (NumberFormatException e) {
                throw new zzbif(e);
            }
        }
        zzbnyVar.zzl();
        int size = arrayList.size();
        AtomicIntegerArray atomicIntegerArray = new AtomicIntegerArray(size);
        for (int i = 0; i < size; i++) {
            atomicIntegerArray.set(i, ((Integer) arrayList.get(i)).intValue());
        }
        return atomicIntegerArray;
    }

    @Override // com.google.android.gms.internal.mlkit_vision_digital_ink.zzbio
    public final /* bridge */ /* synthetic */ void zzb(zzboa zzboaVar, Object obj) throws IOException {
        throw null;
    }
}
