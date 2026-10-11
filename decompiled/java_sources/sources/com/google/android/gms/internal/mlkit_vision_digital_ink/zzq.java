package com.google.android.gms.internal.mlkit_vision_digital_ink;

/* loaded from: classes5.dex */
public enum zzq implements zzbuk {
    UNSPECIFIED(0),
    DOWNLOADED(1),
    PENDING(2),
    PENDING_CUSTOM_VALIDATION(3);

    private static final zzbul zze = new zzbul() { // from class: com.google.android.gms.internal.mlkit_vision_digital_ink.zzo
    };
    private final int zzg;

    zzq(int i) {
        this.zzg = i;
    }

    public static zzq zzb(int i) {
        if (i == 0) {
            return UNSPECIFIED;
        }
        if (i == 1) {
            return DOWNLOADED;
        }
        if (i == 2) {
            return PENDING;
        }
        if (i != 3) {
            return null;
        }
        return PENDING_CUSTOM_VALIDATION;
    }

    public static zzbum zzc() {
        return zzp.zza;
    }

    @Override // java.lang.Enum
    public final String toString() {
        return Integer.toString(this.zzg);
    }

    @Override // com.google.android.gms.internal.mlkit_vision_digital_ink.zzbuk
    public final int zza() {
        return this.zzg;
    }
}
