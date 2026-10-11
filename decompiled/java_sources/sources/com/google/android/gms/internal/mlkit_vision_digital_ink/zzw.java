package com.google.android.gms.internal.mlkit_vision_digital_ink;

/* loaded from: classes5.dex */
final class zzw extends zzs {
    private zzav zza;
    private final zzagb zzb = zzagb.zzd();
    private final zzagb zzc = zzagb.zzd();

    @Override // com.google.android.gms.internal.mlkit_vision_digital_ink.zzs
    public final zzs zza(zzav zzavVar) {
        if (zzavVar == null) {
            throw new NullPointerException("Null dataFileGroup");
        }
        this.zza = zzavVar;
        return this;
    }

    @Override // com.google.android.gms.internal.mlkit_vision_digital_ink.zzs
    public final zzt zzb() {
        zzav zzavVar = this.zza;
        if (zzavVar != null) {
            return new zzy(zzavVar, this.zzb, this.zzc, null);
        }
        throw new IllegalStateException("Missing required properties: dataFileGroup");
    }
}
