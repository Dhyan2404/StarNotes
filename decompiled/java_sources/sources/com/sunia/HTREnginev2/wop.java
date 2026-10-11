package com.sunia.HTREnginev2;

import android.os.Bundle;
import android.os.RemoteException;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.measurement.internal.zzgb;
import com.google.android.gms.measurement.internal.zzls;
import java.util.concurrent.atomic.AtomicReference;

/* loaded from: classes5.dex */
public final class wop implements Runnable {

    /* renamed from: e */
    public final /* synthetic */ AtomicReference f88845e;

    /* renamed from: f */
    public final /* synthetic */ com.google.android.gms.measurement.internal.zzo f88846f;

    /* renamed from: g */
    public final /* synthetic */ Bundle f88847g;

    /* renamed from: h */
    public final /* synthetic */ zzls f88848h;

    public wop(zzls zzlsVar, AtomicReference atomicReference, com.google.android.gms.measurement.internal.zzo zzoVar, Bundle bundle) {
        this.f88845e = atomicReference;
        this.f88846f = zzoVar;
        this.f88847g = bundle;
        this.f88848h = zzlsVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        zzgb zzgbVar;
        synchronized (this.f88845e) {
            try {
                try {
                    zzgbVar = this.f88848h.f29957c;
                } catch (RemoteException e) {
                    this.f88848h.zzj().zzg().zza("Failed to get trigger URIs; remote exception", e);
                }
                if (zzgbVar == null) {
                    this.f88848h.zzj().zzg().zza("Failed to get trigger URIs; not connected to service");
                    return;
                }
                Preconditions.checkNotNull(this.f88846f);
                this.f88845e.set(zzgbVar.zza(this.f88846f, this.f88847g));
                this.f88848h.zzar();
                this.f88845e.notify();
            } finally {
                this.f88845e.notify();
            }
        }
    }
}
