package com.google.firebase.auth;

import com.google.firebase.auth.FirebaseAuth;

/* renamed from: com.google.firebase.auth.j */
/* loaded from: classes6.dex */
public final class RunnableC6445j implements Runnable {

    /* renamed from: e */
    public final /* synthetic */ FirebaseAuth.AuthStateListener f35782e;

    /* renamed from: f */
    public final /* synthetic */ FirebaseAuth f35783f;

    public RunnableC6445j(FirebaseAuth firebaseAuth, FirebaseAuth.AuthStateListener authStateListener) {
        this.f35782e = authStateListener;
        this.f35783f = firebaseAuth;
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.f35782e.onAuthStateChanged(this.f35783f);
    }
}
