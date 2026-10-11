package com.google.android.gms.internal.mlkit_vision_digital_ink;

import java.io.IOException;
import java.lang.reflect.Array;
import java.util.ArrayList;

/* loaded from: classes5.dex */
public final class zzbkr extends zzbio {
    public static final zzbip zza = new zzbkq();
    private final Class zzb;
    private final zzbio zzc;

    public zzbkr(zzbht zzbhtVar, zzbio zzbioVar, Class cls) {
        this.zzc = new zzblq(zzbhtVar, zzbioVar, cls);
        this.zzb = cls;
    }

    @Override // com.google.android.gms.internal.mlkit_vision_digital_ink.zzbio
    public final Object zza(zzbny zzbnyVar) throws IOException {
        if (zzbnyVar.zzt() == 9) {
            zzbnyVar.zzn();
            return null;
        }
        ArrayList arrayList = new ArrayList();
        zzbnyVar.zzj();
        while (zzbnyVar.zzq()) {
            arrayList.add(this.zzc.zza(zzbnyVar));
        }
        zzbnyVar.zzl();
        int size = arrayList.size();
        if (!this.zzb.isPrimitive()) {
            return arrayList.toArray((Object[]) Array.newInstance((Class<?>) this.zzb, size));
        }
        Object newInstance = Array.newInstance((Class<?>) this.zzb, size);
        for (int i = 0; i < size; i++) {
            Array.set(newInstance, i, arrayList.get(i));
        }
        return newInstance;
    }

    @Override // com.google.android.gms.internal.mlkit_vision_digital_ink.zzbio
    public final void zzb(zzboa zzboaVar, Object obj) throws IOException {
        throw null;
    }
}
