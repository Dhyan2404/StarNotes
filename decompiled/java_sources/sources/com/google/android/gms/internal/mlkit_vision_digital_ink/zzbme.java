package com.google.android.gms.internal.mlkit_vision_digital_ink;

import java.io.IOException;
import java.net.URI;
import java.net.URISyntaxException;

/* loaded from: classes5.dex */
final class zzbme extends zzbio {
    public static final URI zzc(zzbny zzbnyVar) throws IOException {
        if (zzbnyVar.zzt() == 9) {
            zzbnyVar.zzn();
            return null;
        }
        try {
            String zzi = zzbnyVar.zzi();
            if ("null".equals(zzi)) {
                return null;
            }
            return new URI(zzi);
        } catch (URISyntaxException e) {
            throw new zzbhz(e);
        }
    }

    @Override // com.google.android.gms.internal.mlkit_vision_digital_ink.zzbio
    public final /* bridge */ /* synthetic */ Object zza(zzbny zzbnyVar) throws IOException {
        return zzc(zzbnyVar);
    }

    @Override // com.google.android.gms.internal.mlkit_vision_digital_ink.zzbio
    public final /* bridge */ /* synthetic */ void zzb(zzboa zzboaVar, Object obj) throws IOException {
        throw null;
    }
}
