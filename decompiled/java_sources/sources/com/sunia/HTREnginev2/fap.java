package com.sunia.HTREnginev2;

import android.os.Handler;
import com.google.android.gms.common.api.internal.zabq;
import com.google.android.gms.common.internal.BaseGmsClient;

/* loaded from: classes5.dex */
public final class fap implements BaseGmsClient.SignOutCallbacks {

    /* renamed from: a */
    public final /* synthetic */ zabq f69821a;

    public fap(zabq zabqVar) {
        this.f69821a = zabqVar;
    }

    @Override // com.google.android.gms.common.internal.BaseGmsClient.SignOutCallbacks
    public final void onSignOutComplete() {
        Handler handler;
        handler = this.f69821a.f29259m.f29106r;
        handler.post(new eap(this));
    }
}
