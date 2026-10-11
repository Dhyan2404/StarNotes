package com.sunia.HTREnginev2;

import android.os.Looper;
import androidx.annotation.NonNull;
import com.google.android.gms.common.ConnectionResult;
import com.google.android.gms.common.api.Api;
import com.google.android.gms.common.api.internal.zaaw;
import com.google.android.gms.common.api.internal.zabi;
import com.google.android.gms.common.internal.BaseGmsClient;
import com.google.android.gms.common.internal.Preconditions;
import java.lang.ref.WeakReference;
import java.util.concurrent.locks.Lock;

/* loaded from: classes5.dex */
public final class i9p implements BaseGmsClient.ConnectionProgressReportCallbacks {

    /* renamed from: a */
    public final WeakReference f73034a;

    /* renamed from: b */
    public final Api f73035b;

    /* renamed from: c */
    public final boolean f73036c;

    public i9p(zaaw zaawVar, Api api, boolean z) {
        this.f73034a = new WeakReference(zaawVar);
        this.f73035b = api;
        this.f73036c = z;
    }

    @Override // com.google.android.gms.common.internal.BaseGmsClient.ConnectionProgressReportCallbacks
    public final void onReportServiceBinding(@NonNull ConnectionResult connectionResult) {
        zabi zabiVar;
        Lock lock;
        Lock lock2;
        boolean m22063g;
        boolean m22064h;
        zaaw zaawVar = (zaaw) this.f73034a.get();
        if (zaawVar == null) {
            return;
        }
        Looper myLooper = Looper.myLooper();
        zabiVar = zaawVar.f29184a;
        Preconditions.checkState(myLooper == zabiVar.f29244n.getLooper(), "onReportServiceBinding must be called on the GoogleApiClient handler thread");
        lock = zaawVar.f29185b;
        lock.lock();
        try {
            m22063g = zaawVar.m22063g(0);
            if (m22063g) {
                if (!connectionResult.isSuccess()) {
                    zaawVar.m22061e(connectionResult, this.f73035b, this.f73036c);
                }
                m22064h = zaawVar.m22064h();
                if (m22064h) {
                    zaawVar.m22062f();
                }
            }
        } finally {
            lock2 = zaawVar.f29185b;
            lock2.unlock();
        }
    }
}
