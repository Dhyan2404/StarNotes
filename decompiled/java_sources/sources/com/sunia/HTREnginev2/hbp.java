package com.sunia.HTREnginev2;

import com.google.android.gms.dynamic.DeferredLifecycleHelper;
import com.google.android.gms.dynamic.LifecycleDelegate;

/* loaded from: classes5.dex */
public final class hbp implements jbp {

    /* renamed from: a */
    public final /* synthetic */ DeferredLifecycleHelper f72056a;

    public hbp(DeferredLifecycleHelper deferredLifecycleHelper) {
        this.f72056a = deferredLifecycleHelper;
    }

    @Override // com.sunia.HTREnginev2.jbp
    /* renamed from: a */
    public final void mo53950a(LifecycleDelegate lifecycleDelegate) {
        LifecycleDelegate lifecycleDelegate2;
        lifecycleDelegate2 = this.f72056a.f29514a;
        lifecycleDelegate2.onResume();
    }

    @Override // com.sunia.HTREnginev2.jbp
    public final int zaa() {
        return 5;
    }
}
