package com.google.android.gms.internal.mlkit_vision_digital_ink;

import org.apache.commons.collections4.IteratorUtils;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes5.dex */
public final class zzbmo implements zzbip {
    final /* synthetic */ Class zza;
    final /* synthetic */ Class zzb;
    final /* synthetic */ zzbio zzc;

    public zzbmo(Class cls, Class cls2, zzbio zzbioVar) {
        this.zza = cls;
        this.zzb = cls2;
        this.zzc = zzbioVar;
    }

    public final String toString() {
        return "Factory[type=" + this.zzb.getName() + "+" + this.zza.getName() + ",adapter=" + this.zzc.toString() + IteratorUtils.f104924b;
    }

    @Override // com.google.android.gms.internal.mlkit_vision_digital_ink.zzbip
    public final zzbio zza(zzbht zzbhtVar, zzbnw zzbnwVar) {
        Class zzc = zzbnwVar.zzc();
        if (zzc == this.zza || zzc == this.zzb) {
            return this.zzc;
        }
        return null;
    }
}
