package com.google.android.gms.internal.mlkit_vision_digital_ink;

/* loaded from: classes5.dex */
final class zzz extends zzbk {
    private String zza;
    private final zzagb zzb = zzagb.zzd();
    private final zzagb zzc = zzagb.zzd();
    private final zzagb zzd = zzagb.zzd();
    private final zzagb zze = zzagb.zzd();
    private zzagb zzf = zzagb.zzd();
    private final zzagb zzg = zzagb.zzd();
    private boolean zzh;
    private byte zzi;
    private int zzj;

    @Override // com.google.android.gms.internal.mlkit_vision_digital_ink.zzbk
    public final zzbk zza(zzagb zzagbVar) {
        this.zzf = zzagbVar;
        return this;
    }

    @Override // com.google.android.gms.internal.mlkit_vision_digital_ink.zzbk
    public final zzbk zzb(String str) {
        if (str == null) {
            throw new NullPointerException("Null groupName");
        }
        this.zza = str;
        return this;
    }

    public final zzbk zzc(int i) {
        this.zzi = (byte) (this.zzi | 1);
        return this;
    }

    @Override // com.google.android.gms.internal.mlkit_vision_digital_ink.zzbk
    public final zzbk zzd(boolean z) {
        this.zzi = (byte) (this.zzi | 2);
        return this;
    }

    @Override // com.google.android.gms.internal.mlkit_vision_digital_ink.zzbk
    public final zzbk zze(boolean z) {
        this.zzh = true;
        this.zzi = (byte) (this.zzi | 4);
        return this;
    }

    @Override // com.google.android.gms.internal.mlkit_vision_digital_ink.zzbk
    public final zzbl zzf() {
        String str;
        int i;
        if (this.zzi == 7 && (str = this.zza) != null && (i = this.zzj) != 0) {
            return new zzab(str, this.zzb, this.zzc, this.zzd, this.zze, this.zzf, this.zzg, 0, i, false, this.zzh, null);
        }
        StringBuilder sb = new StringBuilder();
        if (this.zza == null) {
            sb.append(" groupName");
        }
        if ((this.zzi & 1) == 0) {
            sb.append(" groupSizeBytes");
        }
        if (this.zzj == 0) {
            sb.append(" showNotifications");
        }
        if ((this.zzi & 2) == 0) {
            sb.append(" preserveZipDirectories");
        }
        if ((this.zzi & 4) == 0) {
            sb.append(" verifyIsolatedStructure");
        }
        throw new IllegalStateException("Missing required properties:".concat(sb.toString()));
    }

    @Override // com.google.android.gms.internal.mlkit_vision_digital_ink.zzbk
    public final zzbk zzg(int i) {
        this.zzj = 2;
        return this;
    }
}
