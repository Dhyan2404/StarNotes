package com.google.android.gms.internal.mlkit_vision_digital_ink;

import android.annotation.TargetApi;
import android.os.SystemClock;

/* loaded from: classes5.dex */
final class zzh {
    private static final boolean zza;

    static {
        boolean z;
        try {
            SystemClock.elapsedRealtimeNanos();
            z = true;
        } catch (Throwable unused) {
            z = false;
        }
        zza = z;
    }

    @TargetApi(17)
    public static long zza() {
        return zza ? SystemClock.elapsedRealtimeNanos() : SystemClock.elapsedRealtime() * 1000000;
    }
}
