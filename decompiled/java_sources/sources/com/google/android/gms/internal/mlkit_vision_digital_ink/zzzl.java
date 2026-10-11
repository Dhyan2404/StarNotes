package com.google.android.gms.internal.mlkit_vision_digital_ink;

import java.io.Closeable;
import java.io.IOException;
import javax.annotation.Nullable;

/* loaded from: classes5.dex */
public final class zzzl implements Closeable {

    @Nullable
    private final Closeable zza;

    private zzzl(Closeable closeable) {
        this.zza = closeable;
    }

    public static zzzl zza(Closeable closeable) {
        return new zzzl(closeable);
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public final void close() throws IOException {
        Closeable closeable = this.zza;
        if (closeable != null) {
            closeable.close();
        }
    }

    @Nullable
    public final Closeable zzb() {
        return this.zza;
    }
}
