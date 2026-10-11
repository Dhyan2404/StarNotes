package com.google.android.gms.internal.mlkit_vision_digital_ink;

/* loaded from: classes5.dex */
final class zzae extends zzbs {
    private final String zza;
    private final zzagb zzb;
    private final zzagb zzc;
    private final boolean zzd;

    public /* synthetic */ zzae(String str, zzagb zzagbVar, zzagb zzagbVar2, boolean z, boolean z2, zzad zzadVar) {
        this.zza = str;
        this.zzb = zzagbVar;
        this.zzc = zzagbVar2;
        this.zzd = z2;
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj instanceof zzbs) {
            zzbs zzbsVar = (zzbs) obj;
            if (this.zza.equals(zzbsVar.zzc()) && this.zzb.equals(zzbsVar.zza()) && this.zzc.equals(zzbsVar.zzb())) {
                zzbsVar.zzd();
                if (this.zzd == zzbsVar.zze()) {
                    return true;
                }
            }
        }
        return false;
    }

    public final int hashCode() {
        return (true != this.zzd ? 1237 : 1231) ^ ((((((((this.zza.hashCode() ^ 1000003) * 1000003) ^ 2040732332) * 1000003) ^ 2040732332) * 1000003) ^ 1237) * 1000003);
    }

    public final String toString() {
        return "GetFileGroupRequest{groupName=" + this.zza + ", accountOptional=Optional.absent(), variantIdOptional=Optional.absent(), preserveZipDirectories=false, verifyIsolatedStructure=" + this.zzd + "}";
    }

    @Override // com.google.android.gms.internal.mlkit_vision_digital_ink.zzbs
    public final zzagb zza() {
        return this.zzb;
    }

    @Override // com.google.android.gms.internal.mlkit_vision_digital_ink.zzbs
    public final zzagb zzb() {
        return this.zzc;
    }

    @Override // com.google.android.gms.internal.mlkit_vision_digital_ink.zzbs
    public final String zzc() {
        return this.zza;
    }

    @Override // com.google.android.gms.internal.mlkit_vision_digital_ink.zzbs
    public final boolean zzd() {
        return false;
    }

    @Override // com.google.android.gms.internal.mlkit_vision_digital_ink.zzbs
    public final boolean zze() {
        return this.zzd;
    }
}
