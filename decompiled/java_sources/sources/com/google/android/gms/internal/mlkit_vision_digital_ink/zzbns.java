package com.google.android.gms.internal.mlkit_vision_digital_ink;

import java.io.IOException;
import java.sql.Timestamp;
import java.util.Date;

/* loaded from: classes5.dex */
final class zzbns extends zzbio {
    static final zzbip zza = new zzbnq();
    private final zzbio zzb;

    @Override // com.google.android.gms.internal.mlkit_vision_digital_ink.zzbio
    public final /* bridge */ /* synthetic */ Object zza(zzbny zzbnyVar) throws IOException {
        Date date = (Date) this.zzb.zza(zzbnyVar);
        if (date != null) {
            return new Timestamp(date.getTime());
        }
        return null;
    }

    @Override // com.google.android.gms.internal.mlkit_vision_digital_ink.zzbio
    public final /* bridge */ /* synthetic */ void zzb(zzboa zzboaVar, Object obj) throws IOException {
        throw null;
    }
}
