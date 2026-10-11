package com.sunia.HTREnginev2;

import android.os.RemoteException;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.measurement.internal.zzgb;
import com.google.android.gms.measurement.internal.zzls;
import java.util.concurrent.atomic.AtomicReference;

/* loaded from: classes5.dex */
public final class xop implements Runnable {

    /* renamed from: e */
    public final /* synthetic */ AtomicReference f89914e;

    /* renamed from: f */
    public final /* synthetic */ com.google.android.gms.measurement.internal.zzo f89915f;

    /* renamed from: g */
    public final /* synthetic */ zzls f89916g;

    public xop(zzls zzlsVar, AtomicReference atomicReference, com.google.android.gms.measurement.internal.zzo zzoVar) {
        this.f89914e = atomicReference;
        this.f89915f = zzoVar;
        this.f89916g = zzlsVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        zzgb zzgbVar;
        synchronized (this.f89914e) {
            try {
                try {
                } catch (RemoteException e) {
                    this.f89916g.zzj().zzg().zza("Failed to get app instance id", e);
                }
                if (!this.f89916g.zzk().m54580o().zzh()) {
                    this.f89916g.zzj().zzv().zza("Analytics storage consent denied; will not get app instance id");
                    this.f89916g.zzm().m22543H(null);
                    this.f89916g.zzk().f72326h.zza(null);
                    this.f89914e.set(null);
                    return;
                }
                zzgbVar = this.f89916g.f29957c;
                if (zzgbVar == null) {
                    this.f89916g.zzj().zzg().zza("Failed to get app instance id");
                    return;
                }
                Preconditions.checkNotNull(this.f89915f);
                this.f89914e.set(zzgbVar.zzb(this.f89915f));
                String str = (String) this.f89914e.get();
                if (str != null) {
                    this.f89916g.zzm().m22543H(str);
                    this.f89916g.zzk().f72326h.zza(str);
                }
                this.f89916g.zzar();
                this.f89914e.notify();
            } finally {
                this.f89914e.notify();
            }
        }
    }
}
