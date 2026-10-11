package com.google.android.gms.internal.mlkit_vision_digital_ink;

import java.io.IOException;

/* loaded from: classes5.dex */
public final class zzblc extends zzbio {
    private static final zzbip zza = zze(zzbil.LAZILY_PARSED_NUMBER);
    private final zzbim zzb;

    private zzblc(zzbim zzbimVar) {
        this.zzb = zzbimVar;
    }

    public static zzbip zzc(zzbim zzbimVar) {
        return zzbimVar == zzbil.LAZILY_PARSED_NUMBER ? zza : zze(zzbimVar);
    }

    private static zzbip zze(zzbim zzbimVar) {
        return new zzblb(new zzblc(zzbimVar));
    }

    @Override // com.google.android.gms.internal.mlkit_vision_digital_ink.zzbio
    public final /* bridge */ /* synthetic */ Object zza(zzbny zzbnyVar) throws IOException {
        int zzt = zzbnyVar.zzt();
        int i = zzt - 1;
        if (i == 5 || i == 6) {
            return this.zzb.zza(zzbnyVar);
        }
        if (i == 8) {
            zzbnyVar.zzn();
            return null;
        }
        throw new zzbif("Expecting number, got: " + zzbnz.zza(zzt) + "; at path " + zzbnyVar.zze());
    }

    @Override // com.google.android.gms.internal.mlkit_vision_digital_ink.zzbio
    public final /* bridge */ /* synthetic */ void zzb(zzboa zzboaVar, Object obj) throws IOException {
        throw null;
    }
}
