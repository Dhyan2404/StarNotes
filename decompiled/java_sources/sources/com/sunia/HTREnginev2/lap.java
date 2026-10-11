package com.sunia.HTREnginev2;

import android.os.Bundle;
import com.google.android.gms.dynamic.DeferredLifecycleHelper;
import com.google.android.gms.dynamic.LifecycleDelegate;

/* loaded from: classes5.dex */
public final class lap implements jbp {

    /* renamed from: a */
    public final /* synthetic */ Bundle f76289a;

    /* renamed from: b */
    public final /* synthetic */ DeferredLifecycleHelper f76290b;

    public lap(DeferredLifecycleHelper deferredLifecycleHelper, Bundle bundle) {
        this.f76290b = deferredLifecycleHelper;
        this.f76289a = bundle;
    }

    @Override // com.sunia.HTREnginev2.jbp
    /* renamed from: a */
    public final void mo53950a(LifecycleDelegate lifecycleDelegate) {
        LifecycleDelegate lifecycleDelegate2;
        lifecycleDelegate2 = this.f76290b.f29514a;
        lifecycleDelegate2.onCreate(this.f76289a);
    }

    @Override // com.sunia.HTREnginev2.jbp
    public final int zaa() {
        return 1;
    }
}
