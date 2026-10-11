package com.google.android.gms.auth.api.signin.internal;

import android.content.Context;
import android.util.Log;
import androidx.loader.content.AsyncTaskLoader;
import com.google.android.gms.common.api.GoogleApiClient;
import com.google.android.gms.common.api.internal.SignInConnectionListener;
import java.util.Iterator;
import java.util.Set;
import java.util.concurrent.Semaphore;
import java.util.concurrent.TimeUnit;

/* loaded from: classes5.dex */
public final class zbc extends AsyncTaskLoader implements SignInConnectionListener {

    /* renamed from: r */
    public final Semaphore f28972r;

    /* renamed from: s */
    public final Set f28973s;

    public zbc(Context context, Set set) {
        super(context);
        this.f28972r = new Semaphore(0);
        this.f28973s = set;
    }

    @Override // androidx.loader.content.AsyncTaskLoader
    public final /* bridge */ /* synthetic */ Object loadInBackground() {
        Iterator it2 = this.f28973s.iterator();
        int i = 0;
        while (it2.hasNext()) {
            if (((GoogleApiClient) it2.next()).maybeSignIn(this)) {
                i++;
            }
        }
        try {
            this.f28972r.tryAcquire(i, 5L, TimeUnit.SECONDS);
            return null;
        } catch (InterruptedException e) {
            Log.i("GACSignInLoader", "Unexpected InterruptedException", e);
            Thread.currentThread().interrupt();
            return null;
        }
    }

    @Override // com.google.android.gms.common.api.internal.SignInConnectionListener
    public final void onComplete() {
        this.f28972r.release();
    }

    @Override // androidx.loader.content.Loader
    public final void onStartLoading() {
        this.f28972r.drainPermits();
        forceLoad();
    }
}
