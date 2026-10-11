package com.sunia.HTREnginev2;

import com.google.android.gms.common.api.Api;
import com.google.android.gms.common.api.internal.zabq;

/* loaded from: classes5.dex */
public final class eap implements Runnable {

    /* renamed from: e */
    public final /* synthetic */ fap f68754e;

    public eap(fap fapVar) {
        this.f68754e = fapVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        Api.Client client;
        Api.Client client2;
        zabq zabqVar = this.f68754e.f69821a;
        client = zabqVar.f29248b;
        client2 = zabqVar.f29248b;
        client.disconnect(client2.getClass().getName().concat(" disconnecting because it was signed out."));
    }
}
