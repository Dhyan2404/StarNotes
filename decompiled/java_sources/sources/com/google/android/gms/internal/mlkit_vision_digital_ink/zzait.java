package com.google.android.gms.internal.mlkit_vision_digital_ink;

import java.util.Map;

/* loaded from: classes5.dex */
final class zzait extends zzahz {
    final /* synthetic */ zzaiv zza;
    private final Object zzb;
    private int zzc;

    public zzait(zzaiv zzaivVar, int i) {
        this.zza = zzaivVar;
        Object[] objArr = zzaivVar.zzb;
        objArr.getClass();
        this.zzb = objArr[i];
        this.zzc = i;
    }

    private final void zza() {
        int zzq;
        int i = this.zzc;
        if (i != -1 && i < this.zza.size()) {
            Object obj = this.zzb;
            zzaiv zzaivVar = this.zza;
            int i2 = this.zzc;
            Object[] objArr = zzaivVar.zzb;
            objArr.getClass();
            if (zzaga.zza(obj, objArr[i2])) {
                return;
            }
        }
        zzq = this.zza.zzq(this.zzb);
        this.zzc = zzq;
    }

    @Override // com.google.android.gms.internal.mlkit_vision_digital_ink.zzahz, java.util.Map.Entry
    public final Object getKey() {
        return this.zzb;
    }

    @Override // com.google.android.gms.internal.mlkit_vision_digital_ink.zzahz, java.util.Map.Entry
    public final Object getValue() {
        Map zzk = this.zza.zzk();
        if (zzk != null) {
            return zzk.get(this.zzb);
        }
        zza();
        int i = this.zzc;
        if (i == -1) {
            return null;
        }
        Object[] objArr = this.zza.zzc;
        objArr.getClass();
        return objArr[i];
    }

    @Override // com.google.android.gms.internal.mlkit_vision_digital_ink.zzahz, java.util.Map.Entry
    public final Object setValue(Object obj) {
        Map zzk = this.zza.zzk();
        if (zzk != null) {
            return zzk.put(this.zzb, obj);
        }
        zza();
        int i = this.zzc;
        if (i == -1) {
            this.zza.put(this.zzb, obj);
            return null;
        }
        Object[] objArr = this.zza.zzc;
        objArr.getClass();
        Object obj2 = objArr[i];
        objArr[i] = obj;
        return obj2;
    }
}
