package com.google.android.gms.internal.mlkit_vision_digital_ink;

/* loaded from: classes5.dex */
public final class zzpt {
    private final zzaha zza;

    public zzpt(final zzbq zzbqVar) {
        this.zza = zzahe.zza(new zzaha() { // from class: com.google.android.gms.internal.mlkit_vision_digital_ink.zzps
            @Override // com.google.android.gms.internal.mlkit_vision_digital_ink.zzaha
            public final Object zza() {
                zzbw zzi = zzbq.this.zzi();
                return zzi == zzbw.UNDEFINED ? zzbw.SHARED_PREFERENCES_ONLY : zzi;
            }
        });
    }

    public final zzbw zza() {
        return (zzbw) this.zza.zza();
    }
}
