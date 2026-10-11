package com.google.android.gms.internal.mlkit_vision_digital_ink;

/* loaded from: classes5.dex */
final class zzacx extends zzacy {
    private final zzbvu zza;
    private final zzbtr zzb;

    public zzacx(zzbvu zzbvuVar, zzbtr zzbtrVar) {
        this.zza = zzbvuVar;
        if (zzbtrVar == null) {
            throw new NullPointerException("Null extensionRegistryLite");
        }
        this.zzb = zzbtrVar;
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj instanceof zzacy) {
            zzacy zzacyVar = (zzacy) obj;
            if (this.zza.equals(zzacyVar.zzc()) && this.zzb.equals(zzacyVar.zzb())) {
                return true;
            }
        }
        return false;
    }

    public final int hashCode() {
        return this.zzb.hashCode() ^ ((this.zza.hashCode() ^ 1000003) * 1000003);
    }

    public final String toString() {
        return "ProtoSerializer{defaultValue=" + this.zza.toString() + ", extensionRegistryLite=" + this.zzb.toString() + "}";
    }

    @Override // com.google.android.gms.internal.mlkit_vision_digital_ink.zzacy, com.google.android.gms.internal.mlkit_vision_digital_ink.zzabc
    public final /* synthetic */ Object zza() {
        return this.zza;
    }

    @Override // com.google.android.gms.internal.mlkit_vision_digital_ink.zzacy
    public final zzbtr zzb() {
        return this.zzb;
    }

    @Override // com.google.android.gms.internal.mlkit_vision_digital_ink.zzacy
    public final zzbvu zzc() {
        return this.zza;
    }
}
