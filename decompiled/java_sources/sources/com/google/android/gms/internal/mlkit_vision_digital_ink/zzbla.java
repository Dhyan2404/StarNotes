package com.google.android.gms.internal.mlkit_vision_digital_ink;

import java.lang.reflect.Type;
import java.util.Map;

/* loaded from: classes5.dex */
public final class zzbla implements zzbip {
    private final zzbjq zza;

    public zzbla(zzbjq zzbjqVar, boolean z) {
        this.zza = zzbjqVar;
    }

    @Override // com.google.android.gms.internal.mlkit_vision_digital_ink.zzbip
    public final zzbio zza(zzbht zzbhtVar, zzbnw zzbnwVar) {
        Type zzd = zzbnwVar.zzd();
        Class zzc = zzbnwVar.zzc();
        if (!Map.class.isAssignableFrom(zzc)) {
            return null;
        }
        Type[] zzh = zzbiw.zzh(zzd, zzc);
        Type type = zzh[0];
        return new zzbkz(this, zzbhtVar, zzh[0], (type == Boolean.TYPE || type == Boolean.class) ? zzbnb.zzf : zzbhtVar.zza(zzbnw.zzb(type)), zzh[1], zzbhtVar.zza(zzbnw.zzb(zzh[1])), this.zza.zza(zzbnwVar));
    }
}
