package com.google.android.gms.internal.measurement;

/* loaded from: classes5.dex */
final class zzcd extends zzcl {
    private String zza;
    private zzco zzb;
    private zzcn zzc;
    private byte zzd;

    @Override // com.google.android.gms.internal.measurement.zzcl
    public final zzcl zza(zzco zzcoVar) {
        if (zzcoVar != null) {
            this.zzb = zzcoVar;
            return this;
        }
        throw new NullPointerException("Null fileChecks");
    }

    public final zzcl zza(String str) {
        this.zza = str;
        return this;
    }

    @Override // com.google.android.gms.internal.measurement.zzcl
    public final zzcl zza(zzcn zzcnVar) {
        if (zzcnVar != null) {
            this.zzc = zzcnVar;
            return this;
        }
        throw new NullPointerException("Null filePurpose");
    }

    @Override // com.google.android.gms.internal.measurement.zzcl
    public final zzcl zza(boolean z) {
        this.zzd = (byte) (this.zzd | 1);
        return this;
    }

    @Override // com.google.android.gms.internal.measurement.zzcl
    public final zzcm zza() {
        if (this.zzd == 1 && this.zza != null && this.zzb != null && this.zzc != null) {
            return new zzce(this.zza, this.zzb, this.zzc);
        }
        StringBuilder sb = new StringBuilder();
        if (this.zza == null) {
            sb.append(" fileOwner");
        }
        if ((1 & this.zzd) == 0) {
            sb.append(" hasDifferentDmaOwner");
        }
        if (this.zzb == null) {
            sb.append(" fileChecks");
        }
        if (this.zzc == null) {
            sb.append(" filePurpose");
        }
        throw new IllegalStateException("Missing required properties:" + String.valueOf(sb));
    }
}
