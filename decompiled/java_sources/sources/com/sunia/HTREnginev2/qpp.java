package com.sunia.HTREnginev2;

import com.google.android.gms.measurement.internal.zzgb;
import com.google.android.gms.measurement.internal.zzmq;

/* loaded from: classes5.dex */
public final class qpp implements Runnable {

    /* renamed from: e */
    public final /* synthetic */ zzgb f82307e;

    /* renamed from: f */
    public final /* synthetic */ zzmq f82308f;

    public qpp(zzmq zzmqVar, zzgb zzgbVar) {
        this.f82307e = zzgbVar;
        this.f82308f = zzmqVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        synchronized (this.f82308f) {
            this.f82308f.f29964e = false;
            if (!this.f82308f.f29966g.zzal()) {
                this.f82308f.f29966g.zzj().zzp().zza("Connected to service");
                this.f82308f.f29966g.zza(this.f82307e);
            }
        }
    }
}
