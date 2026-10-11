package com.google.android.gms.internal.mlkit_vision_digital_ink;

/* loaded from: classes5.dex */
public final class zzbxb extends RuntimeException {
    public zzbxb(zzbvu zzbvuVar) {
        super("Message was missing required fields.  (Lite runtime could not determine which fields were missing).");
    }

    public final zzbut zza() {
        return new zzbut(getMessage());
    }
}
