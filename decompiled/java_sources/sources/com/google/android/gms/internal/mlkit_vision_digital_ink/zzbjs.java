package com.google.android.gms.internal.mlkit_vision_digital_ink;

import java.lang.reflect.Field;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;

/* loaded from: classes5.dex */
public final class zzbjs implements Cloneable, zzbip {
    public static final zzbjs zza = new zzbjs();
    private final List zzb = Collections.emptyList();
    private final List zzc = Collections.emptyList();

    private final boolean zze(Class cls, boolean z) {
        Iterator it2 = (z ? this.zzb : this.zzc).iterator();
        while (it2.hasNext()) {
            if (((zzbhl) it2.next()).zza()) {
                return true;
            }
        }
        return false;
    }

    private static final boolean zzf(Class cls) {
        if (Enum.class.isAssignableFrom(cls) || (cls.getModifiers() & 8) != 0) {
            return false;
        }
        return cls.isAnonymousClass() || cls.isLocalClass();
    }

    private static final boolean zzg(Class cls) {
        return zzf(cls);
    }

    @Override // com.google.android.gms.internal.mlkit_vision_digital_ink.zzbip
    public final zzbio zza(zzbht zzbhtVar, zzbnw zzbnwVar) {
        Class zzc = zzbnwVar.zzc();
        boolean zzg = zzg(zzc);
        boolean z = zzg || zze(zzc, true);
        boolean z2 = zzg || zze(zzc, false);
        if (z || z2) {
            return new zzbjr(this, z2, z, zzbhtVar, zzbnwVar);
        }
        return null;
    }

    /* renamed from: zzb, reason: merged with bridge method [inline-methods] */
    public final zzbjs clone() {
        try {
            return (zzbjs) super.clone();
        } catch (CloneNotSupportedException e) {
            throw new AssertionError(e);
        }
    }

    public final boolean zzc(Class cls, boolean z) {
        return zzg(cls) || zze(cls, z);
    }

    public final boolean zzd(Field field, boolean z) {
        if ((field.getModifiers() & 136) != 0 || field.isSynthetic() || zzf(field.getType())) {
            return true;
        }
        List list = z ? this.zzb : this.zzc;
        if (list.isEmpty()) {
            return false;
        }
        Iterator it2 = list.iterator();
        while (it2.hasNext()) {
            if (((zzbhl) it2.next()).zzb()) {
                return true;
            }
        }
        return false;
    }
}
