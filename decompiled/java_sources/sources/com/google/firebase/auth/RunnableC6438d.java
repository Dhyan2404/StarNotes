package com.google.firebase.auth;

import com.google.firebase.auth.FirebaseAuth;

/* renamed from: com.google.firebase.auth.d */
/* loaded from: classes6.dex */
public final class RunnableC6438d implements Runnable {

    /* renamed from: e */
    public final /* synthetic */ FirebaseAuth.IdTokenListener f35678e;

    /* renamed from: f */
    public final /* synthetic */ FirebaseAuth f35679f;

    public RunnableC6438d(FirebaseAuth firebaseAuth, FirebaseAuth.IdTokenListener idTokenListener) {
        this.f35678e = idTokenListener;
        this.f35679f = firebaseAuth;
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.f35678e.onIdTokenChanged(this.f35679f);
    }
}
