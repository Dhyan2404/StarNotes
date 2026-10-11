package com.sunia.HTREnginev2;

import android.os.Bundle;
import com.google.android.gms.common.api.internal.LifecycleCallback;

/* loaded from: classes5.dex */
public final class vip implements Runnable {

    /* renamed from: e */
    public final /* synthetic */ LifecycleCallback f87549e;

    /* renamed from: f */
    public final /* synthetic */ String f87550f;

    /* renamed from: g */
    public final /* synthetic */ com.google.android.gms.common.api.internal.zzd f87551g;

    public vip(com.google.android.gms.common.api.internal.zzd zzdVar, LifecycleCallback lifecycleCallback, String str) {
        this.f87551g = zzdVar;
        this.f87549e = lifecycleCallback;
        this.f87550f = str;
    }

    @Override // java.lang.Runnable
    public final void run() {
        int i;
        int i2;
        int i3;
        int i4;
        int i5;
        Bundle bundle;
        Bundle bundle2;
        Bundle bundle3;
        com.google.android.gms.common.api.internal.zzd zzdVar = this.f87551g;
        i = zzdVar.f29303d1;
        if (i > 0) {
            LifecycleCallback lifecycleCallback = this.f87549e;
            bundle = zzdVar.f29304e1;
            if (bundle != null) {
                String str = this.f87550f;
                bundle3 = zzdVar.f29304e1;
                bundle2 = bundle3.getBundle(str);
            } else {
                bundle2 = null;
            }
            lifecycleCallback.onCreate(bundle2);
        }
        i2 = this.f87551g.f29303d1;
        if (i2 >= 2) {
            this.f87549e.onStart();
        }
        i3 = this.f87551g.f29303d1;
        if (i3 >= 3) {
            this.f87549e.onResume();
        }
        i4 = this.f87551g.f29303d1;
        if (i4 >= 4) {
            this.f87549e.onStop();
        }
        i5 = this.f87551g.f29303d1;
        if (i5 >= 5) {
            this.f87549e.onDestroy();
        }
    }
}
