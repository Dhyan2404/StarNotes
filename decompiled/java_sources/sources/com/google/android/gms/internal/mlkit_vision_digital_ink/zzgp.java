package com.google.android.gms.internal.mlkit_vision_digital_ink;

/* loaded from: classes5.dex */
final class zzgp extends zzgq {
    private final String zza;

    public zzgp(int i, String str) {
        this.zza = str;
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj instanceof zzgq) {
            zzgq zzgqVar = (zzgq) obj;
            zzgqVar.zzb();
            if (this.zza.equals(zzgqVar.zza())) {
                return true;
            }
        }
        return false;
    }

    public final int hashCode() {
        return this.zza.hashCode() ^ (-722379962);
    }

    @Override // com.google.android.gms.internal.mlkit_vision_digital_ink.zzgq
    public final String zza() {
        return this.zza;
    }

    @Override // com.google.android.gms.internal.mlkit_vision_digital_ink.zzgq
    public final int zzb() {
        return 1;
    }
}
