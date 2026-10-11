package com.google.android.gms.internal.mlkit_vision_digital_ink;

import android.os.SystemClock;

/* loaded from: classes5.dex */
public final class zzafa {
    private static final zzahg zza;

    static {
        zzahg zzaezVar;
        try {
            SystemClock.elapsedRealtimeNanos();
            zzaezVar = new zzaey();
        } catch (Throwable unused) {
            SystemClock.elapsedRealtime();
            zzaezVar = new zzaez();
        }
        zza = zzaezVar;
    }

    public static zzahg zza() {
        return zza;
    }
}
