package com.google.android.gms.internal.mlkit_vision_digital_ink;

import java.io.IOException;
import java.util.Currency;

/* loaded from: classes5.dex */
final class zzbmh extends zzbio {
    @Override // com.google.android.gms.internal.mlkit_vision_digital_ink.zzbio
    public final /* bridge */ /* synthetic */ Object zza(zzbny zzbnyVar) throws IOException {
        String zzi = zzbnyVar.zzi();
        try {
            return Currency.getInstance(zzi);
        } catch (IllegalArgumentException e) {
            throw new zzbif("Failed parsing '" + zzi + "' as Currency; at path " + zzbnyVar.zzf(), e);
        }
    }

    @Override // com.google.android.gms.internal.mlkit_vision_digital_ink.zzbio
    public final /* bridge */ /* synthetic */ void zzb(zzboa zzboaVar, Object obj) throws IOException {
        throw null;
    }
}
