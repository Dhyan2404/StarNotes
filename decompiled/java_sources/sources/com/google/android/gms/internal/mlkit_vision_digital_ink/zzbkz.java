package com.google.android.gms.internal.mlkit_vision_digital_ink;

import java.io.IOException;
import java.lang.reflect.Type;
import java.util.Map;

/* loaded from: classes5.dex */
final class zzbkz extends zzbio {
    final /* synthetic */ zzbla zza;
    private final zzbio zzb;
    private final zzbio zzc;
    private final zzbke zzd;

    public zzbkz(zzbla zzblaVar, zzbht zzbhtVar, Type type, zzbio zzbioVar, Type type2, zzbio zzbioVar2, zzbke zzbkeVar) {
        this.zza = zzblaVar;
        this.zzb = new zzblq(zzbhtVar, zzbioVar, type);
        this.zzc = new zzblq(zzbhtVar, zzbioVar2, type2);
        this.zzd = zzbkeVar;
    }

    @Override // com.google.android.gms.internal.mlkit_vision_digital_ink.zzbio
    public final /* bridge */ /* synthetic */ Object zza(zzbny zzbnyVar) throws IOException {
        int zzt = zzbnyVar.zzt();
        if (zzt == 9) {
            zzbnyVar.zzn();
            return null;
        }
        Map map = (Map) this.zzd.zza();
        if (zzt == 1) {
            zzbnyVar.zzj();
            while (zzbnyVar.zzq()) {
                zzbnyVar.zzj();
                Object zza = this.zzb.zza(zzbnyVar);
                if (map.put(zza, this.zzc.zza(zzbnyVar)) != null) {
                    throw new zzbif("duplicate key: ".concat(String.valueOf(zza)));
                }
                zzbnyVar.zzl();
            }
            zzbnyVar.zzl();
        } else {
            zzbnyVar.zzk();
            while (zzbnyVar.zzq()) {
                zzbju.zza.zza(zzbnyVar);
                Object zza2 = this.zzb.zza(zzbnyVar);
                if (map.put(zza2, this.zzc.zza(zzbnyVar)) != null) {
                    throw new zzbif("duplicate key: ".concat(String.valueOf(zza2)));
                }
            }
            zzbnyVar.zzm();
        }
        return map;
    }

    @Override // com.google.android.gms.internal.mlkit_vision_digital_ink.zzbio
    public final /* bridge */ /* synthetic */ void zzb(zzboa zzboaVar, Object obj) throws IOException {
        throw null;
    }
}
