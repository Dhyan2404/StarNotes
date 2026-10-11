package com.sunia.HTREnginev2;

import com.google.android.gms.measurement.internal.zzgb;
import com.google.android.gms.measurement.internal.zzmq;

/* loaded from: classes5.dex */
public final class rpp implements Runnable {

    /* renamed from: e */
    public final /* synthetic */ zzgb f83352e;

    /* renamed from: f */
    public final /* synthetic */ zzmq f83353f;

    public rpp(zzmq zzmqVar, zzgb zzgbVar) {
        this.f83352e = zzgbVar;
        this.f83353f = zzmqVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        synchronized (this.f83353f) {
            this.f83353f.f29964e = false;
            if (!this.f83353f.f29966g.zzal()) {
                this.f83353f.f29966g.zzj().zzc().zza("Connected to remote service");
                this.f83353f.f29966g.zza(this.f83352e);
            }
        }
    }
}
