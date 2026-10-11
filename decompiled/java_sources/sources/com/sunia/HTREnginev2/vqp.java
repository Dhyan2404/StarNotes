package com.sunia.HTREnginev2;

import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.measurement.internal.zzje;
import com.google.android.gms.measurement.internal.zznv;
import java.util.concurrent.Callable;

/* loaded from: classes5.dex */
public final class vqp implements Callable<String> {

    /* renamed from: e */
    public final /* synthetic */ com.google.android.gms.measurement.internal.zzo f87833e;

    /* renamed from: f */
    public final /* synthetic */ zznv f87834f;

    public vqp(zznv zznvVar, com.google.android.gms.measurement.internal.zzo zzoVar) {
        this.f87833e = zzoVar;
        this.f87834f = zznvVar;
    }

    @Override // java.util.concurrent.Callable
    public final /* synthetic */ String call() throws Exception {
        if (!this.f87834f.m22633N((String) Preconditions.checkNotNull(this.f87833e.zza)).zzh() || !zzje.zzb(this.f87833e.zzt).zzh()) {
            this.f87834f.zzj().zzp().zza("Analytics storage consent denied. Returning null app instance id");
            return null;
        }
        okp m22654f = this.f87834f.m22654f(this.f87833e);
        if (m22654f != null) {
            return m22654f.m56053m();
        }
        this.f87834f.zzj().zzu().zza("App info was null when attempting to get app instance id");
        return null;
    }
}
