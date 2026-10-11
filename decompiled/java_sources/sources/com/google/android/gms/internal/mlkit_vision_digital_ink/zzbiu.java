package com.google.android.gms.internal.mlkit_vision_digital_ink;

import java.io.Serializable;
import java.lang.reflect.Modifier;
import java.lang.reflect.ParameterizedType;
import java.lang.reflect.Type;
import java.util.Arrays;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes5.dex */
public final class zzbiu implements ParameterizedType, Serializable {
    private final Type zza;
    private final Type zzb;
    private final Type[] zzc;

    public zzbiu(Type type, Type type2, Type... typeArr) {
        type2.getClass();
        if (type2 instanceof Class) {
            Class cls = (Class) type2;
            boolean z = true;
            boolean z2 = Modifier.isStatic(cls.getModifiers()) || cls.getEnclosingClass() == null;
            if (type == null && !z2) {
                z = false;
            }
            zzbis.zza(z);
        }
        this.zza = type == null ? null : zzbiw.zzc(type);
        this.zzb = zzbiw.zzc(type2);
        Type[] typeArr2 = (Type[]) typeArr.clone();
        this.zzc = typeArr2;
        int length = typeArr2.length;
        for (int i = 0; i < length; i++) {
            Type type3 = this.zzc[i];
            type3.getClass();
            zzbiw.zzf(type3);
            Type[] typeArr3 = this.zzc;
            typeArr3[i] = zzbiw.zzc(typeArr3[i]);
        }
    }

    public final boolean equals(Object obj) {
        return (obj instanceof ParameterizedType) && zzbiw.zzg(this, (ParameterizedType) obj);
    }

    @Override // java.lang.reflect.ParameterizedType
    public final Type[] getActualTypeArguments() {
        return (Type[]) this.zzc.clone();
    }

    @Override // java.lang.reflect.ParameterizedType
    public final Type getOwnerType() {
        return this.zza;
    }

    @Override // java.lang.reflect.ParameterizedType
    public final Type getRawType() {
        return this.zzb;
    }

    public final int hashCode() {
        int hashCode = Arrays.hashCode(this.zzc) ^ this.zzb.hashCode();
        Type type = this.zza;
        return (type != null ? type.hashCode() : 0) ^ hashCode;
    }

    public final String toString() {
        int length = this.zzc.length;
        if (length == 0) {
            return zzbiw.zzb(this.zzb);
        }
        StringBuilder sb = new StringBuilder((length + 1) * 30);
        sb.append(zzbiw.zzb(this.zzb));
        sb.append("<");
        sb.append(zzbiw.zzb(this.zzc[0]));
        for (int i = 1; i < length; i++) {
            sb.append(", ");
            sb.append(zzbiw.zzb(this.zzc[i]));
        }
        sb.append(">");
        return sb.toString();
    }
}
