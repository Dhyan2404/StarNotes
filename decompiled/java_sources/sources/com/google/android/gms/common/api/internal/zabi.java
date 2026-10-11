package com.google.android.gms.common.api.internal;

import android.content.Context;
import android.os.Bundle;
import android.os.Looper;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.bumptech.glide.load.engine.GlideException;
import com.google.android.gms.common.ConnectionResult;
import com.google.android.gms.common.GoogleApiAvailabilityLight;
import com.google.android.gms.common.api.Api;
import com.google.android.gms.common.api.internal.BaseImplementation;
import com.google.android.gms.common.internal.ClientSettings;
import com.google.android.gms.common.internal.Preconditions;
import com.google.errorprone.annotations.concurrent.GuardedBy;
import com.onyx.android.sdk.data.account.bean.DevicePushAction;
import com.sunia.HTREnginev2.aap;
import com.sunia.HTREnginev2.bap;
import java.io.FileDescriptor;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Map;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.locks.Condition;
import java.util.concurrent.locks.Lock;
import org.checkerframework.checker.initialization.qual.NotOnlyInitialized;

/* loaded from: classes5.dex */
public final class zabi implements zaca, zau {

    /* renamed from: a */
    public final Lock f29231a;

    /* renamed from: b */
    public final Condition f29232b;

    /* renamed from: c */
    public final Context f29233c;

    /* renamed from: d */
    public final GoogleApiAvailabilityLight f29234d;

    /* renamed from: e */
    public final bap f29235e;

    /* renamed from: f */
    public final Map f29236f;

    /* renamed from: h */
    @Nullable
    public final ClientSettings f29238h;

    /* renamed from: i */
    public final Map f29239i;

    /* renamed from: j */
    @Nullable
    public final Api.AbstractClientBuilder f29240j;

    /* renamed from: k */
    @NotOnlyInitialized
    public volatile zabf f29241k;

    /* renamed from: m */
    public int f29243m;

    /* renamed from: n */
    public final zabe f29244n;

    /* renamed from: o */
    public final zabz f29245o;

    /* renamed from: g */
    public final Map f29237g = new HashMap();

    /* renamed from: l */
    @Nullable
    public ConnectionResult f29242l = null;

    public zabi(Context context, zabe zabeVar, Lock lock, Looper looper, GoogleApiAvailabilityLight googleApiAvailabilityLight, Map map, @Nullable ClientSettings clientSettings, Map map2, @Nullable Api.AbstractClientBuilder abstractClientBuilder, ArrayList arrayList, zabz zabzVar) {
        this.f29233c = context;
        this.f29231a = lock;
        this.f29234d = googleApiAvailabilityLight;
        this.f29236f = map;
        this.f29238h = clientSettings;
        this.f29239i = map2;
        this.f29240j = abstractClientBuilder;
        this.f29244n = zabeVar;
        this.f29245o = zabzVar;
        int size = arrayList.size();
        for (int i = 0; i < size; i++) {
            ((zat) arrayList.get(i)).zaa(this);
        }
        this.f29235e = new bap(this, looper);
        this.f29232b = lock.newCondition();
        this.f29241k = new zaax(this);
    }

    /* renamed from: c */
    public final void m22078c() {
        this.f29231a.lock();
        try {
            this.f29244n.m22072h();
            this.f29241k = new zaaj(this);
            this.f29241k.zad();
            this.f29232b.signalAll();
        } finally {
            this.f29231a.unlock();
        }
    }

    /* renamed from: d */
    public final void m22079d() {
        this.f29231a.lock();
        try {
            this.f29241k = new zaaw(this, this.f29238h, this.f29239i, this.f29234d, this.f29240j, this.f29231a, this.f29233c);
            this.f29241k.zad();
            this.f29232b.signalAll();
        } finally {
            this.f29231a.unlock();
        }
    }

    /* renamed from: e */
    public final void m22080e(@Nullable ConnectionResult connectionResult) {
        this.f29231a.lock();
        try {
            this.f29242l = connectionResult;
            this.f29241k = new zaax(this);
            this.f29241k.zad();
            this.f29232b.signalAll();
        } finally {
            this.f29231a.unlock();
        }
    }

    /* renamed from: f */
    public final void m22081f(aap aapVar) {
        bap bapVar = this.f29235e;
        bapVar.sendMessage(bapVar.obtainMessage(1, aapVar));
    }

    /* renamed from: g */
    public final void m22082g(RuntimeException runtimeException) {
        bap bapVar = this.f29235e;
        bapVar.sendMessage(bapVar.obtainMessage(2, runtimeException));
    }

    @Override // com.google.android.gms.common.api.internal.ConnectionCallbacks
    public final void onConnected(@Nullable Bundle bundle) {
        this.f29231a.lock();
        try {
            this.f29241k.zag(bundle);
        } finally {
            this.f29231a.unlock();
        }
    }

    @Override // com.google.android.gms.common.api.internal.ConnectionCallbacks
    public final void onConnectionSuspended(int i) {
        this.f29231a.lock();
        try {
            this.f29241k.zai(i);
        } finally {
            this.f29231a.unlock();
        }
    }

    @Override // com.google.android.gms.common.api.internal.zau
    public final void zaa(@NonNull ConnectionResult connectionResult, @NonNull Api api, boolean z) {
        this.f29231a.lock();
        try {
            this.f29241k.zah(connectionResult, api, z);
        } finally {
            this.f29231a.unlock();
        }
    }

    @Override // com.google.android.gms.common.api.internal.zaca
    @GuardedBy(DevicePushAction.LOCK_DEVICE)
    public final ConnectionResult zab() {
        zaq();
        while (this.f29241k instanceof zaaw) {
            try {
                this.f29232b.await();
            } catch (InterruptedException unused) {
                Thread.currentThread().interrupt();
                return new ConnectionResult(15, null);
            }
        }
        if (this.f29241k instanceof zaaj) {
            return ConnectionResult.RESULT_SUCCESS;
        }
        ConnectionResult connectionResult = this.f29242l;
        return connectionResult != null ? connectionResult : new ConnectionResult(13, null);
    }

    @Override // com.google.android.gms.common.api.internal.zaca
    @GuardedBy(DevicePushAction.LOCK_DEVICE)
    public final ConnectionResult zac(long j, TimeUnit timeUnit) {
        zaq();
        long nanos = timeUnit.toNanos(j);
        while (this.f29241k instanceof zaaw) {
            if (nanos <= 0) {
                zar();
                return new ConnectionResult(14, null);
            }
            try {
                nanos = this.f29232b.awaitNanos(nanos);
            } catch (InterruptedException unused) {
                Thread.currentThread().interrupt();
                return new ConnectionResult(15, null);
            }
            Thread.currentThread().interrupt();
            return new ConnectionResult(15, null);
        }
        if (this.f29241k instanceof zaaj) {
            return ConnectionResult.RESULT_SUCCESS;
        }
        ConnectionResult connectionResult = this.f29242l;
        return connectionResult != null ? connectionResult : new ConnectionResult(13, null);
    }

    @Override // com.google.android.gms.common.api.internal.zaca
    @Nullable
    @GuardedBy(DevicePushAction.LOCK_DEVICE)
    public final ConnectionResult zad(@NonNull Api api) {
        Map map = this.f29236f;
        Api.AnyClientKey zab = api.zab();
        if (!map.containsKey(zab)) {
            return null;
        }
        if (((Api.Client) this.f29236f.get(zab)).isConnected()) {
            return ConnectionResult.RESULT_SUCCESS;
        }
        if (this.f29237g.containsKey(zab)) {
            return (ConnectionResult) this.f29237g.get(zab);
        }
        return null;
    }

    @Override // com.google.android.gms.common.api.internal.zaca
    @GuardedBy(DevicePushAction.LOCK_DEVICE)
    public final BaseImplementation.ApiMethodImpl zae(@NonNull BaseImplementation.ApiMethodImpl apiMethodImpl) {
        apiMethodImpl.zak();
        this.f29241k.zaa(apiMethodImpl);
        return apiMethodImpl;
    }

    @Override // com.google.android.gms.common.api.internal.zaca
    @GuardedBy(DevicePushAction.LOCK_DEVICE)
    public final BaseImplementation.ApiMethodImpl zaf(@NonNull BaseImplementation.ApiMethodImpl apiMethodImpl) {
        apiMethodImpl.zak();
        return this.f29241k.zab(apiMethodImpl);
    }

    @Override // com.google.android.gms.common.api.internal.zaca
    @GuardedBy(DevicePushAction.LOCK_DEVICE)
    public final void zaq() {
        this.f29241k.zae();
    }

    @Override // com.google.android.gms.common.api.internal.zaca
    @GuardedBy(DevicePushAction.LOCK_DEVICE)
    public final void zar() {
        if (this.f29241k.zaj()) {
            this.f29237g.clear();
        }
    }

    @Override // com.google.android.gms.common.api.internal.zaca
    public final void zas(String str, @Nullable FileDescriptor fileDescriptor, PrintWriter printWriter, @Nullable String[] strArr) {
        printWriter.append((CharSequence) str).append("mState=").println(this.f29241k);
        for (Api api : this.f29239i.keySet()) {
            String valueOf = String.valueOf(str);
            printWriter.append((CharSequence) str).append((CharSequence) api.zad()).println(":");
            ((Api.Client) Preconditions.checkNotNull((Api.Client) this.f29236f.get(api.zab()))).dump(valueOf.concat(GlideException.C1935a.f14609h), fileDescriptor, printWriter, strArr);
        }
    }

    @Override // com.google.android.gms.common.api.internal.zaca
    @GuardedBy(DevicePushAction.LOCK_DEVICE)
    public final void zat() {
        if (this.f29241k instanceof zaaj) {
            ((zaaj) this.f29241k).m22037b();
        }
    }

    @Override // com.google.android.gms.common.api.internal.zaca
    public final void zau() {
    }

    @Override // com.google.android.gms.common.api.internal.zaca
    public final boolean zaw() {
        return this.f29241k instanceof zaaj;
    }

    @Override // com.google.android.gms.common.api.internal.zaca
    public final boolean zax() {
        return this.f29241k instanceof zaaw;
    }

    @Override // com.google.android.gms.common.api.internal.zaca
    public final boolean zay(SignInConnectionListener signInConnectionListener) {
        return false;
    }
}
