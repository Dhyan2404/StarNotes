package com.google.android.gms.internal.mlkit_vision_digital_ink;

import java.util.concurrent.Delayed;
import java.util.concurrent.TimeUnit;
import javax.annotation.Nonnull;

/* loaded from: classes5.dex */
abstract class zzxp implements Runnable, Delayed {
    public /* synthetic */ zzxp(zzxo zzxoVar) {
    }

    @Override // java.lang.Comparable
    public final /* bridge */ /* synthetic */ int compareTo(@Nonnull Delayed delayed) {
        return 0;
    }

    @Override // java.util.concurrent.Delayed
    public final long getDelay(@Nonnull TimeUnit timeUnit) {
        return 0L;
    }
}
