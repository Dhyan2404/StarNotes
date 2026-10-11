package com.google.android.gms.internal.mlkit_vision_digital_ink;

import javax.annotation.Nullable;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes5.dex */
public final class zzsa extends zzsc {
    private final zzcr zza;
    private final zzcr zzb;

    public zzsa(@Nullable zzcr zzcrVar, @Nullable zzcr zzcrVar2) {
        this.zza = zzcrVar;
        this.zzb = zzcrVar2;
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj instanceof zzsc) {
            zzsc zzscVar = (zzsc) obj;
            zzcr zzcrVar = this.zza;
            if (zzcrVar != null ? zzcrVar.equals(zzscVar.zzb()) : zzscVar.zzb() == null) {
                zzcr zzcrVar2 = this.zzb;
                if (zzcrVar2 != null ? zzcrVar2.equals(zzscVar.zza()) : zzscVar.zza() == null) {
                    return true;
                }
            }
        }
        return false;
    }

    public final int hashCode() {
        zzcr zzcrVar = this.zza;
        int hashCode = zzcrVar == null ? 0 : zzcrVar.hashCode();
        zzcr zzcrVar2 = this.zzb;
        return ((hashCode ^ 1000003) * 1000003) ^ (zzcrVar2 != null ? zzcrVar2.hashCode() : 0);
    }

    public final String toString() {
        return "GroupPair{pendingGroup=" + String.valueOf(this.zza) + ", downloadedGroup=" + String.valueOf(this.zzb) + "}";
    }

    @Override // com.google.android.gms.internal.mlkit_vision_digital_ink.zzsc
    @Nullable
    public final zzcr zza() {
        return this.zzb;
    }

    @Override // com.google.android.gms.internal.mlkit_vision_digital_ink.zzsc
    @Nullable
    public final zzcr zzb() {
        return this.zza;
    }
}
