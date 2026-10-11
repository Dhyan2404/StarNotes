package com.sunia.HTREnginev2;

import android.content.Context;
import com.google.android.gms.common.GoogleApiAvailabilityLight;
import com.google.android.gms.common.api.internal.zaaw;

/* loaded from: classes5.dex */
public final class h9p implements Runnable {

    /* renamed from: e */
    public final /* synthetic */ zaaw f71978e;

    public h9p(zaaw zaawVar) {
        this.f71978e = zaawVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        GoogleApiAvailabilityLight googleApiAvailabilityLight;
        Context context;
        zaaw zaawVar = this.f71978e;
        googleApiAvailabilityLight = zaawVar.f29187d;
        context = zaawVar.f29186c;
        googleApiAvailabilityLight.cancelAvailabilityErrorNotifications(context);
    }
}
