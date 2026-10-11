package com.google.android.gms.internal.mlkit_vision_digital_ink;

import com.google.firebase.analytics.FirebaseAnalytics;
import java.util.AbstractMap;

/* loaded from: classes5.dex */
final class zzalm extends zzajm {
    final /* synthetic */ zzaln zza;

    public zzalm(zzaln zzalnVar) {
        this.zza = zzalnVar;
    }

    @Override // java.util.List
    public final /* bridge */ /* synthetic */ Object get(int i) {
        int i2;
        Object[] objArr;
        Object[] objArr2;
        i2 = this.zza.zzc;
        zzagg.zza(i, i2, FirebaseAnalytics.Param.INDEX);
        zzaln zzalnVar = this.zza;
        objArr = zzalnVar.zzb;
        int i3 = i + i;
        Object obj = objArr[i3];
        obj.getClass();
        objArr2 = zzalnVar.zzb;
        Object obj2 = objArr2[i3 + 1];
        obj2.getClass();
        return new AbstractMap.SimpleImmutableEntry(obj, obj2);
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final int size() {
        int i;
        i = this.zza.zzc;
        return i;
    }

    @Override // com.google.android.gms.internal.mlkit_vision_digital_ink.zzajg
    public final boolean zzm() {
        return true;
    }
}
