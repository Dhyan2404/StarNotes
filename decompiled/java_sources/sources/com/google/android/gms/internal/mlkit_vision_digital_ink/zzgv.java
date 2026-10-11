package com.google.android.gms.internal.mlkit_vision_digital_ink;

import javax.annotation.Nullable;

/* loaded from: classes5.dex */
final class zzgv extends zzgz {
    private final zzasi zza;

    public zzgv(zzasi zzasiVar) {
        super(null);
        this.zza = zzasiVar;
    }

    public final boolean equals(@Nullable Object obj) {
        if (obj instanceof zzhb) {
            zzhb zzhbVar = (zzhb) obj;
            if (zzhbVar.zzb() == 2 && this.zza.equals(zzhbVar.zzc())) {
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
        return 2;
    }

    @Override // com.google.android.gms.internal.mlkit_vision_digital_ink.zzgz, com.google.android.gms.internal.mlkit_vision_digital_ink.zzhb
    public final zzasi zzc() {
        return this.zza;
    }
}
