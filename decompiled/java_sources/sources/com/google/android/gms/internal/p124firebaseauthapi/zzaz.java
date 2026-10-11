package com.google.android.gms.internal.p124firebaseauthapi;

import java.util.AbstractMap;
import java.util.Map;
import java.util.Objects;

/* loaded from: classes5.dex */
final class zzaz extends zzaq<Map.Entry<Object, Object>> {
    private final /* synthetic */ zzba zza;

    public zzaz(zzba zzbaVar) {
        this.zza = zzbaVar;
    }

    @Override // java.util.List
    public final /* synthetic */ Object get(int i) {
        int i2;
        Object[] objArr;
        Object[] objArr2;
        i2 = this.zza.zzd;
        zzz.zza(i, i2);
        objArr = this.zza.zzb;
        int i3 = i * 2;
        Object obj = objArr[i3];
        Objects.requireNonNull(obj);
        objArr2 = this.zza.zzb;
        Object obj2 = objArr2[i3 + 1];
        Objects.requireNonNull(obj2);
        return new AbstractMap.SimpleImmutableEntry(obj, obj2);
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final int size() {
        int i;
        i = this.zza.zzd;
        return i;
    }

    @Override // com.google.android.gms.internal.p124firebaseauthapi.zzal
    public final boolean zze() {
        return true;
    }
}
