package com.google.android.gms.measurement;

import android.annotation.TargetApi;
import android.app.job.JobParameters;
import android.app.job.JobService;
import android.content.Intent;
import androidx.annotation.MainThread;
import androidx.annotation.NonNull;
import com.google.android.gms.measurement.internal.zzmy;
import com.google.android.gms.measurement.internal.zznc;

@TargetApi(24)
/* loaded from: classes5.dex */
public final class AppMeasurementJobService extends JobService implements zznc {

    /* renamed from: e */
    public zzmy<AppMeasurementJobService> f29646e;

    /* renamed from: a */
    public final zzmy<AppMeasurementJobService> m22264a() {
        if (this.f29646e == null) {
            this.f29646e = new zzmy<>(this);
        }
        return this.f29646e;
    }

    @Override // android.app.Service
    @MainThread
    public final void onCreate() {
        super.onCreate();
        m22264a().zza();
    }

    @Override // android.app.Service
    @MainThread
    public final void onDestroy() {
        m22264a().zzb();
        super.onDestroy();
    }

    @Override // android.app.Service
    @MainThread
    public final void onRebind(@NonNull Intent intent) {
        m22264a().zzb(intent);
    }

    @Override // android.app.job.JobService
    public final boolean onStartJob(@NonNull JobParameters jobParameters) {
        return m22264a().zza(jobParameters);
    }

    @Override // android.app.job.JobService
    public final boolean onStopJob(@NonNull JobParameters jobParameters) {
        return false;
    }

    @Override // android.app.Service
    @MainThread
    public final boolean onUnbind(@NonNull Intent intent) {
        return m22264a().zzc(intent);
    }

    @Override // com.google.android.gms.measurement.internal.zznc
    public final void zza(@NonNull Intent intent) {
    }

    @Override // com.google.android.gms.measurement.internal.zznc
    @TargetApi(24)
    public final void zza(@NonNull JobParameters jobParameters, boolean z) {
        jobFinished(jobParameters, false);
    }

    @Override // com.google.android.gms.measurement.internal.zznc
    public final boolean zza(int i) {
        throw new UnsupportedOperationException();
    }
}
