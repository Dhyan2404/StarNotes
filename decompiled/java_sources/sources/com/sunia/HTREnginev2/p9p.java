package com.sunia.HTREnginev2;

import android.os.Bundle;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.google.android.gms.common.ConnectionResult;
import com.google.android.gms.common.api.GoogleApiClient;
import com.google.android.gms.common.api.internal.zaas;
import com.google.android.gms.common.api.internal.zaaw;
import com.google.android.gms.common.internal.ClientSettings;
import com.google.android.gms.common.internal.Preconditions;
import java.util.concurrent.locks.Lock;

/* loaded from: classes5.dex */
public final class p9p implements GoogleApiClient.ConnectionCallbacks, GoogleApiClient.OnConnectionFailedListener {

    /* renamed from: a */
    public final /* synthetic */ zaaw f80595a;

    public /* synthetic */ p9p(zaaw zaawVar, zaas zaasVar) {
        this.f80595a = zaawVar;
    }

    @Override // com.google.android.gms.common.api.internal.ConnectionCallbacks
    public final void onConnected(@Nullable Bundle bundle) {
        ClientSettings clientSettings;
        com.google.android.gms.signin.zae zaeVar;
        clientSettings = this.f80595a.f29201r;
        zaeVar = this.f80595a.f29194k;
        ((com.google.android.gms.signin.zae) Preconditions.checkNotNull(zaeVar)).zad(new o9p(this.f80595a));
    }

    @Override // com.google.android.gms.common.api.internal.OnConnectionFailedListener
    public final void onConnectionFailed(@NonNull ConnectionResult connectionResult) {
        Lock lock;
        Lock lock2;
        boolean m22065i;
        lock = this.f80595a.f29185b;
        lock.lock();
        try {
            m22065i = this.f80595a.m22065i(connectionResult);
            if (m22065i) {
                this.f80595a.m22057a();
                this.f80595a.m22062f();
            } else {
                this.f80595a.m22060d(connectionResult);
            }
        } finally {
            lock2 = this.f80595a.f29185b;
            lock2.unlock();
        }
    }

    @Override // com.google.android.gms.common.api.internal.ConnectionCallbacks
    public final void onConnectionSuspended(int i) {
    }
}
