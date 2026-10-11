package com.google.android.gms.internal.mlkit_vision_digital_ink;

import java.lang.reflect.GenericArrayType;
import java.lang.reflect.Type;

/* loaded from: classes5.dex */
final class zzbkq implements zzbip {
    @Override // com.google.android.gms.internal.mlkit_vision_digital_ink.zzbip
    public final zzbio zza(zzbht zzbhtVar, zzbnw zzbnwVar) {
        Type zzd = zzbnwVar.zzd();
        boolean z = zzd instanceof GenericArrayType;
        if (!z && (!(zzd instanceof Class) || !((Class) zzd).isArray())) {
            return null;
        }
        Type genericComponentType = z ? ((GenericArrayType) zzd).getGenericComponentType() : ((Class) zzd).getComponentType();
        return new zzbkr(zzbhtVar, zzbhtVar.zza(zzbnw.zzb(genericComponentType)), zzbiw.zza(genericComponentType));
    }
}
