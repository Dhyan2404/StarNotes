package com.google.android.gms.internal.mlkit_vision_digital_ink;

import java.lang.reflect.ParameterizedType;
import java.lang.reflect.Type;
import java.util.EnumSet;

/* loaded from: classes5.dex */
final class zzbjl implements zzbke {
    final /* synthetic */ Type zza;

    public zzbjl(Type type) {
        this.zza = type;
    }

    @Override // com.google.android.gms.internal.mlkit_vision_digital_ink.zzbke
    public final Object zza() {
        Type type = this.zza;
        if (!(type instanceof ParameterizedType)) {
            throw new zzbhz("Invalid EnumSet type: ".concat(String.valueOf(type.toString())));
        }
        Type type2 = ((ParameterizedType) type).getActualTypeArguments()[0];
        if (type2 instanceof Class) {
            return EnumSet.noneOf((Class) type2);
        }
        throw new zzbhz("Invalid EnumSet type: ".concat(String.valueOf(this.zza.toString())));
    }
}
