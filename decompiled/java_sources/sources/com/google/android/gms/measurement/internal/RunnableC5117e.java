package com.google.android.gms.measurement.internal;

/* renamed from: com.google.android.gms.measurement.internal.e */
/* loaded from: classes5.dex */
public final class RunnableC5117e implements Runnable {

    /* renamed from: e */
    public final /* synthetic */ boolean f29670e;

    /* renamed from: f */
    public final /* synthetic */ zzjq f29671f;

    public RunnableC5117e(zzjq zzjqVar, boolean z) {
        this.f29670e = z;
        this.f29671f = zzjqVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        boolean zzac = this.f29671f.zzu.zzac();
        boolean zzab = this.f29671f.zzu.zzab();
        this.f29671f.zzu.m22502f(this.f29670e);
        if (zzab == this.f29670e) {
            this.f29671f.zzu.zzj().zzp().zza("Default data collection state already set to", Boolean.valueOf(this.f29670e));
        }
        if (this.f29671f.zzu.zzac() == zzac || this.f29671f.zzu.zzac() != this.f29671f.zzu.zzab()) {
            this.f29671f.zzu.zzj().zzv().zza("Default data collection is different than actual status", Boolean.valueOf(this.f29670e), Boolean.valueOf(zzac));
        }
        this.f29671f.m22559z();
    }
}
