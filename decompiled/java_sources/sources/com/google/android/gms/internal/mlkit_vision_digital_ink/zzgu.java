package com.google.android.gms.internal.mlkit_vision_digital_ink;

import javax.annotation.Nullable;

/* loaded from: classes5.dex */
final class zzgu extends zzgz {
    private final zzr zza;

    public zzgu(zzr zzrVar) {
        super(null);
        this.zza = zzrVar;
    }

    public final boolean equals(@Nullable Object obj) {
        if (obj instanceof zzhb) {
            zzhb zzhbVar = (zzhb) obj;
            if (zzhbVar.zzb() == 3 && this.zza.equals(zzhbVar.zza())) {
                return true;
            }
        }
        return false;
    }

    public final int hashCode() {
        return this.zza.hashCode();
    }

    @Override // com.google.android.gms.internal.mlkit_vision_digital_ink.zzgz, com.google.android.gms.internal.mlkit_vision_digital_ink.zzhb
    public final zzr zza() {
        return this.zza;
    }

    @Override // com.google.android.gms.internal.mlkit_vision_digital_ink.zzhb
    public final int zzb() {
        return 3;
    }
}
