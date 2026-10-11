package com.sunia.HTREnginev2;

import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.common.logging.Logger;
import com.google.android.gms.tasks.Task;
import com.google.firebase.FirebaseApp;
import com.google.firebase.auth.FirebaseAuth;
import com.google.firebase.auth.GetTokenResult;
import com.google.firebase.auth.internal.zzan;

/* loaded from: classes6.dex */
public final class qgp implements Runnable {

    /* renamed from: e */
    public final String f82034e;

    /* renamed from: f */
    public final /* synthetic */ zzan f82035f;

    public qgp(zzan zzanVar, String str) {
        this.f82035f = zzanVar;
        this.f82034e = Preconditions.checkNotEmpty(str);
    }

    @Override // java.lang.Runnable
    public final void run() {
        Logger logger;
        FirebaseAuth firebaseAuth = FirebaseAuth.getInstance(FirebaseApp.getInstance(this.f82034e));
        if (firebaseAuth.getCurrentUser() != null) {
            Task<GetTokenResult> accessToken = firebaseAuth.getAccessToken(true);
            logger = zzan.f35705h;
            logger.m22194v("Token refreshing started", new Object[0]);
            accessToken.addOnFailureListener(new ogp(this));
        }
    }
}
