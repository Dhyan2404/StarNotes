package com.google.android.gms.internal.mlkit_vision_digital_ink;

import android.os.Handler;
import android.os.Looper;

/* loaded from: classes5.dex */
public final class zzxz {
    private static Thread zza;
    private static volatile Handler zzb;

    public static Handler zza() {
        if (zzb == null) {
            zzb = new Handler(Looper.getMainLooper());
        }
        return zzb;
    }

    public static boolean zzb(Thread thread) {
        if (zza == null) {
            zza = Looper.getMainLooper().getThread();
        }
        return thread == zza;
    }
}
