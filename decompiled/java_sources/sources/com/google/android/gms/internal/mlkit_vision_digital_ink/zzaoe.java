package com.google.android.gms.internal.mlkit_vision_digital_ink;

import java.io.Closeable;

/* loaded from: classes5.dex */
public final class zzaoe implements Closeable {
    private static final ThreadLocal zza = new zzaod();
    private int zzb = 0;

    public static int zza() {
        return ((zzaoe) zza.get()).zzb;
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public final void close() {
        int i = this.zzb;
        if (i <= 0) {
            throw new AssertionError("Mismatched calls to RecursionDepth (possible error in core library)");
        }
        this.zzb = i - 1;
    }
}
