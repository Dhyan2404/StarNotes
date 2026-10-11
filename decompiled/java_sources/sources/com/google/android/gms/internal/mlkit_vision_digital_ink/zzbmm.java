package com.google.android.gms.internal.mlkit_vision_digital_ink;

import java.io.IOException;
import java.util.BitSet;

/* loaded from: classes5.dex */
final class zzbmm extends zzbio {
    @Override // com.google.android.gms.internal.mlkit_vision_digital_ink.zzbio
    public final /* bridge */ /* synthetic */ Object zza(zzbny zzbnyVar) throws IOException {
        BitSet bitSet = new BitSet();
        zzbnyVar.zzj();
        int zzt = zzbnyVar.zzt();
        int i = 0;
        while (zzt != 2) {
            int i2 = zzt - 1;
            if (i2 == 5 || i2 == 6) {
                int zzc = zzbnyVar.zzc();
                if (zzc != 0) {
                    if (zzc != 1) {
                        throw new zzbif("Invalid bitset value " + zzc + ", expected 0 or 1; at path " + zzbnyVar.zzf());
                    }
                    bitSet.set(i);
                    i++;
                    zzt = zzbnyVar.zzt();
                } else {
                    continue;
                    i++;
                    zzt = zzbnyVar.zzt();
                }
            } else {
                if (i2 != 7) {
                    throw new zzbif("Invalid bitset value type: " + zzbnz.zza(zzt) + "; at path " + zzbnyVar.zze());
                }
                if (!zzbnyVar.zzs()) {
                    i++;
                    zzt = zzbnyVar.zzt();
                }
                bitSet.set(i);
                i++;
                zzt = zzbnyVar.zzt();
            }
        }
        zzbnyVar.zzl();
        return bitSet;
    }

    @Override // com.google.android.gms.internal.mlkit_vision_digital_ink.zzbio
    public final /* bridge */ /* synthetic */ void zzb(zzboa zzboaVar, Object obj) throws IOException {
        throw null;
    }
}
