package com.google.firebase.auth;

import com.google.firebase.auth.FirebaseAuth;
import com.google.firebase.auth.internal.IdTokenListener;
import com.google.firebase.internal.InternalTokenResult;
import java.util.Iterator;
import java.util.List;

/* renamed from: com.google.firebase.auth.k */
/* loaded from: classes6.dex */
public final class RunnableC6446k implements Runnable {

    /* renamed from: e */
    public final /* synthetic */ FirebaseAuth f35784e;

    /* renamed from: f */
    public final /* synthetic */ InternalTokenResult f35785f;

    public RunnableC6446k(FirebaseAuth firebaseAuth, InternalTokenResult internalTokenResult) {
        this.f35784e = firebaseAuth;
        this.f35785f = internalTokenResult;
    }

    @Override // java.lang.Runnable
    public final void run() {
        List list;
        List list2;
        list = this.f35784e.f35599c;
        Iterator it2 = list.iterator();
        while (it2.hasNext()) {
            ((IdTokenListener) it2.next()).onIdTokenChanged(this.f35785f);
        }
        list2 = this.f35784e.f35598b;
        Iterator it3 = list2.iterator();
        while (it3.hasNext()) {
            ((FirebaseAuth.IdTokenListener) it3.next()).onIdTokenChanged(this.f35784e);
        }
    }
}
