package com.google.android.gms.internal.mlkit_vision_digital_ink;

import java.lang.reflect.Type;
import java.util.Collection;

/* loaded from: classes5.dex */
public final class zzbkt implements zzbip {
    private final zzbjq zza;

    public zzbkt(zzbjq zzbjqVar) {
        this.zza = zzbjqVar;
    }

    @Override // com.google.android.gms.internal.mlkit_vision_digital_ink.zzbip
    public final zzbio zza(zzbht zzbhtVar, zzbnw zzbnwVar) {
        Type zzd = zzbnwVar.zzd();
        Class zzc = zzbnwVar.zzc();
        if (!Collection.class.isAssignableFrom(zzc)) {
            return null;
        }
        Type zzd2 = zzbiw.zzd(zzd, zzc);
        return new zzbks(zzbhtVar, zzd2, zzbhtVar.zza(zzbnw.zzb(zzd2)), this.zza.zza(zzbnwVar));
    }
}
