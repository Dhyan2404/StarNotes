package com.google.android.gms.internal.mlkit_vision_digital_ink;

import java.util.Comparator;

/* loaded from: classes5.dex */
final class zzbsq implements Comparator {
    @Override // java.util.Comparator
    public final /* synthetic */ int compare(Object obj, Object obj2) {
        zzbsz zzbszVar = (zzbsz) obj;
        zzbsz zzbszVar2 = (zzbsz) obj2;
        zzbsp zzbspVar = new zzbsp(zzbszVar);
        zzbsp zzbspVar2 = new zzbsp(zzbszVar2);
        while (zzbspVar.hasNext() && zzbspVar2.hasNext()) {
            int compareTo = Integer.valueOf(zzbspVar.zza() & 255).compareTo(Integer.valueOf(zzbspVar2.zza() & 255));
            if (compareTo != 0) {
                return compareTo;
            }
        }
        return Integer.valueOf(zzbszVar.zzd()).compareTo(Integer.valueOf(zzbszVar2.zzd()));
    }
}
