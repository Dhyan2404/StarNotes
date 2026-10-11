package com.google.android.gms.internal.mlkit_vision_digital_ink;

/* loaded from: classes5.dex */
final class zzbvk implements zzbvs {
    private final zzbvs[] zza;

    public zzbvk(zzbvs... zzbvsVarArr) {
        this.zza = zzbvsVarArr;
    }

    @Override // com.google.android.gms.internal.mlkit_vision_digital_ink.zzbvs
    public final zzbvr zzb(Class cls) {
        zzbvs[] zzbvsVarArr = this.zza;
        for (int i = 0; i < 2; i++) {
            zzbvs zzbvsVar = zzbvsVarArr[i];
            if (zzbvsVar.zzc(cls)) {
                return zzbvsVar.zzb(cls);
            }
        }
        throw new UnsupportedOperationException("No factory is available for message type: ".concat(cls.getName()));
    }

    @Override // com.google.android.gms.internal.mlkit_vision_digital_ink.zzbvs
    public final boolean zzc(Class cls) {
        zzbvs[] zzbvsVarArr = this.zza;
        for (int i = 0; i < 2; i++) {
            if (zzbvsVarArr[i].zzc(cls)) {
                return true;
            }
        }
        return false;
    }
}
