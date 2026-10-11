package com.google.android.gms.internal.mlkit_vision_digital_ink;

import java.lang.reflect.ParameterizedType;
import java.lang.reflect.Type;

/* loaded from: classes5.dex */
public final class zzbnw {
    private final Class zza;
    private final Type zzb;
    private final int zzc;

    public zzbnw() {
        Type genericSuperclass = zzbnw.class.getGenericSuperclass();
        if (!(genericSuperclass instanceof ParameterizedType)) {
            if (genericSuperclass == zzbnw.class) {
                throw new IllegalStateException("TypeToken must be created with a type argument: new TypeToken<...>() {}; When using code shrinkers (ProGuard, R8, ...) make sure that generic signatures are preserved.");
            }
        } else {
            ParameterizedType parameterizedType = (ParameterizedType) genericSuperclass;
            if (parameterizedType.getRawType() == zzbnw.class) {
                this.zzb = zzbiw.zzc(parameterizedType.getActualTypeArguments()[0]);
                throw null;
            }
        }
        throw new IllegalStateException("Must only create direct subclasses of TypeToken");
    }

    public static zzbnw zza(Class cls) {
        return new zzbnw(cls);
    }

    public static zzbnw zzb(Type type) {
        return new zzbnw(type);
    }

    public final boolean equals(Object obj) {
        return (obj instanceof zzbnw) && zzbiw.zzg(this.zzb, ((zzbnw) obj).zzb);
    }

    public final int hashCode() {
        return this.zzc;
    }

    public final String toString() {
        return zzbiw.zzb(this.zzb);
    }

    public final Class zzc() {
        return this.zza;
    }

    public final Type zzd() {
        return this.zzb;
    }

    private zzbnw(Type type) {
        type.getClass();
        Type zzc = zzbiw.zzc(type);
        this.zzb = zzc;
        this.zza = zzbiw.zza(zzc);
        this.zzc = zzc.hashCode();
    }
}
