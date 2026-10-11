package com.google.android.gms.internal.mlkit_vision_digital_ink;

/* loaded from: classes5.dex */
public final class zzzi extends RuntimeException {
    public zzzi() {
    }

    public zzzi(String str) {
        super("The caller is trying to acquire a lease on too much data.");
    }

    public zzzi(Throwable th) {
        super(th);
    }
}
