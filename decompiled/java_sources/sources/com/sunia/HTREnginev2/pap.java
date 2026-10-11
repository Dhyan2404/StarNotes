package com.sunia.HTREnginev2;

import com.google.android.gms.common.ConnectionResult;
import com.google.android.gms.common.api.internal.zacs;
import com.google.android.gms.common.api.internal.zact;

/* loaded from: classes5.dex */
public final class pap implements Runnable {

    /* renamed from: e */
    public final /* synthetic */ zact f80617e;

    public pap(zact zactVar) {
        this.f80617e = zactVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        zacs zacsVar;
        zacsVar = this.f80617e.f29273g;
        zacsVar.zae(new ConnectionResult(4));
    }
}
