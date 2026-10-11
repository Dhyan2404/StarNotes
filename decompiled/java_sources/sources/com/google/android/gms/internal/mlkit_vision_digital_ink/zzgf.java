package com.google.android.gms.internal.mlkit_vision_digital_ink;

/* loaded from: classes5.dex */
final class zzgf extends zzgl {
    private final boolean zzd;
    private final zzaka zze;

    public /* synthetic */ zzgf(boolean z, zzaka zzakaVar, zzge zzgeVar) {
        this.zzd = z;
        this.zze = zzakaVar;
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj instanceof zzgl) {
            zzgl zzglVar = (zzgl) obj;
            if (this.zzd == zzglVar.zzb() && this.zze.equals(zzglVar.zza())) {
                return true;
            }
        }
        return false;
    }

    public final int hashCode() {
        return this.zze.hashCode() ^ (((true != this.zzd ? 1237 : 1231) ^ 1000003) * 1000003);
    }

    public final String toString() {
        return "DownloadConstraints{requireUnmeteredNetwork=" + this.zzd + ", requiredNetworkTypes=" + String.valueOf(this.zze) + "}";
    }

    @Override // com.google.android.gms.internal.mlkit_vision_digital_ink.zzgl
    public final zzaka zza() {
        return this.zze;
    }

    @Override // com.google.android.gms.internal.mlkit_vision_digital_ink.zzgl
    public final boolean zzb() {
        return this.zzd;
    }
}
