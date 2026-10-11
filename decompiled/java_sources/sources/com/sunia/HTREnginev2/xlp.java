package com.sunia.HTREnginev2;

import com.google.android.gms.measurement.internal.zzhy;
import com.google.android.gms.measurement.internal.zzjo;

/* loaded from: classes5.dex */
public final class xlp implements Runnable {

    /* renamed from: e */
    public final /* synthetic */ zzjo f89839e;

    /* renamed from: f */
    public final /* synthetic */ zzhy f89840f;

    public xlp(zzhy zzhyVar, zzjo zzjoVar) {
        this.f89839e = zzjoVar;
        this.f89840f = zzhyVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        zzhy.m22497a(this.f89840f, this.f89839e);
        this.f89840f.zza(this.f89839e.f29903g);
    }
}
