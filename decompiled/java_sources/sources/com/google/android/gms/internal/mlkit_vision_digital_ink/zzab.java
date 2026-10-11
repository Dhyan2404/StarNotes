package com.google.android.gms.internal.mlkit_vision_digital_ink;

/* loaded from: classes5.dex */
final class zzab extends zzbl {
    private final String zza;
    private final zzagb zzb;
    private final zzagb zzc;
    private final zzagb zzd;
    private final zzagb zze;
    private final zzagb zzf;
    private final zzagb zzg;
    private final boolean zzh;
    private final int zzi;

    public /* synthetic */ zzab(String str, zzagb zzagbVar, zzagb zzagbVar2, zzagb zzagbVar3, zzagb zzagbVar4, zzagb zzagbVar5, zzagb zzagbVar6, int i, int i2, boolean z, boolean z2, zzaa zzaaVar) {
        this.zza = str;
        this.zzb = zzagbVar;
        this.zzc = zzagbVar2;
        this.zzd = zzagbVar3;
        this.zze = zzagbVar4;
        this.zzf = zzagbVar5;
        this.zzg = zzagbVar6;
        this.zzi = i2;
        this.zzh = z2;
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj instanceof zzbl) {
            zzbl zzblVar = (zzbl) obj;
            if (this.zza.equals(zzblVar.zzh()) && this.zzb.equals(zzblVar.zzb()) && this.zzc.equals(zzblVar.zzg()) && this.zzd.equals(zzblVar.zzd()) && this.zze.equals(zzblVar.zzc()) && this.zzf.equals(zzblVar.zze()) && this.zzg.equals(zzblVar.zzf())) {
                zzblVar.zza();
                if (this.zzi == zzblVar.zzk()) {
                    zzblVar.zzi();
                    if (this.zzh == zzblVar.zzj()) {
                        return true;
                    }
                }
            }
        }
        return false;
    }

    public final int hashCode() {
        return (true != this.zzh ? 1237 : 1231) ^ ((((((((((((((((((this.zza.hashCode() ^ 1000003) * 1000003) ^ 2040732332) * 1000003) ^ 2040732332) * 1000003) ^ 2040732332) * 1000003) ^ 2040732332) * 1000003) ^ this.zzf.hashCode()) * 1000003) ^ 2040732332) * (-721379959)) ^ this.zzi) * 1000003) ^ 1237) * 1000003);
    }

    public final String toString() {
        return "DownloadFileGroupRequest{groupName=" + this.zza + ", accountOptional=Optional.absent(), variantIdOptional=Optional.absent(), contentTitleOptional=Optional.absent(), contentTextOptional=Optional.absent(), downloadConditionsOptional=" + String.valueOf(this.zzf) + ", listenerOptional=Optional.absent(), groupSizeBytes=0, showNotifications=" + (this.zzi != 1 ? "ALL" : "NONE") + ", preserveZipDirectories=false, verifyIsolatedStructure=" + this.zzh + "}";
    }

    @Override // com.google.android.gms.internal.mlkit_vision_digital_ink.zzbl
    public final int zza() {
        return 0;
    }

    @Override // com.google.android.gms.internal.mlkit_vision_digital_ink.zzbl
    public final zzagb zzb() {
        return this.zzb;
    }

    @Override // com.google.android.gms.internal.mlkit_vision_digital_ink.zzbl
    public final zzagb zzc() {
        return this.zze;
    }

    @Override // com.google.android.gms.internal.mlkit_vision_digital_ink.zzbl
    public final zzagb zzd() {
        return this.zzd;
    }

    @Override // com.google.android.gms.internal.mlkit_vision_digital_ink.zzbl
    public final zzagb zze() {
        return this.zzf;
    }

    @Override // com.google.android.gms.internal.mlkit_vision_digital_ink.zzbl
    public final zzagb zzf() {
        return this.zzg;
    }

    @Override // com.google.android.gms.internal.mlkit_vision_digital_ink.zzbl
    public final zzagb zzg() {
        return this.zzc;
    }

    @Override // com.google.android.gms.internal.mlkit_vision_digital_ink.zzbl
    public final String zzh() {
        return this.zza;
    }

    @Override // com.google.android.gms.internal.mlkit_vision_digital_ink.zzbl
    public final boolean zzi() {
        return false;
    }

    @Override // com.google.android.gms.internal.mlkit_vision_digital_ink.zzbl
    public final boolean zzj() {
        return this.zzh;
    }

    @Override // com.google.android.gms.internal.mlkit_vision_digital_ink.zzbl
    public final int zzk() {
        return this.zzi;
    }
}
