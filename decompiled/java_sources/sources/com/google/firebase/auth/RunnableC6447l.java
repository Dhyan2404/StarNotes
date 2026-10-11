package com.google.firebase.auth;

import com.google.firebase.auth.FirebaseAuth;
import java.util.Iterator;
import java.util.List;

/* renamed from: com.google.firebase.auth.l */
/* loaded from: classes6.dex */
public final class RunnableC6447l implements Runnable {

    /* renamed from: e */
    public final /* synthetic */ FirebaseAuth f35786e;

    public RunnableC6447l(FirebaseAuth firebaseAuth) {
        this.f35786e = firebaseAuth;
    }

    @Override // java.lang.Runnable
    public final void run() {
        List list;
        list = this.f35786e.f35600d;
        Iterator it2 = list.iterator();
        while (it2.hasNext()) {
            ((FirebaseAuth.AuthStateListener) it2.next()).onAuthStateChanged(this.f35786e);
        }
    }
}
