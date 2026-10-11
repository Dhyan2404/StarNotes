package com.sunia.HTREnginev2;

import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import com.google.android.gms.dynamic.DeferredLifecycleHelper;
import com.google.android.gms.dynamic.LifecycleDelegate;

/* loaded from: classes5.dex */
public final class xap implements jbp {

    /* renamed from: a */
    public final /* synthetic */ FrameLayout f89447a;

    /* renamed from: b */
    public final /* synthetic */ LayoutInflater f89448b;

    /* renamed from: c */
    public final /* synthetic */ ViewGroup f89449c;

    /* renamed from: d */
    public final /* synthetic */ Bundle f89450d;

    /* renamed from: e */
    public final /* synthetic */ DeferredLifecycleHelper f89451e;

    public xap(DeferredLifecycleHelper deferredLifecycleHelper, FrameLayout frameLayout, LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        this.f89451e = deferredLifecycleHelper;
        this.f89447a = frameLayout;
        this.f89448b = layoutInflater;
        this.f89449c = viewGroup;
        this.f89450d = bundle;
    }

    @Override // com.sunia.HTREnginev2.jbp
    /* renamed from: a */
    public final void mo53950a(LifecycleDelegate lifecycleDelegate) {
        LifecycleDelegate lifecycleDelegate2;
        this.f89447a.removeAllViews();
        lifecycleDelegate2 = this.f89451e.f29514a;
        this.f89447a.addView(lifecycleDelegate2.onCreateView(this.f89448b, this.f89449c, this.f89450d));
    }

    @Override // com.sunia.HTREnginev2.jbp
    public final int zaa() {
        return 2;
    }
}
