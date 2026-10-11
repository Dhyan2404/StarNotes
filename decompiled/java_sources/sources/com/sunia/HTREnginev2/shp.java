package com.sunia.HTREnginev2;

import com.google.android.gms.ads.identifier.AdvertisingIdClient;
import com.google.android.gms.common.util.VisibleForTesting;
import java.lang.ref.WeakReference;
import java.util.concurrent.CountDownLatch;
import java.util.concurrent.TimeUnit;

@VisibleForTesting
/* loaded from: classes5.dex */
public final class shp extends Thread {

    /* renamed from: e */
    public final WeakReference<AdvertisingIdClient> f84160e;

    /* renamed from: f */
    public final long f84161f;

    /* renamed from: g */
    public final CountDownLatch f84162g = new CountDownLatch(1);

    /* renamed from: h */
    public boolean f84163h = false;

    public shp(AdvertisingIdClient advertisingIdClient, long j) {
        this.f84160e = new WeakReference<>(advertisingIdClient);
        this.f84161f = j;
        start();
    }

    /* renamed from: a */
    public final void m57166a() {
        AdvertisingIdClient advertisingIdClient = this.f84160e.get();
        if (advertisingIdClient != null) {
            advertisingIdClient.zza();
            this.f84163h = true;
        }
    }

    @Override // java.lang.Thread, java.lang.Runnable
    public final void run() {
        try {
            if (this.f84162g.await(this.f84161f, TimeUnit.MILLISECONDS)) {
                return;
            }
            m57166a();
        } catch (InterruptedException unused) {
            m57166a();
        }
    }
}
