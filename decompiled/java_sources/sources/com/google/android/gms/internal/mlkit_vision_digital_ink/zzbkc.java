package com.google.android.gms.internal.mlkit_vision_digital_ink;

import java.util.Map;

/* loaded from: classes5.dex */
final class zzbkc implements Map.Entry {
    zzbkc zza;
    zzbkc zzb;
    zzbkc zzc;
    zzbkc zzd;
    zzbkc zze;
    final Object zzf;
    final boolean zzg;
    Object zzh;
    int zzi;

    public zzbkc(boolean z) {
        this.zzf = null;
        this.zzg = z;
        this.zze = this;
        this.zzd = this;
    }

    @Override // java.util.Map.Entry
    public final boolean equals(Object obj) {
        if (obj instanceof Map.Entry) {
            Map.Entry entry = (Map.Entry) obj;
            Object obj2 = this.zzf;
            if (obj2 != null ? obj2.equals(entry.getKey()) : entry.getKey() == null) {
                Object obj3 = this.zzh;
                if (obj3 == null) {
                    if (entry.getValue() == null) {
                        return true;
                    }
                } else if (obj3.equals(entry.getValue())) {
                    return true;
                }
            }
        }
        return false;
    }

    @Override // java.util.Map.Entry
    public final Object getKey() {
        return this.zzf;
    }

    @Override // java.util.Map.Entry
    public final Object getValue() {
        return this.zzh;
    }

    @Override // java.util.Map.Entry
    public final int hashCode() {
        Object obj = this.zzf;
        int hashCode = obj == null ? 0 : obj.hashCode();
        Object obj2 = this.zzh;
        return hashCode ^ (obj2 != null ? obj2.hashCode() : 0);
    }

    @Override // java.util.Map.Entry
    public final Object setValue(Object obj) {
        if (obj == null && !this.zzg) {
            throw new NullPointerException("value == null");
        }
        Object obj2 = this.zzh;
        this.zzh = obj;
        return obj2;
    }

    public final String toString() {
        return String.valueOf(this.zzf) + "=" + String.valueOf(this.zzh);
    }

    public zzbkc(boolean z, zzbkc zzbkcVar, Object obj, zzbkc zzbkcVar2, zzbkc zzbkcVar3) {
        this.zza = zzbkcVar;
        this.zzf = obj;
        this.zzg = z;
        this.zzi = 1;
        this.zzd = zzbkcVar2;
        this.zze = zzbkcVar3;
        zzbkcVar3.zzd = this;
        zzbkcVar2.zze = this;
    }
}
