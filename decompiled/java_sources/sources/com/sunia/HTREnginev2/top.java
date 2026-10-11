package com.sunia.HTREnginev2;

import android.os.RemoteException;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.measurement.internal.zzgb;
import com.google.android.gms.measurement.internal.zzls;
import java.util.concurrent.atomic.AtomicReference;

/* loaded from: classes5.dex */
public final class top implements Runnable {

    /* renamed from: e */
    public final /* synthetic */ AtomicReference f85572e;

    /* renamed from: f */
    public final /* synthetic */ com.google.android.gms.measurement.internal.zzo f85573f;

    /* renamed from: g */
    public final /* synthetic */ boolean f85574g;

    /* renamed from: h */
    public final /* synthetic */ zzls f85575h;

    public top(zzls zzlsVar, AtomicReference atomicReference, com.google.android.gms.measurement.internal.zzo zzoVar, boolean z) {
        this.f85572e = atomicReference;
        this.f85573f = zzoVar;
        this.f85574g = z;
        this.f85575h = zzlsVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        zzgb zzgbVar;
        synchronized (this.f85572e) {
            try {
                try {
                    zzgbVar = this.f85575h.f29957c;
                } catch (RemoteException e) {
                    this.f85575h.zzj().zzg().zza("Failed to get all user properties; remote exception", e);
                }
                if (zzgbVar == null) {
                    this.f85575h.zzj().zzg().zza("Failed to get all user properties; not connected to service");
                    return;
                }
                Preconditions.checkNotNull(this.f85573f);
                this.f85572e.set(zzgbVar.zza(this.f85573f, this.f85574g));
                this.f85575h.zzar();
                this.f85572e.notify();
            } finally {
                this.f85572e.notify();
            }
        }
    }
}
