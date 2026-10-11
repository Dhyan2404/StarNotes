package com.sunia.HTREnginev2;

import android.os.Bundle;
import androidx.annotation.Nullable;
import com.google.android.gms.common.api.GoogleApiClient;
import com.google.android.gms.common.api.internal.StatusPendingResult;
import com.google.android.gms.common.api.internal.zabe;
import com.google.android.gms.common.internal.Preconditions;
import java.util.concurrent.atomic.AtomicReference;

/* loaded from: classes5.dex */
public final class s9p implements GoogleApiClient.ConnectionCallbacks {

    /* renamed from: a */
    public final /* synthetic */ AtomicReference f83935a;

    /* renamed from: b */
    public final /* synthetic */ StatusPendingResult f83936b;

    /* renamed from: c */
    public final /* synthetic */ zabe f83937c;

    public s9p(zabe zabeVar, AtomicReference atomicReference, StatusPendingResult statusPendingResult) {
        this.f83937c = zabeVar;
        this.f83935a = atomicReference;
        this.f83936b = statusPendingResult;
    }

    @Override // com.google.android.gms.common.api.internal.ConnectionCallbacks
    public final void onConnected(@Nullable Bundle bundle) {
        this.f83937c.m22074j((GoogleApiClient) Preconditions.checkNotNull((GoogleApiClient) this.f83935a.get()), this.f83936b, true);
    }

    @Override // com.google.android.gms.common.api.internal.ConnectionCallbacks
    public final void onConnectionSuspended(int i) {
    }
}
