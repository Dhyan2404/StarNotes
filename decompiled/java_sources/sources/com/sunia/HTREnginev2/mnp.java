package com.sunia.HTREnginev2;

import android.util.SparseArray;
import com.google.android.gms.measurement.internal.zzbh;
import com.google.android.gms.measurement.internal.zzgo;
import com.google.android.gms.measurement.internal.zzgq;
import com.google.android.gms.measurement.internal.zzjq;
import com.google.android.gms.measurement.internal.zzno;
import com.google.common.util.concurrent.FutureCallback;

/* loaded from: classes5.dex */
public final class mnp implements FutureCallback<Object> {

    /* renamed from: a */
    public final /* synthetic */ zzno f77815a;

    /* renamed from: b */
    public final /* synthetic */ zzjq f77816b;

    public mnp(zzjq zzjqVar, zzno zznoVar) {
        this.f77815a = zznoVar;
        this.f77816b = zzjqVar;
    }

    /* renamed from: a */
    public final void m55667a() {
        SparseArray<Long> m54578m = this.f77816b.zzk().m54578m();
        zzno zznoVar = this.f77815a;
        m54578m.put(zznoVar.zzc, Long.valueOf(zznoVar.zzb));
        this.f77816b.zzk().m54568c(m54578m);
    }

    @Override // com.google.common.util.concurrent.FutureCallback
    public final void onFailure(Throwable th) {
        int i;
        int i2;
        int i3;
        int i4;
        this.f77816b.zzt();
        this.f77816b.f29913h = false;
        if (!this.f77816b.zze().zza(zzbh.zzcn)) {
            this.f77816b.m22557x();
            this.f77816b.zzj().zzg().zza("registerTriggerAsync failed with throwable", th);
            return;
        }
        int m22531c = (this.f77816b.zze().zza(zzbh.zzcl) ? zzjq.m22531c(this.f77816b, th) : 2) - 1;
        if (m22531c == 0) {
            this.f77816b.zzj().zzu().zza("registerTriggerAsync failed with retriable error. Will try later. App ID, throwable", zzgo.zza(this.f77816b.zzg().m22432f()), zzgo.zza(th.toString()));
            this.f77816b.f29914i = 1;
            this.f77816b.m22555v().add(this.f77815a);
            return;
        }
        if (m22531c != 1) {
            if (m22531c != 2) {
                return;
            }
            this.f77816b.zzj().zzg().zza("registerTriggerAsync failed. Dropping URI. App ID, Throwable", zzgo.zza(this.f77816b.zzg().m22432f()), th);
            m55667a();
            this.f77816b.f29914i = 1;
            this.f77816b.m22557x();
            return;
        }
        this.f77816b.m22555v().add(this.f77815a);
        i = this.f77816b.f29914i;
        if (i > 32) {
            this.f77816b.f29914i = 1;
            this.f77816b.zzj().zzu().zza("registerTriggerAsync failed. May try later. App ID, throwable", zzgo.zza(this.f77816b.zzg().m22432f()), zzgo.zza(th.toString()));
            return;
        }
        zzgq zzu = this.f77816b.zzj().zzu();
        Object zza = zzgo.zza(this.f77816b.zzg().m22432f());
        i2 = this.f77816b.f29914i;
        zzu.zza("registerTriggerAsync failed. App ID, delay in seconds, throwable", zza, zzgo.zza(String.valueOf(i2)), zzgo.zza(th.toString()));
        zzjq zzjqVar = this.f77816b;
        i3 = zzjqVar.f29914i;
        zzjq.m22527C(zzjqVar, i3);
        zzjq zzjqVar2 = this.f77816b;
        i4 = zzjqVar2.f29914i;
        zzjqVar2.f29914i = i4 << 1;
    }

    @Override // com.google.common.util.concurrent.FutureCallback
    public final void onSuccess(Object obj) {
        this.f77816b.zzt();
        if (!this.f77816b.zze().zza(zzbh.zzcn)) {
            this.f77816b.f29913h = false;
            this.f77816b.m22557x();
            this.f77816b.zzj().zzc().zza("registerTriggerAsync ran. uri", this.f77815a.zza);
        } else {
            m55667a();
            this.f77816b.f29913h = false;
            this.f77816b.f29914i = 1;
            this.f77816b.zzj().zzc().zza("Successfully registered trigger URI", this.f77815a.zza);
            this.f77816b.m22557x();
        }
    }
}
