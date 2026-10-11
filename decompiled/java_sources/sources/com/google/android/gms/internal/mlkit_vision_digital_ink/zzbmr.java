package com.google.android.gms.internal.mlkit_vision_digital_ink;

import org.apache.commons.collections4.IteratorUtils;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes5.dex */
public final class zzbmr implements zzbip {
    final /* synthetic */ Class zza;
    final /* synthetic */ zzbio zzb;

    public zzbmr(Class cls, zzbio zzbioVar) {
        this.zza = cls;
        this.zzb = zzbioVar;
    }

    public final String toString() {
        return "Factory[typeHierarchy=" + this.zza.getName() + ",adapter=" + this.zzb.toString() + IteratorUtils.f104924b;
    }

    @Override // com.google.android.gms.internal.mlkit_vision_digital_ink.zzbip
    public final zzbio zza(zzbht zzbhtVar, zzbnw zzbnwVar) {
        Class<?> zzc = zzbnwVar.zzc();
        if (this.zza.isAssignableFrom(zzc)) {
            return new zzbmq(this, zzc);
        }
        return null;
    }
}
