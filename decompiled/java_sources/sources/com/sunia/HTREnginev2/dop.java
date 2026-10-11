package com.sunia.HTREnginev2;

import com.google.android.gms.measurement.internal.zzax;
import com.google.android.gms.measurement.internal.zzjq;

/* loaded from: classes5.dex */
public final class dop implements Runnable {

    /* renamed from: e */
    public final /* synthetic */ zzax f68083e;

    /* renamed from: f */
    public final /* synthetic */ zzjq f68084f;

    public dop(zzjq zzjqVar, zzax zzaxVar) {
        this.f68083e = zzaxVar;
        this.f68084f = zzjqVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        if (!this.f68084f.zzk().m54570e(this.f68083e)) {
            this.f68084f.zzj().zzo().zza("Lower precedence consent source ignored, proposed source", Integer.valueOf(this.f68083e.zza()));
            return;
        }
        this.f68084f.zzj().zzp().zza("Setting DMA consent(FE)", this.f68083e);
        if (this.f68084f.zzo().m22585k()) {
            this.f68084f.zzo().zzaj();
        } else {
            this.f68084f.zzo().zza(false);
        }
    }
}
