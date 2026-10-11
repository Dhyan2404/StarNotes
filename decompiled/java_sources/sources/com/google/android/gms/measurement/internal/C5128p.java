package com.google.android.gms.measurement.internal;

import android.app.ActivityManager;
import android.os.Bundle;
import android.text.TextUtils;
import androidx.annotation.VisibleForTesting;
import androidx.annotation.WorkerThread;

/* renamed from: com.google.android.gms.measurement.internal.p */
/* loaded from: classes5.dex */
public final class C5128p {

    /* renamed from: a */
    public final /* synthetic */ zznb f29704a;

    public C5128p(zznb zznbVar) {
        this.f29704a = zznbVar;
    }

    @WorkerThread
    /* renamed from: a */
    public final void m22279a() {
        this.f29704a.zzt();
        if (this.f29704a.zzk().m54569d(this.f29704a.zzb().currentTimeMillis())) {
            this.f29704a.zzk().f72331m.zza(true);
            ActivityManager.RunningAppProcessInfo runningAppProcessInfo = new ActivityManager.RunningAppProcessInfo();
            ActivityManager.getMyMemoryState(runningAppProcessInfo);
            if (runningAppProcessInfo.importance == 100) {
                this.f29704a.zzj().zzp().zza("Detected application was in foreground");
                m22281c(this.f29704a.zzb().currentTimeMillis(), false);
            }
        }
    }

    @WorkerThread
    /* renamed from: b */
    public final void m22280b(long j, boolean z) {
        this.f29704a.zzt();
        this.f29704a.m22601e();
        if (this.f29704a.zzk().m54569d(j)) {
            this.f29704a.zzk().f72331m.zza(true);
            this.f29704a.zzg().m22435i();
        }
        this.f29704a.zzk().f72335q.zza(j);
        if (this.f29704a.zzk().f72331m.zza()) {
            m22281c(j, z);
        }
    }

    @VisibleForTesting
    @WorkerThread
    /* renamed from: c */
    public final void m22281c(long j, boolean z) {
        this.f29704a.zzt();
        if (this.f29704a.zzu.zzac()) {
            this.f29704a.zzk().f72335q.zza(j);
            this.f29704a.zzj().zzp().zza("Session started, time", Long.valueOf(this.f29704a.zzb().elapsedRealtime()));
            Long valueOf = Long.valueOf(j / 1000);
            this.f29704a.zzm().m22553t("auto", "_sid", valueOf, j);
            this.f29704a.zzk().f72336r.zza(valueOf.longValue());
            this.f29704a.zzk().f72331m.zza(false);
            Bundle bundle = new Bundle();
            bundle.putLong("_sid", valueOf.longValue());
            this.f29704a.zzm().m22551r("auto", "_s", j, bundle);
            String zza = this.f29704a.zzk().f72341w.zza();
            if (TextUtils.isEmpty(zza)) {
                return;
            }
            Bundle bundle2 = new Bundle();
            bundle2.putString("_ffr", zza);
            this.f29704a.zzm().m22551r("auto", "_ssr", j, bundle2);
        }
    }
}
