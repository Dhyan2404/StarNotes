package com.google.android.gms.internal.mlkit_vision_digital_ink;

import java.lang.reflect.ParameterizedType;
import java.lang.reflect.Type;
import java.util.EnumMap;

/* loaded from: classes5.dex */
final class zzbjm implements zzbke {
    final /* synthetic */ Type zza;

    public zzbjm(Type type) {
        this.zza = type;
    }

    @Override // com.google.android.gms.internal.mlkit_vision_digital_ink.zzbke
    public final Object zza() {
        Type type = this.zza;
        if (!(type instanceof ParameterizedType)) {
            throw new zzbhz("Invalid EnumMap type: ".concat(String.valueOf(type.toString())));
        }
        Type type2 = ((ParameterizedType) type).getActualTypeArguments()[0];
        if (type2 instanceof Class) {
            return new EnumMap((Class) type2);
        }
        throw new zzbhz("Invalid EnumMap type: ".concat(String.valueOf(this.zza.toString())));
    }
}
