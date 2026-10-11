package com.sunia.HTREnginev2;

import com.google.android.gms.dynamic.DeferredLifecycleHelper;
import com.google.android.gms.dynamic.LifecycleDelegate;
import com.google.android.gms.dynamic.OnDelegateCreatedListener;
import java.util.Iterator;
import java.util.LinkedList;

/* loaded from: classes5.dex */
public final class y8p implements OnDelegateCreatedListener {

    /* renamed from: a */
    public final /* synthetic */ DeferredLifecycleHelper f90497a;

    public y8p(DeferredLifecycleHelper deferredLifecycleHelper) {
        this.f90497a = deferredLifecycleHelper;
    }

    @Override // com.google.android.gms.dynamic.OnDelegateCreatedListener
    public final void onDelegateCreated(LifecycleDelegate lifecycleDelegate) {
        LinkedList linkedList;
        LinkedList linkedList2;
        LifecycleDelegate lifecycleDelegate2;
        this.f90497a.f29514a = lifecycleDelegate;
        linkedList = this.f90497a.f29516c;
        Iterator it2 = linkedList.iterator();
        while (it2.hasNext()) {
            jbp jbpVar = (jbp) it2.next();
            lifecycleDelegate2 = this.f90497a.f29514a;
            jbpVar.mo53950a(lifecycleDelegate2);
        }
        linkedList2 = this.f90497a.f29516c;
        linkedList2.clear();
        this.f90497a.f29515b = null;
    }
}
