package com.sunia.HTREnginev2;

import com.google.android.gms.common.logging.Logger;
import com.google.android.gms.tasks.OnFailureListener;
import com.google.firebase.FirebaseNetworkException;
import com.google.firebase.auth.internal.zzan;

/* loaded from: classes6.dex */
public final class ogp implements OnFailureListener {

    /* renamed from: a */
    public final /* synthetic */ qgp f79709a;

    public ogp(qgp qgpVar) {
        this.f79709a = qgpVar;
    }

    @Override // com.google.android.gms.tasks.OnFailureListener
    public final void onFailure(Exception exc) {
        Logger logger;
        if (exc instanceof FirebaseNetworkException) {
            logger = zzan.f35705h;
            logger.m22194v("Failure to refresh token; scheduling refresh after failure", new Object[0]);
            this.f79709a.f82035f.m27984b();
        }
    }
}
