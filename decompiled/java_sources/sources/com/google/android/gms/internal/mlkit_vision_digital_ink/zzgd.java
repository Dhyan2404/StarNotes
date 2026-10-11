package com.google.android.gms.internal.mlkit_vision_digital_ink;

import java.util.Set;

/* loaded from: classes5.dex */
final class zzgd extends zzgj {
    private boolean zza;
    private zzaka zzb;
    private byte zzc;

    @Override // com.google.android.gms.internal.mlkit_vision_digital_ink.zzgj
    public final zzgj zza(boolean z) {
        this.zza = z;
        this.zzc = (byte) 1;
        return this;
    }

    @Override // com.google.android.gms.internal.mlkit_vision_digital_ink.zzgj
    public final zzgj zzb(Set set) {
        this.zzb = zzaka.zzg(set);
        return this;
    }

    @Override // com.google.android.gms.internal.mlkit_vision_digital_ink.zzgj
    public final zzgl zzc() {
        if (this.zzb == null) {
            this.zzb = zzaka.zzi();
        }
        if (this.zzc == 1) {
            return new zzgf(this.zza, this.zzb, null);
        }
        throw new IllegalStateException("Missing required properties: requireUnmeteredNetwork");
    }
}
