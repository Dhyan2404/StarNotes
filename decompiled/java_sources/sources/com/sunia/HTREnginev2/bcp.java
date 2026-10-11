package com.sunia.HTREnginev2;

import android.os.Bundle;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.google.android.gms.common.ConnectionResult;
import com.google.android.gms.common.api.internal.C5053a;
import com.google.android.gms.common.api.internal.zabi;
import com.google.android.gms.common.api.internal.zabz;
import com.google.android.gms.common.api.internal.zaw;
import java.util.concurrent.locks.Lock;

/* loaded from: classes5.dex */
public final class bcp implements zabz {

    /* renamed from: a */
    public final /* synthetic */ C5053a f65637a;

    public /* synthetic */ bcp(C5053a c5053a, zaw zawVar) {
        this.f65637a = c5053a;
    }

    @Override // com.google.android.gms.common.api.internal.zabz
    public final void zaa(@NonNull ConnectionResult connectionResult) {
        Lock lock;
        Lock lock2;
        lock = this.f65637a.f29166m;
        lock.lock();
        try {
            this.f65637a.f29163j = connectionResult;
            C5053a.m22019p(this.f65637a);
        } finally {
            lock2 = this.f65637a.f29166m;
            lock2.unlock();
        }
    }

    @Override // com.google.android.gms.common.api.internal.zabz
    public final void zab(@Nullable Bundle bundle) {
        Lock lock;
        Lock lock2;
        lock = this.f65637a.f29166m;
        lock.lock();
        try {
            C5053a.m22018o(this.f65637a, bundle);
            this.f65637a.f29163j = ConnectionResult.RESULT_SUCCESS;
            C5053a.m22019p(this.f65637a);
        } finally {
            lock2 = this.f65637a.f29166m;
            lock2.unlock();
        }
    }

    @Override // com.google.android.gms.common.api.internal.zabz
    public final void zac(int i, boolean z) {
        Lock lock;
        Lock lock2;
        boolean z2;
        ConnectionResult connectionResult;
        ConnectionResult connectionResult2;
        zabi zabiVar;
        lock = this.f65637a.f29166m;
        lock.lock();
        try {
            C5053a c5053a = this.f65637a;
            z2 = c5053a.f29165l;
            if (!z2) {
                connectionResult = c5053a.f29164k;
                if (connectionResult != null) {
                    connectionResult2 = c5053a.f29164k;
                    if (connectionResult2.isSuccess()) {
                        this.f65637a.f29165l = true;
                        zabiVar = this.f65637a.f29158e;
                        zabiVar.onConnectionSuspended(i);
                    }
                }
            }
            this.f65637a.f29165l = false;
            C5053a.m22017n(this.f65637a, i, z);
        } finally {
            lock2 = this.f65637a.f29166m;
            lock2.unlock();
        }
    }
}
