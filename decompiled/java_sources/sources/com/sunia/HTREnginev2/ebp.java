package com.sunia.HTREnginev2;

import com.google.android.gms.dynamic.DeferredLifecycleHelper;
import com.google.android.gms.dynamic.LifecycleDelegate;

/* loaded from: classes5.dex */
public final class ebp implements jbp {

    /* renamed from: a */
    public final /* synthetic */ DeferredLifecycleHelper f68793a;

    public ebp(DeferredLifecycleHelper deferredLifecycleHelper) {
        this.f68793a = deferredLifecycleHelper;
    }

    @Override // com.sunia.HTREnginev2.jbp
    /* renamed from: a */
    public final void mo53950a(LifecycleDelegate lifecycleDelegate) {
        LifecycleDelegate lifecycleDelegate2;
        lifecycleDelegate2 = this.f68793a.f29514a;
        lifecycleDelegate2.onStart();
    }

    @Override // com.sunia.HTREnginev2.jbp
    public final int zaa() {
        return 4;
    }
}
