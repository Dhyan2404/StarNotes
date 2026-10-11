package com.google.android.gms.internal.mlkit_vision_digital_ink;

import java.io.IOException;
import java.lang.reflect.Type;
import java.util.Collection;

/* loaded from: classes5.dex */
final class zzbks extends zzbio {
    private final zzbio zza;
    private final zzbke zzb;

    public zzbks(zzbht zzbhtVar, Type type, zzbio zzbioVar, zzbke zzbkeVar) {
        this.zza = new zzblq(zzbhtVar, zzbioVar, type);
        this.zzb = zzbkeVar;
    }

    @Override // com.google.android.gms.internal.mlkit_vision_digital_ink.zzbio
    public final /* bridge */ /* synthetic */ Object zza(zzbny zzbnyVar) throws IOException {
        if (zzbnyVar.zzt() == 9) {
            zzbnyVar.zzn();
            return null;
        }
        Collection collection = (Collection) this.zzb.zza();
        zzbnyVar.zzj();
        while (zzbnyVar.zzq()) {
            collection.add(this.zza.zza(zzbnyVar));
        }
        zzbnyVar.zzl();
        return collection;
    }

    @Override // com.google.android.gms.internal.mlkit_vision_digital_ink.zzbio
    public final /* bridge */ /* synthetic */ void zzb(zzboa zzboaVar, Object obj) throws IOException {
        throw null;
    }
}
