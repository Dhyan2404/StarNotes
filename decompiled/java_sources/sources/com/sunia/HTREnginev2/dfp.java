package com.sunia.HTREnginev2;

import android.os.Bundle;
import com.google.android.gms.common.api.internal.LifecycleCallback;

/* loaded from: classes5.dex */
public final class dfp implements Runnable {

    /* renamed from: e */
    public final /* synthetic */ LifecycleCallback f67807e;

    /* renamed from: f */
    public final /* synthetic */ String f67808f;

    /* renamed from: g */
    public final /* synthetic */ com.google.android.gms.common.api.internal.zzb f67809g;

    public dfp(com.google.android.gms.common.api.internal.zzb zzbVar, LifecycleCallback lifecycleCallback, String str) {
        this.f67809g = zzbVar;
        this.f67807e = lifecycleCallback;
        this.f67808f = str;
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
        com.google.android.gms.common.api.internal.zzb zzbVar = this.f67809g;
        i = zzbVar.f29299f;
        if (i > 0) {
            LifecycleCallback lifecycleCallback = this.f67807e;
            bundle = zzbVar.f29300g;
            if (bundle != null) {
                String str = this.f67808f;
                bundle3 = zzbVar.f29300g;
                bundle2 = bundle3.getBundle(str);
            } else {
                bundle2 = null;
            }
            lifecycleCallback.onCreate(bundle2);
        }
        i2 = this.f67809g.f29299f;
        if (i2 >= 2) {
            this.f67807e.onStart();
        }
        i3 = this.f67809g.f29299f;
        if (i3 >= 3) {
            this.f67807e.onResume();
        }
        i4 = this.f67809g.f29299f;
        if (i4 >= 4) {
            this.f67807e.onStop();
        }
        i5 = this.f67809g.f29299f;
        if (i5 >= 5) {
            this.f67807e.onDestroy();
        }
    }
}
