package com.google.android.gms.internal.mlkit_vision_digital_ink;

import android.os.SystemClock;
import java.util.concurrent.TimeUnit;

/* loaded from: classes5.dex */
final class zzaez extends zzahg {
    @Override // com.google.android.gms.internal.mlkit_vision_digital_ink.zzahg
    public final long zza() {
        return TimeUnit.MILLISECONDS.toNanos(SystemClock.elapsedRealtime());
    }
}
