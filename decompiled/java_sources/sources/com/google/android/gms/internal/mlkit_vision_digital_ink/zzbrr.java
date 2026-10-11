package com.google.android.gms.internal.mlkit_vision_digital_ink;

import org.apache.commons.collections4.IteratorUtils;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes5.dex */
public final class zzbrr extends zzbro {
    final /* synthetic */ zzbrs zzg;

    public zzbrr(zzbrs zzbrsVar) {
        this.zzg = zzbrsVar;
    }

    @Override // com.google.android.gms.internal.mlkit_vision_digital_ink.zzbro
    public final String zza() {
        zzbrp zzbrpVar = (zzbrp) this.zzg.zza.get();
        if (zzbrpVar == null) {
            return "Completer object has been garbage collected, future will fail soon";
        }
        return "tag=[" + String.valueOf(zzbrpVar.zza) + IteratorUtils.f104924b;
    }
}
