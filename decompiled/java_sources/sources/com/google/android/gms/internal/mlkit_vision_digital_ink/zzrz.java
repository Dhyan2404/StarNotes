package com.google.android.gms.internal.mlkit_vision_digital_ink;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes5.dex */
public final class zzrz extends zzsb {
    private final zzdu zza;
    private final zzcr zzb;

    public zzrz(zzdu zzduVar, zzcr zzcrVar) {
        if (zzduVar == null) {
            throw new NullPointerException("Null groupKey");
        }
        this.zza = zzduVar;
        if (zzcrVar == null) {
            throw new NullPointerException("Null dataFileGroup");
        }
        this.zzb = zzcrVar;
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj instanceof zzsb) {
            zzsb zzsbVar = (zzsb) obj;
            if (this.zza.equals(zzsbVar.zzb()) && this.zzb.equals(zzsbVar.zza())) {
                return true;
            }
        }
        return false;
    }

    public final int hashCode() {
        return this.zzb.hashCode() ^ ((this.zza.hashCode() ^ 1000003) * 1000003);
    }

    public final String toString() {
        return "GroupKeyAndGroup{groupKey=" + this.zza.toString() + ", dataFileGroup=" + this.zzb.toString() + "}";
    }

    @Override // com.google.android.gms.internal.mlkit_vision_digital_ink.zzsb
    public final zzcr zza() {
        return this.zzb;
    }

    @Override // com.google.android.gms.internal.mlkit_vision_digital_ink.zzsb
    public final zzdu zzb() {
        return this.zza;
    }
}
