package com.sunia.HTREnginev2;

import androidx.annotation.Nullable;
import com.google.android.gms.internal.measurement.zzdy;
import com.google.firebase.analytics.FirebaseAnalytics;
import java.util.concurrent.Callable;

/* loaded from: classes6.dex */
public final class sip implements Callable<String> {

    /* renamed from: e */
    public final /* synthetic */ FirebaseAnalytics f84188e;

    public sip(FirebaseAnalytics firebaseAnalytics) {
        this.f84188e = firebaseAnalytics;
    }

    @Override // java.util.concurrent.Callable
    @Nullable
    public final /* synthetic */ String call() throws Exception {
        zzdy zzdyVar;
        zzdyVar = this.f84188e.f35557a;
        return zzdyVar.zze();
    }
}
