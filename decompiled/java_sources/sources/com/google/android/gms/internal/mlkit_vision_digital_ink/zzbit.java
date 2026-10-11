package com.google.android.gms.internal.mlkit_vision_digital_ink;

import java.io.Serializable;
import java.lang.reflect.GenericArrayType;
import java.lang.reflect.Type;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes5.dex */
public final class zzbit implements GenericArrayType, Serializable {
    private final Type zza;

    public zzbit(Type type) {
        type.getClass();
        this.zza = zzbiw.zzc(type);
    }

    public final boolean equals(Object obj) {
        return (obj instanceof GenericArrayType) && zzbiw.zzg(this, (GenericArrayType) obj);
    }

    @Override // java.lang.reflect.GenericArrayType
    public final Type getGenericComponentType() {
        return this.zza;
    }

    public final int hashCode() {
        return this.zza.hashCode();
    }

    public final String toString() {
        return String.valueOf(zzbiw.zzb(this.zza)).concat("[]");
    }
}
