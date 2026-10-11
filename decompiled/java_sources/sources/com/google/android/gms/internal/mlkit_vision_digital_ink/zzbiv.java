package com.google.android.gms.internal.mlkit_vision_digital_ink;

import java.io.Serializable;
import java.lang.reflect.Type;
import java.lang.reflect.WildcardType;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes5.dex */
public final class zzbiv implements WildcardType, Serializable {
    private final Type zza;
    private final Type zzb;

    public zzbiv(Type[] typeArr, Type[] typeArr2) {
        int length = typeArr2.length;
        zzbis.zza(length <= 1);
        zzbis.zza(typeArr.length == 1);
        if (length != 1) {
            Type type = typeArr[0];
            type.getClass();
            zzbiw.zzf(type);
            this.zzb = null;
            this.zza = zzbiw.zzc(typeArr[0]);
            return;
        }
        Type type2 = typeArr2[0];
        type2.getClass();
        zzbiw.zzf(type2);
        zzbis.zza(typeArr[0] == Object.class);
        this.zzb = zzbiw.zzc(typeArr2[0]);
        this.zza = Object.class;
    }

    public final boolean equals(Object obj) {
        return (obj instanceof WildcardType) && zzbiw.zzg(this, (WildcardType) obj);
    }

    @Override // java.lang.reflect.WildcardType
    public final Type[] getLowerBounds() {
        Type type = this.zzb;
        return type != null ? new Type[]{type} : zzbiw.zza;
    }

    @Override // java.lang.reflect.WildcardType
    public final Type[] getUpperBounds() {
        return new Type[]{this.zza};
    }

    public final int hashCode() {
        Type type = this.zzb;
        return (this.zza.hashCode() + 31) ^ (type != null ? type.hashCode() + 31 : 1);
    }

    public final String toString() {
        Type type = this.zzb;
        if (type != null) {
            return "? super ".concat(String.valueOf(zzbiw.zzb(type)));
        }
        Type type2 = this.zza;
        return type2 == Object.class ? "?" : "? extends ".concat(String.valueOf(zzbiw.zzb(type2)));
    }
}
