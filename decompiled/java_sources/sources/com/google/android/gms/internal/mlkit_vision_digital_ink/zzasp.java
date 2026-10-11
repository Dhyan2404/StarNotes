package com.google.android.gms.internal.mlkit_vision_digital_ink;

import java.util.concurrent.Callable;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.ScheduledFuture;
import java.util.concurrent.TimeUnit;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes5.dex */
public final class zzasp extends zzasm implements ScheduledExecutorService, zzask {
    final ScheduledExecutorService zza;

    public zzasp(ScheduledExecutorService scheduledExecutorService) {
        super(scheduledExecutorService);
        scheduledExecutorService.getClass();
        this.zza = scheduledExecutorService;
    }

    @Override // java.util.concurrent.ScheduledExecutorService
    public final /* bridge */ /* synthetic */ ScheduledFuture schedule(Runnable runnable, long j, TimeUnit timeUnit) {
        zzasz zzd = zzasz.zzd(runnable, null);
        return new zzasn(zzd, this.zza.schedule(zzd, j, timeUnit));
    }

    @Override // java.util.concurrent.ScheduledExecutorService
    public final /* bridge */ /* synthetic */ ScheduledFuture scheduleAtFixedRate(Runnable runnable, long j, long j2, TimeUnit timeUnit) {
        zzaso zzasoVar = new zzaso(runnable);
        return new zzasn(zzasoVar, this.zza.scheduleAtFixedRate(zzasoVar, j, j2, timeUnit));
    }

    @Override // java.util.concurrent.ScheduledExecutorService
    public final /* bridge */ /* synthetic */ ScheduledFuture scheduleWithFixedDelay(Runnable runnable, long j, long j2, TimeUnit timeUnit) {
        zzaso zzasoVar = new zzaso(runnable);
        return new zzasn(zzasoVar, this.zza.scheduleWithFixedDelay(zzasoVar, j, j2, timeUnit));
    }

    @Override // java.util.concurrent.ScheduledExecutorService
    public final /* bridge */ /* synthetic */ ScheduledFuture schedule(Callable callable, long j, TimeUnit timeUnit) {
        zzasz zzaszVar = new zzasz(callable);
        return new zzasn(zzaszVar, this.zza.schedule(zzaszVar, j, timeUnit));
    }
}
