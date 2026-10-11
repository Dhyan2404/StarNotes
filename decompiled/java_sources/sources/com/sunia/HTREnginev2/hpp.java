package com.sunia.HTREnginev2;

import android.os.Bundle;
import android.os.RemoteException;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.measurement.internal.zzgb;
import com.google.android.gms.measurement.internal.zzls;

/* loaded from: classes5.dex */
public final class hpp implements Runnable {

    /* renamed from: e */
    public final /* synthetic */ com.google.android.gms.measurement.internal.zzo f72456e;

    /* renamed from: f */
    public final /* synthetic */ Bundle f72457f;

    /* renamed from: g */
    public final /* synthetic */ zzls f72458g;

    public hpp(zzls zzlsVar, com.google.android.gms.measurement.internal.zzo zzoVar, Bundle bundle) {
        this.f72456e = zzoVar;
        this.f72457f = bundle;
        this.f72458g = zzlsVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        zzgb zzgbVar;
        zzgbVar = this.f72458g.f29957c;
        if (zzgbVar == null) {
            this.f72458g.zzj().zzg().zza("Failed to send default event parameters to service");
            return;
        }
        try {
            Preconditions.checkNotNull(this.f72456e);
            zzgbVar.zza(this.f72457f, this.f72456e);
        } catch (RemoteException e) {
            this.f72458g.zzj().zzg().zza("Failed to send default event parameters to service", e);
        }
    }
}
