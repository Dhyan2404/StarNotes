package com.google.android.gms.internal.mlkit_vision_digital_ink;

/* loaded from: classes5.dex */
final class zzah extends zzbu {
    private final boolean zza;
    private final zzagb zzb;
    private final zzagb zzc;
    private final zzagb zzd;
    private final boolean zze;

    public /* synthetic */ zzah(boolean z, boolean z2, zzagb zzagbVar, zzagb zzagbVar2, zzagb zzagbVar3, boolean z3, boolean z4, zzag zzagVar) {
        this.zza = z;
        this.zzb = zzagbVar;
        this.zzc = zzagbVar2;
        this.zzd = zzagbVar3;
        this.zze = z4;
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj instanceof zzbu) {
            zzbu zzbuVar = (zzbu) obj;
            if (this.zza == zzbuVar.zze()) {
                zzbuVar.zzd();
                if (this.zzb.equals(zzbuVar.zzb()) && this.zzc.equals(zzbuVar.zza()) && this.zzd.equals(zzbuVar.zzc())) {
                    zzbuVar.zzf();
                    if (this.zze == zzbuVar.zzg()) {
                        return true;
                    }
                }
            }
        }
        return false;
    }

    public final int hashCode() {
        return (((((((((((((true != this.zza ? 1237 : 1231) ^ 1000003) * 1000003) ^ 1237) * 1000003) ^ 2040732332) * 1000003) ^ 2040732332) * 1000003) ^ 2040732332) * 1000003) ^ 1237) * 1000003) ^ (true != this.zze ? 1237 : 1231);
    }

    public final String toString() {
        return "GetFileGroupsByFilterRequest{includeAllGroups=" + this.zza + ", groupWithNoAccountOnly=false, groupNameOptional=Optional.absent(), accountOptional=Optional.absent(), sourceOptional=Optional.absent(), preserveZipDirectories=false, verifyIsolatedStructure=" + this.zze + "}";
    }

    @Override // com.google.android.gms.internal.mlkit_vision_digital_ink.zzbu
    public final zzagb zza() {
        return this.zzc;
    }

    @Override // com.google.android.gms.internal.mlkit_vision_digital_ink.zzbu
    public final zzagb zzb() {
        return this.zzb;
    }

    @Override // com.google.android.gms.internal.mlkit_vision_digital_ink.zzbu
    public final zzagb zzc() {
        return this.zzd;
    }

    @Override // com.google.android.gms.internal.mlkit_vision_digital_ink.zzbu
    public final boolean zzd() {
        return false;
    }

    @Override // com.google.android.gms.internal.mlkit_vision_digital_ink.zzbu
    public final boolean zze() {
        return this.zza;
    }

    @Override // com.google.android.gms.internal.mlkit_vision_digital_ink.zzbu
    public final boolean zzf() {
        return false;
    }

    @Override // com.google.android.gms.internal.mlkit_vision_digital_ink.zzbu
    public final boolean zzg() {
        return this.zze;
    }
}
