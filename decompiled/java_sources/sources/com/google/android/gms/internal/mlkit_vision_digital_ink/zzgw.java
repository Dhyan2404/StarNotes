package com.google.android.gms.internal.mlkit_vision_digital_ink;

import javax.annotation.Nullable;

/* loaded from: classes5.dex */
final class zzgw extends zzgz {
    private final zzcr zza;

    public zzgw(zzcr zzcrVar) {
        super(null);
        this.zza = zzcrVar;
    }

    public final boolean equals(@Nullable Object obj) {
        if (obj instanceof zzhb) {
            zzhb zzhbVar = (zzhb) obj;
            if (zzhbVar.zzb() == 1 && this.zza.equals(zzhbVar.zzd())) {
                return true;
            }
        }
        return false;
    }

    public final int hashCode() {
        return this.zza.hashCode();
    }

    @Override // com.google.android.gms.internal.mlkit_vision_digital_ink.zzhb
    public final int zzb() {
        return 1;
    }

    @Override // com.google.android.gms.internal.mlkit_vision_digital_ink.zzgz, com.google.android.gms.internal.mlkit_vision_digital_ink.zzhb
    public final zzcr zzd() {
        return this.zza;
    }
}
