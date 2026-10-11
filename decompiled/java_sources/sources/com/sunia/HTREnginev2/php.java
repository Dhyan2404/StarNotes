package com.sunia.HTREnginev2;

import androidx.annotation.Nullable;
import com.google.android.gms.internal.measurement.zzdy;
import com.google.firebase.analytics.FirebaseAnalytics;
import java.util.concurrent.Callable;

/* loaded from: classes6.dex */
public final class php implements Callable<Long> {

    /* renamed from: e */
    public final /* synthetic */ FirebaseAnalytics f80812e;

    public php(FirebaseAnalytics firebaseAnalytics) {
        this.f80812e = firebaseAnalytics;
    }

    @Override // java.util.concurrent.Callable
    @Nullable
    public final /* synthetic */ Long call() throws Exception {
        zzdy zzdyVar;
        zzdyVar = this.f80812e.f35557a;
        return zzdyVar.zzc();
    }
}
