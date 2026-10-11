package com.google.android.gms.measurement;

import android.app.Service;
import android.app.job.JobParameters;
import android.content.Intent;
import android.os.IBinder;
import androidx.annotation.MainThread;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.legacy.content.WakefulBroadcastReceiver;
import com.google.android.gms.measurement.internal.zzmy;
import com.google.android.gms.measurement.internal.zznc;

/* loaded from: classes5.dex */
public final class AppMeasurementService extends Service implements zznc {

    /* renamed from: e */
    public zzmy<AppMeasurementService> f29648e;

    /* renamed from: a */
    public final zzmy<AppMeasurementService> m22265a() {
        if (this.f29648e == null) {
            this.f29648e = new zzmy<>(this);
        }
        return this.f29648e;
    }

    @Override // android.app.Service
    @Nullable
    @MainThread
    public final IBinder onBind(@NonNull Intent intent) {
        return m22265a().zza(intent);
    }

    @Override // android.app.Service
    @MainThread
    public final void onCreate() {
        super.onCreate();
        m22265a().zza();
    }

    @Override // android.app.Service
    @MainThread
    public final void onDestroy() {
        m22265a().zzb();
        super.onDestroy();
    }

    @Override // android.app.Service
    @MainThread
    public final void onRebind(@NonNull Intent intent) {
        m22265a().zzb(intent);
    }

    @Override // android.app.Service
    @MainThread
    public final int onStartCommand(@NonNull Intent intent, int i, int i2) {
        return m22265a().zza(intent, i, i2);
    }

    @Override // android.app.Service
    @MainThread
    public final boolean onUnbind(@NonNull Intent intent) {
        return m22265a().zzc(intent);
    }

    @Override // com.google.android.gms.measurement.internal.zznc
    public final void zza(@NonNull Intent intent) {
        WakefulBroadcastReceiver.completeWakefulIntent(intent);
    }

    @Override // com.google.android.gms.measurement.internal.zznc
    public final void zza(@NonNull JobParameters jobParameters, boolean z) {
        throw new UnsupportedOperationException();
    }

    @Override // com.google.android.gms.measurement.internal.zznc
    public final boolean zza(int i) {
        return stopSelfResult(i);
    }
}
