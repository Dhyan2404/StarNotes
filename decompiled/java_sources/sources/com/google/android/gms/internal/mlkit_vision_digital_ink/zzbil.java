package com.google.android.gms.internal.mlkit_vision_digital_ink;

/* loaded from: classes5.dex */
public enum zzbil implements zzbim {
    DOUBLE,
    LAZILY_PARSED_NUMBER,
    LONG_OR_DOUBLE,
    BIG_DECIMAL;

    @Override // com.google.android.gms.internal.mlkit_vision_digital_ink.zzbim
    public final /* synthetic */ Number zza(zzbny zzbnyVar) {
        int ordinal = ordinal();
        if (ordinal == 0) {
            return Double.valueOf(zzbnyVar.zza());
        }
        if (ordinal == 1) {
            return new zzbjv(zzbnyVar.zzi());
        }
        if (ordinal == 2) {
            throw null;
        }
        if (ordinal != 3) {
            throw null;
        }
        throw null;
    }
}
