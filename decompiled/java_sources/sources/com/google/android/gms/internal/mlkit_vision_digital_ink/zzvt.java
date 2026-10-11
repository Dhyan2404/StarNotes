package com.google.android.gms.internal.mlkit_vision_digital_ink;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collection;
import java.util.Collections;
import java.util.Comparator;

/* loaded from: classes5.dex */
public final class zzvt {
    private final boolean zza;
    private final Object zzb;
    private final Object zzc;

    private zzvt(boolean z, Object obj, Object obj2) {
        this.zza = z;
        this.zzb = obj;
        this.zzc = obj2;
    }

    public static zzvt zza(Object obj) {
        return new zzvt(true, obj, null);
    }

    public static zzvt zzb(Object obj) {
        return new zzvt(false, null, obj);
    }

    public static boolean zze(Object obj, Object obj2) {
        if (obj != obj2) {
            return obj != null && obj.equals(obj2);
        }
        return true;
    }

    public static boolean zzh(zzvt zzvtVar, zzvt zzvtVar2, Comparator comparator) {
        Object obj;
        if (zzvtVar == null || !zzvtVar.zza || (obj = zzvtVar.zzb) == null || zzvtVar2 == null || !zzvtVar2.zza || zzvtVar2.zzb == null) {
            return zze(zzvtVar, zzvtVar2);
        }
        ArrayList arrayList = new ArrayList((Collection) obj);
        ArrayList arrayList2 = new ArrayList((Collection) zzvtVar2.zzb);
        Collections.sort(arrayList, comparator);
        Collections.sort(arrayList2, comparator);
        return arrayList.equals(arrayList2);
    }

    public final boolean equals(Object obj) {
        if (!(obj instanceof zzvt)) {
            return false;
        }
        zzvt zzvtVar = (zzvt) obj;
        return this.zza ? zzvtVar.zza && zze(zzc(), zzvtVar.zzc()) : zzvtVar.zzg() && zze(zzd(), zzvtVar.zzd());
    }

    public final int hashCode() {
        return Arrays.hashCode(new Object[]{Boolean.valueOf(this.zza), this.zzb, this.zzc});
    }

    public final Object zzc() {
        if (this.zza) {
            return this.zzb;
        }
        throw new IllegalStateException("Either was not left");
    }

    public final Object zzd() {
        if (zzg()) {
            return this.zzc;
        }
        throw new IllegalStateException("Either was not right");
    }

    public final boolean zzf() {
        return this.zza;
    }

    public final boolean zzg() {
        return !this.zza;
    }
}
