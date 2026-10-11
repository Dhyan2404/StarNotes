package com.google.android.gms.measurement.internal;

import android.os.Bundle;
import androidx.annotation.VisibleForTesting;
import androidx.annotation.WorkerThread;
import com.sunia.HTREnginev2.ehp;
import com.sunia.HTREnginev2.hqp;

/* renamed from: com.google.android.gms.measurement.internal.o */
/* loaded from: classes5.dex */
public final class C5127o {

    /* renamed from: a */
    @VisibleForTesting
    public long f29700a;

    /* renamed from: b */
    @VisibleForTesting
    public long f29701b;

    /* renamed from: c */
    public final ehp f29702c;

    /* renamed from: d */
    public final /* synthetic */ zznb f29703d;

    public C5127o(zznb zznbVar) {
        this.f29703d = zznbVar;
        this.f29702c = new hqp(this, zznbVar.zzu);
        long elapsedRealtime = zznbVar.zzb().elapsedRealtime();
        this.f29700a = elapsedRealtime;
        this.f29701b = elapsedRealtime;
    }

    /* renamed from: c */
    public static /* synthetic */ void m22273c(C5127o c5127o) {
        c5127o.f29703d.zzt();
        c5127o.m22276d(false, false, c5127o.f29703d.zzb().elapsedRealtime());
        c5127o.f29703d.zzc().zza(c5127o.f29703d.zzb().elapsedRealtime());
    }

    @VisibleForTesting
    @WorkerThread
    /* renamed from: a */
    public final long m22274a(long j) {
        long j2 = j - this.f29701b;
        this.f29701b = j;
        return j2;
    }

    /* renamed from: b */
    public final void m22275b() {
        this.f29702c.m53966a();
        if (this.f29703d.zze().zza(zzbh.zzdb)) {
            this.f29700a = this.f29703d.zzb().elapsedRealtime();
        } else {
            this.f29700a = 0L;
        }
        this.f29701b = this.f29700a;
    }

    @WorkerThread
    /* renamed from: d */
    public final boolean m22276d(boolean z, boolean z2, long j) {
        this.f29703d.zzt();
        this.f29703d.zzu();
        if (this.f29703d.zzu.zzac()) {
            this.f29703d.zzk().f72335q.zza(this.f29703d.zzb().currentTimeMillis());
        }
        long j2 = j - this.f29700a;
        if (!z && j2 < 1000) {
            this.f29703d.zzj().zzp().zza("Screen exposed for less than 1000 ms. Event not sent. time", Long.valueOf(j2));
            return false;
        }
        if (!z2) {
            j2 = m22274a(j);
        }
        this.f29703d.zzj().zzp().zza("Recording user engagement, ms", Long.valueOf(j2));
        Bundle bundle = new Bundle();
        bundle.putLong("_et", j2);
        zzos.zza(this.f29703d.zzn().zza(!this.f29703d.zze().zzw()), bundle, true);
        if (!z2) {
            this.f29703d.zzm().m22544I("auto", "_e", bundle);
        }
        this.f29700a = j;
        this.f29702c.m53966a();
        this.f29702c.m53967b(zzbh.zzbc.zza(null).longValue());
        return true;
    }

    @WorkerThread
    /* renamed from: e */
    public final void m22277e(long j) {
        this.f29702c.m53966a();
    }

    @WorkerThread
    /* renamed from: f */
    public final void m22278f(long j) {
        this.f29703d.zzt();
        this.f29702c.m53966a();
        this.f29700a = j;
        this.f29701b = j;
    }
}
