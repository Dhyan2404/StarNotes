package com.sunia.HTREnginev2;

import android.app.Activity;
import android.os.Bundle;
import com.google.android.gms.dynamic.DeferredLifecycleHelper;
import com.google.android.gms.dynamic.LifecycleDelegate;

/* loaded from: classes5.dex */
public final class t9p implements jbp {

    /* renamed from: a */
    public final /* synthetic */ Activity f85032a;

    /* renamed from: b */
    public final /* synthetic */ Bundle f85033b;

    /* renamed from: c */
    public final /* synthetic */ Bundle f85034c;

    /* renamed from: d */
    public final /* synthetic */ DeferredLifecycleHelper f85035d;

    public t9p(DeferredLifecycleHelper deferredLifecycleHelper, Activity activity, Bundle bundle, Bundle bundle2) {
        this.f85035d = deferredLifecycleHelper;
        this.f85032a = activity;
        this.f85033b = bundle;
        this.f85034c = bundle2;
    }

    @Override // com.sunia.HTREnginev2.jbp
    /* renamed from: a */
    public final void mo53950a(LifecycleDelegate lifecycleDelegate) {
        LifecycleDelegate lifecycleDelegate2;
        lifecycleDelegate2 = this.f85035d.f29514a;
        lifecycleDelegate2.onInflate(this.f85032a, this.f85033b, this.f85034c);
    }

    @Override // com.sunia.HTREnginev2.jbp
    public final int zaa() {
        return 0;
    }
}
