package com.google.android.gms.internal.mlkit_vision_digital_ink;

/* loaded from: classes5.dex */
public enum zzbw implements zzbuk {
    UNDEFINED(0),
    SHARED_PREFERENCES_ONLY(1),
    SHARED_PREFERENCES_AND_PROTOSTORE(2),
    PROTOSTORE_ONLY(3);

    private static final zzbul zze = new zzbul() { // from class: com.google.android.gms.internal.mlkit_vision_digital_ink.zzbv
    };
    private final int zzg;

    zzbw(int i) {
        this.zzg = i;
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
