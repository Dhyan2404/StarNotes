package com.google.android.gms.internal.mlkit_vision_digital_ink;

/* loaded from: classes5.dex */
final class zzak extends zzfz {
    private final String zza;
    private final zzagb zzb;
    private final zzagb zzc;

    public /* synthetic */ zzak(String str, zzagb zzagbVar, zzagb zzagbVar2, boolean z, zzaj zzajVar) {
        this.zza = str;
        this.zzb = zzagbVar;
        this.zzc = zzagbVar2;
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj instanceof zzfz) {
            zzfz zzfzVar = (zzfz) obj;
            if (this.zza.equals(zzfzVar.zzc()) && this.zzb.equals(zzfzVar.zza()) && this.zzc.equals(zzfzVar.zzb())) {
                zzfzVar.zzd();
                return true;
            }
        }
        return false;
    }

    public final int hashCode() {
        return ((((((this.zza.hashCode() ^ 1000003) * 1000003) ^ 2040732332) * 1000003) ^ 2040732332) * 1000003) ^ 1237;
    }

    public final String toString() {
        return "RemoveFileGroupRequest{groupName=" + this.zza + ", accountOptional=Optional.absent(), variantIdOptional=Optional.absent(), pendingOnly=false}";
    }

    @Override // com.google.android.gms.internal.mlkit_vision_digital_ink.zzfz
    public final zzagb zza() {
        return this.zzb;
    }

    @Override // com.google.android.gms.internal.mlkit_vision_digital_ink.zzfz
    public final zzagb zzb() {
        return this.zzc;
    }

    @Override // com.google.android.gms.internal.mlkit_vision_digital_ink.zzfz
    public final String zzc() {
        return this.zza;
    }

    @Override // com.google.android.gms.internal.mlkit_vision_digital_ink.zzfz
    public final boolean zzd() {
        return false;
    }
}
