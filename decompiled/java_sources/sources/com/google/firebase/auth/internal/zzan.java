package com.google.firebase.auth.internal;

import android.os.Handler;
import android.os.HandlerThread;
import androidx.annotation.VisibleForTesting;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.common.logging.Logger;
import com.google.android.gms.common.util.DefaultClock;
import com.google.firebase.FirebaseApp;
import com.sunia.HTREnginev2.qgp;

/* loaded from: classes6.dex */
public final class zzan {

    /* renamed from: h */
    public static Logger f35705h = new Logger("TokenRefresher", "FirebaseAuth:");

    /* renamed from: a */
    public final FirebaseApp f35706a;

    /* renamed from: b */
    @VisibleForTesting
    public volatile long f35707b;

    /* renamed from: c */
    @VisibleForTesting
    public volatile long f35708c;

    /* renamed from: d */
    @VisibleForTesting
    public long f35709d;

    /* renamed from: e */
    @VisibleForTesting
    public HandlerThread f35710e;

    /* renamed from: f */
    @VisibleForTesting
    public Handler f35711f;

    /* renamed from: g */
    @VisibleForTesting
    public Runnable f35712g;

    public zzan(FirebaseApp firebaseApp) {
        f35705h.m22194v("Initializing TokenRefresher", new Object[0]);
        FirebaseApp firebaseApp2 = (FirebaseApp) Preconditions.checkNotNull(firebaseApp);
        this.f35706a = firebaseApp2;
        HandlerThread handlerThread = new HandlerThread("TokenRefresher", 10);
        this.f35710e = handlerThread;
        handlerThread.start();
        this.f35711f = new com.google.android.gms.internal.p124firebaseauthapi.zzg(this.f35710e.getLooper());
        this.f35712g = new qgp(this, firebaseApp2.getName());
        this.f35709d = 300000L;
    }

    /* renamed from: b */
    public final void m27984b() {
        int i = (int) this.f35708c;
        this.f35708c = (i == 30 || i == 60 || i == 120 || i == 240 || i == 480) ? 2 * this.f35708c : i != 960 ? 30L : 960L;
        this.f35707b = DefaultClock.getInstance().currentTimeMillis() + (this.f35708c * 1000);
        f35705h.m22194v("Scheduling refresh for " + this.f35707b, new Object[0]);
        this.f35711f.postDelayed(this.f35712g, this.f35708c * 1000);
    }

    public final void zzb() {
        this.f35711f.removeCallbacks(this.f35712g);
    }

    public final void zzc() {
        f35705h.m22194v("Scheduling refresh for " + (this.f35707b - this.f35709d), new Object[0]);
        zzb();
        this.f35708c = Math.max((this.f35707b - DefaultClock.getInstance().currentTimeMillis()) - this.f35709d, 0L) / 1000;
        this.f35711f.postDelayed(this.f35712g, this.f35708c * 1000);
    }
}
