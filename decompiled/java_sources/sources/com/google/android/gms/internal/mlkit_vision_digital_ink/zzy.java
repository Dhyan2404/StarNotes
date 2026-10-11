package com.google.android.gms.internal.mlkit_vision_digital_ink;

/* loaded from: classes5.dex */
final class zzy extends zzt {
    private final zzav zza;
    private final zzagb zzb;
    private final zzagb zzc;

    public /* synthetic */ zzy(zzav zzavVar, zzagb zzagbVar, zzagb zzagbVar2, zzx zzxVar) {
        this.zza = zzavVar;
        this.zzb = zzagbVar;
        this.zzc = zzagbVar2;
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj instanceof zzt) {
            zzt zztVar = (zzt) obj;
            if (this.zza.equals(zztVar.zzb()) && this.zzb.equals(zztVar.zzc()) && this.zzc.equals(zztVar.zzd())) {
                return true;
            }
        }
        return false;
    }

    public final int hashCode() {
        return ((((this.zza.hashCode() ^ 1000003) * 1000003) ^ 2040732332) * 1000003) ^ 2040732332;
    }

    public final String toString() {
        return "AddFileGroupRequest{dataFileGroup=" + this.zza.toString() + ", accountOptional=Optional.absent(), variantIdOptional=Optional.absent()}";
    }

    @Override // com.google.android.gms.internal.mlkit_vision_digital_ink.zzt
    public final zzav zzb() {
        return this.zza;
    }

    @Override // com.google.android.gms.internal.mlkit_vision_digital_ink.zzt
    public final zzagb zzc() {
        return this.zzb;
    }

    @Override // com.google.android.gms.internal.mlkit_vision_digital_ink.zzt
    public final zzagb zzd() {
        return this.zzc;
    }
}
