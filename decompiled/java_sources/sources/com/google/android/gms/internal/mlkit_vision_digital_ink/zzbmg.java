package com.google.android.gms.internal.mlkit_vision_digital_ink;

import java.io.IOException;
import java.util.UUID;

/* loaded from: classes5.dex */
final class zzbmg extends zzbio {
    @Override // com.google.android.gms.internal.mlkit_vision_digital_ink.zzbio
    public final /* bridge */ /* synthetic */ Object zza(zzbny zzbnyVar) throws IOException {
        if (zzbnyVar.zzt() == 9) {
            zzbnyVar.zzn();
            return null;
        }
        String zzi = zzbnyVar.zzi();
        try {
            return UUID.fromString(zzi);
        } catch (IllegalArgumentException e) {
            throw new zzbif("Failed parsing '" + zzi + "' as UUID; at path " + zzbnyVar.zzf(), e);
        }
    }

    @Override // com.google.android.gms.internal.mlkit_vision_digital_ink.zzbio
    public final /* bridge */ /* synthetic */ void zzb(zzboa zzboaVar, Object obj) throws IOException {
        throw null;
    }
}
