package com.google.android.gms.internal.mlkit_vision_digital_ink;

/* loaded from: classes5.dex */
final class zzac extends zzbr {
    private String zza;
    private final zzagb zzb = zzagb.zzd();
    private final zzagb zzc = zzagb.zzd();
    private boolean zzd;
    private byte zze;

    @Override // com.google.android.gms.internal.mlkit_vision_digital_ink.zzbr
    public final zzbr zza(String str) {
        if (str == null) {
            throw new NullPointerException("Null groupName");
        }
        this.zza = str;
        return this;
    }

    public final zzbr zzb(boolean z) {
        this.zze = (byte) (this.zze | 1);
        return this;
    }

    @Override // com.google.android.gms.internal.mlkit_vision_digital_ink.zzbr
    public final zzbr zzc(boolean z) {
        this.zzd = true;
        this.zze = (byte) (this.zze | 2);
        return this;
    }

    @Override // com.google.android.gms.internal.mlkit_vision_digital_ink.zzbr
    public final zzbs zzd() {
        String str;
        if (this.zze == 3 && (str = this.zza) != null) {
            return new zzae(str, this.zzb, this.zzc, false, this.zzd, null);
        }
        StringBuilder sb = new StringBuilder();
        if (this.zza == null) {
            sb.append(" groupName");
        }
        if ((this.zze & 1) == 0) {
            sb.append(" preserveZipDirectories");
        }
        if ((this.zze & 2) == 0) {
            sb.append(" verifyIsolatedStructure");
        }
        throw new IllegalStateException("Missing required properties:".concat(sb.toString()));
    }
}
