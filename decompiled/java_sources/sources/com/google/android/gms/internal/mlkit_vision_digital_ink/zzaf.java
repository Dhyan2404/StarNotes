package com.google.android.gms.internal.mlkit_vision_digital_ink;

/* loaded from: classes5.dex */
final class zzaf extends zzbt {
    private boolean zza;
    private final zzagb zzb = zzagb.zzd();
    private final zzagb zzc = zzagb.zzd();
    private final zzagb zzd = zzagb.zzd();
    private boolean zze;
    private byte zzf;

    @Override // com.google.android.gms.internal.mlkit_vision_digital_ink.zzbt
    public final zzbt zza(boolean z) {
        this.zzf = (byte) (this.zzf | 2);
        return this;
    }

    @Override // com.google.android.gms.internal.mlkit_vision_digital_ink.zzbt
    public final zzbt zzb(boolean z) {
        this.zza = z;
        this.zzf = (byte) (this.zzf | 1);
        return this;
    }

    @Override // com.google.android.gms.internal.mlkit_vision_digital_ink.zzbt
    public final zzbt zzc(boolean z) {
        this.zzf = (byte) (this.zzf | 4);
        return this;
    }

    @Override // com.google.android.gms.internal.mlkit_vision_digital_ink.zzbt
    public final zzbt zzd(boolean z) {
        this.zze = true;
        this.zzf = (byte) (this.zzf | 8);
        return this;
    }

    @Override // com.google.android.gms.internal.mlkit_vision_digital_ink.zzbt
    public final zzbu zze() {
        if (this.zzf == 15) {
            return new zzah(this.zza, false, this.zzb, this.zzc, this.zzd, false, this.zze, null);
        }
        StringBuilder sb = new StringBuilder();
        if ((this.zzf & 1) == 0) {
            sb.append(" includeAllGroups");
        }
        if ((this.zzf & 2) == 0) {
            sb.append(" groupWithNoAccountOnly");
        }
        if ((this.zzf & 4) == 0) {
            sb.append(" preserveZipDirectories");
        }
        if ((this.zzf & 8) == 0) {
            sb.append(" verifyIsolatedStructure");
        }
        throw new IllegalStateException("Missing required properties:".concat(sb.toString()));
    }
}
