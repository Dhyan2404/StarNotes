package com.google.android.gms.internal.mlkit_vision_digital_ink;

import android.os.StrictMode;
import java.security.SecureRandom;
import java.util.UUID;
import java.util.concurrent.atomic.AtomicLong;

/* loaded from: classes5.dex */
final class zzadq {
    private static final zzadq zza;
    private final UUID zzb;
    private final AtomicLong zzc;

    static {
        StrictMode.ThreadPolicy allowThreadDiskReads = StrictMode.allowThreadDiskReads();
        try {
            zza = new zzadq(UUID.randomUUID(), new SecureRandom().nextLong());
        } finally {
            StrictMode.setThreadPolicy(allowThreadDiskReads);
        }
    }

    public zzadq(UUID uuid, long j) {
        this.zzb = uuid;
        this.zzc = new AtomicLong((j ^ 25214903917L) & 281474976710655L);
    }

    public static zzadq zzb() {
        return zza;
    }

    public final long zza() {
        long j;
        do {
            j = this.zzc.get();
        } while (!this.zzc.compareAndSet(j, ((25214903917L * (((j * 25214903917L) + 11) & 281474976710655L)) + 11) & 281474976710655L));
        return (((int) (r4 >>> 16)) << 32) + ((int) (r2 >>> 16));
    }

    public final UUID zzc() {
        return new UUID((zza() & (-61441)) ^ this.zzb.getMostSignificantBits(), (zza() >>> 2) ^ this.zzb.getLeastSignificantBits());
    }
}
