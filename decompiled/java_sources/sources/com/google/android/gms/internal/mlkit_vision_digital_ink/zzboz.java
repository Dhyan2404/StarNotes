package com.google.android.gms.internal.mlkit_vision_digital_ink;

/* loaded from: classes5.dex */
final class zzboz extends zzbpc {
    private final String zza;
    private final boolean zzb;
    private final int zzc;

    public /* synthetic */ zzboz(String str, boolean z, int i, zzboy zzboyVar) {
        this.zza = str;
        this.zzb = z;
        this.zzc = i;
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj instanceof zzbpc) {
            zzbpc zzbpcVar = (zzbpc) obj;
            if (this.zza.equals(zzbpcVar.zzb()) && this.zzb == zzbpcVar.zzc() && this.zzc == zzbpcVar.zza()) {
                return true;
            }
        }
        return false;
    }

    public final int hashCode() {
        int hashCode = this.zza.hashCode() ^ 1000003;
        return this.zzc ^ (((hashCode * 1000003) ^ (true != this.zzb ? 1237 : 1231)) * 1000003);
    }

    public final String toString() {
        return "MLKitLoggingOptions{libraryName=" + this.zza + ", enableFirelog=" + this.zzb + ", firelogEventType=" + this.zzc + "}";
    }

    @Override // com.google.android.gms.internal.mlkit_vision_digital_ink.zzbpc
    public final int zza() {
        return this.zzc;
    }

    @Override // com.google.android.gms.internal.mlkit_vision_digital_ink.zzbpc
    public final String zzb() {
        return this.zza;
    }

    @Override // com.google.android.gms.internal.mlkit_vision_digital_ink.zzbpc
    public final boolean zzc() {
        return this.zzb;
    }
}
