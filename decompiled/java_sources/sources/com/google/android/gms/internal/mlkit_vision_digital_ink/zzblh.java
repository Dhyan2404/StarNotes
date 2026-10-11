package com.google.android.gms.internal.mlkit_vision_digital_ink;

import java.io.IOException;
import java.util.Map;

/* loaded from: classes5.dex */
public abstract class zzblh extends zzbio {
    final Map zza;

    public zzblh(Map map) {
        this.zza = map;
    }

    @Override // com.google.android.gms.internal.mlkit_vision_digital_ink.zzbio
    public final Object zza(zzbny zzbnyVar) throws IOException {
        if (zzbnyVar.zzt() == 9) {
            zzbnyVar.zzn();
            return null;
        }
        Object zzc = zzc();
        try {
            zzbnyVar.zzk();
            while (zzbnyVar.zzq()) {
                zzbli zzbliVar = (zzbli) this.zza.get(zzbnyVar.zzh());
                if (zzbliVar != null && zzbliVar.zzk) {
                    zzf(zzc, zzbnyVar, zzbliVar);
                }
                zzbnyVar.zzp();
            }
            zzbnyVar.zzm();
            return zze(zzc);
        } catch (IllegalAccessException e) {
            throw zzbnj.zzb(e);
        } catch (IllegalStateException e2) {
            throw new zzbif(e2);
        }
    }

    @Override // com.google.android.gms.internal.mlkit_vision_digital_ink.zzbio
    public final void zzb(zzboa zzboaVar, Object obj) throws IOException {
        throw null;
    }

    public abstract Object zzc();

    public abstract Object zze(Object obj);

    public abstract void zzf(Object obj, zzbny zzbnyVar, zzbli zzbliVar) throws IllegalAccessException, IOException;
}
