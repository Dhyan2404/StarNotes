package com.google.android.gms.internal.mlkit_vision_digital_ink;

import org.apache.commons.collections4.IteratorUtils;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes5.dex */
public final class zzbmn implements zzbip {
    final /* synthetic */ Class zza;
    final /* synthetic */ zzbio zzb;

    public zzbmn(Class cls, zzbio zzbioVar) {
        this.zza = cls;
        this.zzb = zzbioVar;
    }

    public final String toString() {
        return "Factory[type=" + this.zza.getName() + ",adapter=" + this.zzb.toString() + IteratorUtils.f104924b;
    }

    @Override // com.google.android.gms.internal.mlkit_vision_digital_ink.zzbip
    public final zzbio zza(zzbht zzbhtVar, zzbnw zzbnwVar) {
        if (zzbnwVar.zzc() == this.zza) {
            return this.zzb;
        }
        return null;
    }
}
