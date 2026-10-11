package com.google.android.gms.measurement.internal;

import android.annotation.TargetApi;
import android.app.job.JobParameters;
import android.content.Context;
import android.content.Intent;
import android.os.IBinder;
import androidx.annotation.MainThread;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.measurement.internal.zznc;
import com.sunia.HTREnginev2.wpp;

/* loaded from: classes5.dex */
public final class zzmy<T extends Context & zznc> {

    /* renamed from: a */
    public final T f29971a;

    public zzmy(T t) {
        Preconditions.checkNotNull(t);
        this.f29971a = t;
    }

    /* renamed from: a */
    public final /* synthetic */ void m22592a(int i, zzgo zzgoVar, Intent intent) {
        if (this.f29971a.zza(i)) {
            zzgoVar.zzp().zza("Local AppMeasurementService processed last upload request. StartId", Integer.valueOf(i));
            m22595d().zzp().zza("Completed wakeful intent.");
            this.f29971a.zza(intent);
        }
    }

    /* renamed from: b */
    public final /* synthetic */ void m22593b(zzgo zzgoVar, JobParameters jobParameters) {
        zzgoVar.zzp().zza("AppMeasurementJobService processed last upload request.");
        this.f29971a.zza(jobParameters, false);
    }

    /* renamed from: c */
    public final void m22594c(Runnable runnable) {
        zznv zza = zznv.zza(this.f29971a);
        zza.zzl().zzb(new wpp(this, zza, runnable));
    }

    /* renamed from: d */
    public final zzgo m22595d() {
        return zzhy.zza(this.f29971a, null, null).zzj();
    }

    @MainThread
    public final int zza(final Intent intent, int i, final int i2) {
        final zzgo zzj = zzhy.zza(this.f29971a, null, null).zzj();
        if (intent == null) {
            zzj.zzu().zza("AppMeasurementService started with null intent");
            return 2;
        }
        String action = intent.getAction();
        zzj.zzp().zza("Local AppMeasurementService called. startId, action", Integer.valueOf(i2), action);
        if ("com.google.android.gms.measurement.UPLOAD".equals(action)) {
            m22594c(new Runnable() { // from class: com.google.android.gms.measurement.internal.zzna
                @Override // java.lang.Runnable
                public final void run() {
                    zzmy.this.m22592a(i2, zzj, intent);
                }
            });
        }
        return 2;
    }

    @MainThread
    public final void zzb() {
        zzhy.zza(this.f29971a, null, null).zzj().zzp().zza("Local AppMeasurementService is shutting down");
    }

    @MainThread
    public final boolean zzc(Intent intent) {
        if (intent == null) {
            m22595d().zzg().zza("onUnbind called with null intent");
            return true;
        }
        m22595d().zzp().zza("onUnbind called for intent. action", intent.getAction());
        return true;
    }

    @MainThread
    public final void zzb(Intent intent) {
        if (intent == null) {
            m22595d().zzg().zza("onRebind called with null intent");
        } else {
            m22595d().zzp().zza("onRebind called. action", intent.getAction());
        }
    }

    @MainThread
    public final IBinder zza(Intent intent) {
        if (intent == null) {
            m22595d().zzg().zza("onBind called with null intent");
            return null;
        }
        String action = intent.getAction();
        if ("com.google.android.gms.measurement.START".equals(action)) {
            return new zzic(zznv.zza(this.f29971a));
        }
        m22595d().zzu().zza("onBind received unknown action", action);
        return null;
    }

    @MainThread
    public final void zza() {
        zzhy.zza(this.f29971a, null, null).zzj().zzp().zza("Local AppMeasurementService is starting up");
    }

    @TargetApi(24)
    @MainThread
    public final boolean zza(final JobParameters jobParameters) {
        final zzgo zzj = zzhy.zza(this.f29971a, null, null).zzj();
        String string = jobParameters.getExtras().getString("action");
        zzj.zzp().zza("Local AppMeasurementJobService called. action", string);
        if (!"com.google.android.gms.measurement.UPLOAD".equals(string)) {
            return true;
        }
        m22594c(new Runnable() { // from class: com.google.android.gms.measurement.internal.zzmx
            @Override // java.lang.Runnable
            public final void run() {
                zzmy.this.m22593b(zzj, jobParameters);
            }
        });
        return true;
    }
}
