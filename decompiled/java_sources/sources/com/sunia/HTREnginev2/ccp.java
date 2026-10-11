package com.sunia.HTREnginev2;

import android.os.Bundle;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.google.android.gms.common.ConnectionResult;
import com.google.android.gms.common.api.internal.C5053a;
import com.google.android.gms.common.api.internal.zabi;
import com.google.android.gms.common.api.internal.zabz;
import com.google.android.gms.common.api.internal.zay;
import java.util.concurrent.locks.Lock;

/* loaded from: classes5.dex */
public final class ccp implements zabz {

    /* renamed from: a */
    public final /* synthetic */ C5053a f66711a;

    public /* synthetic */ ccp(C5053a c5053a, zay zayVar) {
        this.f66711a = c5053a;
    }

    @Override // com.google.android.gms.common.api.internal.zabz
    public final void zaa(@NonNull ConnectionResult connectionResult) {
        Lock lock;
        Lock lock2;
        lock = this.f66711a.f29166m;
        lock.lock();
        try {
            this.f66711a.f29164k = connectionResult;
            C5053a.m22019p(this.f66711a);
        } finally {
            lock2 = this.f66711a.f29166m;
            lock2.unlock();
        }
    }

    @Override // com.google.android.gms.common.api.internal.zabz
    public final void zab(@Nullable Bundle bundle) {
        Lock lock;
        Lock lock2;
        lock = this.f66711a.f29166m;
        lock.lock();
        try {
            this.f66711a.f29164k = ConnectionResult.RESULT_SUCCESS;
            C5053a.m22019p(this.f66711a);
        } finally {
            lock2 = this.f66711a.f29166m;
            lock2.unlock();
        }
    }

    @Override // com.google.android.gms.common.api.internal.zabz
    public final void zac(int i, boolean z) {
        Lock lock;
        Lock lock2;
        boolean z2;
        zabi zabiVar;
        lock = this.f66711a.f29166m;
        lock.lock();
        try {
            C5053a c5053a = this.f66711a;
            z2 = c5053a.f29165l;
            if (z2) {
                c5053a.f29165l = false;
                C5053a.m22017n(this.f66711a, i, z);
            } else {
                c5053a.f29165l = true;
                zabiVar = this.f66711a.f29157d;
                zabiVar.onConnectionSuspended(i);
            }
        } finally {
            lock2 = this.f66711a.f29166m;
            lock2.unlock();
        }
    }
}
