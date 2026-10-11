package com.sunia.HTREnginev2;

import android.os.Handler;
import androidx.annotation.WorkerThread;
import com.google.android.gms.measurement.internal.zzbh;
import com.google.android.gms.measurement.internal.zznb;

/* loaded from: classes5.dex */
public final class gqp {

    /* renamed from: a */
    public fqp f71378a;

    /* renamed from: b */
    public final /* synthetic */ zznb f71379b;

    public gqp(zznb zznbVar) {
        this.f71379b = zznbVar;
    }

    @WorkerThread
    /* renamed from: a */
    public final void m54336a() {
        Handler handler;
        this.f71379b.zzt();
        if (this.f71378a != null) {
            handler = this.f71379b.f29976b;
            handler.removeCallbacks(this.f71378a);
        }
        this.f71379b.zzk().f72338t.zza(false);
        this.f71379b.zza(false);
        if (this.f71379b.zze().zza(zzbh.zzcl) && this.f71379b.zzm().m22558y()) {
            this.f71379b.zzj().zzp().zza("Retrying trigger URI registration in foreground");
            this.f71379b.zzm().m22557x();
        }
    }

    @WorkerThread
    /* renamed from: b */
    public final void m54337b(long j) {
        Handler handler;
        this.f71378a = new fqp(this, this.f71379b.zzb().currentTimeMillis(), j);
        handler = this.f71379b.f29976b;
        handler.postDelayed(this.f71378a, 2000L);
    }
}
