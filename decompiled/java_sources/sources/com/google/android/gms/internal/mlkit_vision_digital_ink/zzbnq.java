package com.google.android.gms.internal.mlkit_vision_digital_ink;

import java.sql.Timestamp;
import java.util.Date;

/* loaded from: classes5.dex */
final class zzbnq implements zzbip {
    @Override // com.google.android.gms.internal.mlkit_vision_digital_ink.zzbip
    public final zzbio zza(zzbht zzbhtVar, zzbnw zzbnwVar) {
        if (zzbnwVar.zzc() == Timestamp.class) {
            return new zzbns(zzbhtVar.zza(zzbnw.zza(Date.class)), null);
        }
        return null;
    }
}
