package com.google.android.gms.internal.mlkit_vision_digital_ink;

import java.util.concurrent.Delayed;
import java.util.concurrent.ScheduledFuture;
import java.util.concurrent.TimeUnit;

/* loaded from: classes5.dex */
final class zzasn extends zzarp implements ScheduledFuture, zzasi {
    private final ScheduledFuture zza;

    public zzasn(zzasi zzasiVar, ScheduledFuture scheduledFuture) {
        super(zzasiVar);
        this.zza = scheduledFuture;
    }

    @Override // com.google.android.gms.internal.mlkit_vision_digital_ink.zzaro, java.util.concurrent.Future
    public final boolean cancel(boolean z) {
        boolean cancel = super.cancel(z);
        if (cancel) {
            this.zza.cancel(z);
        }
        return cancel;
    }

    @Override // java.lang.Comparable
    public final /* bridge */ /* synthetic */ int compareTo(Delayed delayed) {
        return this.zza.compareTo(delayed);
    }

    @Override // java.util.concurrent.Delayed
    public final long getDelay(TimeUnit timeUnit) {
        return this.zza.getDelay(timeUnit);
    }
}
