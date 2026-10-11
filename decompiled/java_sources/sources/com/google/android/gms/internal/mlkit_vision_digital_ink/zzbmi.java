package com.google.android.gms.internal.mlkit_vision_digital_ink;

import com.google.gson.internal.bind.TypeAdapters;
import java.io.IOException;
import java.util.GregorianCalendar;

/* loaded from: classes5.dex */
final class zzbmi extends zzbio {
    @Override // com.google.android.gms.internal.mlkit_vision_digital_ink.zzbio
    public final /* bridge */ /* synthetic */ Object zza(zzbny zzbnyVar) throws IOException {
        if (zzbnyVar.zzt() == 9) {
            zzbnyVar.zzn();
            return null;
        }
        zzbnyVar.zzk();
        int i = 0;
        int i2 = 0;
        int i3 = 0;
        int i4 = 0;
        int i5 = 0;
        int i6 = 0;
        while (zzbnyVar.zzt() != 4) {
            String zzh = zzbnyVar.zzh();
            int zzc = zzbnyVar.zzc();
            if (TypeAdapters.C6590r.f36273a.equals(zzh)) {
                i = zzc;
            } else if (TypeAdapters.C6590r.f36274b.equals(zzh)) {
                i2 = zzc;
            } else if (TypeAdapters.C6590r.f36275c.equals(zzh)) {
                i3 = zzc;
            } else if (TypeAdapters.C6590r.f36276d.equals(zzh)) {
                i4 = zzc;
            } else if (TypeAdapters.C6590r.f36277e.equals(zzh)) {
                i5 = zzc;
            } else if (TypeAdapters.C6590r.f36278f.equals(zzh)) {
                i6 = zzc;
            }
        }
        zzbnyVar.zzm();
        return new GregorianCalendar(i, i2, i3, i4, i5, i6);
    }

    @Override // com.google.android.gms.internal.mlkit_vision_digital_ink.zzbio
    public final /* bridge */ /* synthetic */ void zzb(zzboa zzboaVar, Object obj) throws IOException {
        throw null;
    }
}
