package com.google.android.gms.common.api.internal;

import android.app.PendingIntent;
import android.content.Context;
import android.os.Bundle;
import android.os.Looper;
import android.util.Log;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.collection.ArrayMap;
import com.bumptech.glide.load.engine.GlideException;
import com.google.android.gms.common.ConnectionResult;
import com.google.android.gms.common.GoogleApiAvailabilityLight;
import com.google.android.gms.common.api.Api;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.api.internal.BaseImplementation;
import com.google.android.gms.common.internal.ClientSettings;
import com.google.android.gms.common.internal.Objects;
import com.google.android.gms.common.internal.Preconditions;
import com.google.errorprone.annotations.concurrent.GuardedBy;
import com.onyx.android.sdk.data.account.bean.DevicePushAction;
import com.sunia.HTREnginev2.bcp;
import com.sunia.HTREnginev2.ccp;
import com.sunia.HTREnginev2.ybp;
import java.io.FileDescriptor;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;
import java.util.WeakHashMap;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.locks.Lock;

/* renamed from: com.google.android.gms.common.api.internal.a */
/* loaded from: classes5.dex */
public final class C5053a implements zaca {

    /* renamed from: a */
    public final Context f29154a;

    /* renamed from: b */
    public final zabe f29155b;

    /* renamed from: c */
    public final Looper f29156c;

    /* renamed from: d */
    public final zabi f29157d;

    /* renamed from: e */
    public final zabi f29158e;

    /* renamed from: f */
    public final Map f29159f;

    /* renamed from: h */
    @Nullable
    public final Api.Client f29161h;

    /* renamed from: i */
    @Nullable
    public Bundle f29162i;

    /* renamed from: m */
    public final Lock f29166m;

    /* renamed from: g */
    public final Set f29160g = Collections.newSetFromMap(new WeakHashMap());

    /* renamed from: j */
    @Nullable
    public ConnectionResult f29163j = null;

    /* renamed from: k */
    @Nullable
    public ConnectionResult f29164k = null;

    /* renamed from: l */
    public boolean f29165l = false;

    /* renamed from: n */
    @GuardedBy(DevicePushAction.LOCK_DEVICE)
    public int f29167n = 0;

    public C5053a(Context context, zabe zabeVar, Lock lock, Looper looper, GoogleApiAvailabilityLight googleApiAvailabilityLight, Map map, Map map2, ClientSettings clientSettings, Api.AbstractClientBuilder abstractClientBuilder, @Nullable Api.Client client, ArrayList arrayList, ArrayList arrayList2, Map map3, Map map4) {
        this.f29154a = context;
        this.f29155b = zabeVar;
        this.f29166m = lock;
        this.f29156c = looper;
        this.f29161h = client;
        this.f29157d = new zabi(context, zabeVar, lock, looper, googleApiAvailabilityLight, map2, null, map4, null, arrayList2, new bcp(this, null));
        this.f29158e = new zabi(context, zabeVar, lock, looper, googleApiAvailabilityLight, map, clientSettings, map3, abstractClientBuilder, arrayList, new ccp(this, null));
        ArrayMap arrayMap = new ArrayMap();
        Iterator it2 = map2.keySet().iterator();
        while (it2.hasNext()) {
            arrayMap.put((Api.AnyClientKey) it2.next(), this.f29157d);
        }
        Iterator it3 = map.keySet().iterator();
        while (it3.hasNext()) {
            arrayMap.put((Api.AnyClientKey) it3.next(), this.f29158e);
        }
        this.f29159f = Collections.unmodifiableMap(arrayMap);
    }

    /* renamed from: e */
    public static boolean m22008e(@Nullable ConnectionResult connectionResult) {
        return connectionResult != null && connectionResult.isSuccess();
    }

    /* renamed from: g */
    public static C5053a m22010g(Context context, zabe zabeVar, Lock lock, Looper looper, GoogleApiAvailabilityLight googleApiAvailabilityLight, Map map, ClientSettings clientSettings, Map map2, Api.AbstractClientBuilder abstractClientBuilder, ArrayList arrayList) {
        ArrayMap arrayMap = new ArrayMap();
        ArrayMap arrayMap2 = new ArrayMap();
        Api.Client client = null;
        for (Map.Entry entry : map.entrySet()) {
            Api.Client client2 = (Api.Client) entry.getValue();
            if (true == client2.providesSignIn()) {
                client = client2;
            }
            if (client2.requiresSignIn()) {
                arrayMap.put((Api.AnyClientKey) entry.getKey(), client2);
            } else {
                arrayMap2.put((Api.AnyClientKey) entry.getKey(), client2);
            }
        }
        Preconditions.checkState(!arrayMap.isEmpty(), "CompositeGoogleApiClient should not be used without any APIs that require sign-in.");
        ArrayMap arrayMap3 = new ArrayMap();
        ArrayMap arrayMap4 = new ArrayMap();
        for (Api api : map2.keySet()) {
            Api.AnyClientKey zab = api.zab();
            if (arrayMap.containsKey(zab)) {
                arrayMap3.put(api, (Boolean) map2.get(api));
            } else {
                if (!arrayMap2.containsKey(zab)) {
                    throw new IllegalStateException("Each API in the isOptionalMap must have a corresponding client in the clients map.");
                }
                arrayMap4.put(api, (Boolean) map2.get(api));
            }
        }
        ArrayList arrayList2 = new ArrayList();
        ArrayList arrayList3 = new ArrayList();
        int size = arrayList.size();
        for (int i = 0; i < size; i++) {
            zat zatVar = (zat) arrayList.get(i);
            if (arrayMap3.containsKey(zatVar.zaa)) {
                arrayList2.add(zatVar);
            } else {
                if (!arrayMap4.containsKey(zatVar.zaa)) {
                    throw new IllegalStateException("Each ClientCallbacks must have a corresponding API in the isOptionalMap");
                }
                arrayList3.add(zatVar);
            }
        }
        return new C5053a(context, zabeVar, lock, looper, googleApiAvailabilityLight, arrayMap, arrayMap2, clientSettings, abstractClientBuilder, client, arrayList2, arrayList3, arrayMap3, arrayMap4);
    }

    /* renamed from: n */
    public static /* bridge */ /* synthetic */ void m22017n(C5053a c5053a, int i, boolean z) {
        c5053a.f29155b.zac(i, z);
        c5053a.f29164k = null;
        c5053a.f29163j = null;
    }

    /* renamed from: o */
    public static /* bridge */ /* synthetic */ void m22018o(C5053a c5053a, Bundle bundle) {
        Bundle bundle2 = c5053a.f29162i;
        if (bundle2 == null) {
            c5053a.f29162i = bundle;
        } else if (bundle != null) {
            bundle2.putAll(bundle);
        }
    }

    /* renamed from: p */
    public static /* bridge */ /* synthetic */ void m22019p(C5053a c5053a) {
        ConnectionResult connectionResult;
        if (!m22008e(c5053a.f29163j)) {
            if (c5053a.f29163j != null && m22008e(c5053a.f29164k)) {
                c5053a.f29158e.zar();
                c5053a.m22021a((ConnectionResult) Preconditions.checkNotNull(c5053a.f29163j));
                return;
            }
            ConnectionResult connectionResult2 = c5053a.f29163j;
            if (connectionResult2 == null || (connectionResult = c5053a.f29164k) == null) {
                return;
            }
            if (c5053a.f29158e.f29243m < c5053a.f29157d.f29243m) {
                connectionResult2 = connectionResult;
            }
            c5053a.m22021a(connectionResult2);
            return;
        }
        if (!m22008e(c5053a.f29164k) && !c5053a.m22023c()) {
            ConnectionResult connectionResult3 = c5053a.f29164k;
            if (connectionResult3 != null) {
                if (c5053a.f29167n == 1) {
                    c5053a.m22022b();
                    return;
                } else {
                    c5053a.m22021a(connectionResult3);
                    c5053a.f29157d.zar();
                    return;
                }
            }
            return;
        }
        int i = c5053a.f29167n;
        if (i != 1) {
            if (i != 2) {
                Log.wtf("CompositeGAC", "Attempted to call success callbacks in CONNECTION_MODE_NONE. Callbacks should be disabled via GmsClientSupervisor", new AssertionError());
                c5053a.f29167n = 0;
            }
            ((zabe) Preconditions.checkNotNull(c5053a.f29155b)).zab(c5053a.f29162i);
        }
        c5053a.m22022b();
        c5053a.f29167n = 0;
    }

    @GuardedBy(DevicePushAction.LOCK_DEVICE)
    /* renamed from: a */
    public final void m22021a(ConnectionResult connectionResult) {
        int i = this.f29167n;
        if (i != 1) {
            if (i != 2) {
                Log.wtf("CompositeGAC", "Attempted to call failure callbacks in CONNECTION_MODE_NONE. Callbacks should be disabled via GmsClientSupervisor", new Exception());
                this.f29167n = 0;
            }
            this.f29155b.zaa(connectionResult);
        }
        m22022b();
        this.f29167n = 0;
    }

    @GuardedBy(DevicePushAction.LOCK_DEVICE)
    /* renamed from: b */
    public final void m22022b() {
        Iterator it2 = this.f29160g.iterator();
        while (it2.hasNext()) {
            ((SignInConnectionListener) it2.next()).onComplete();
        }
        this.f29160g.clear();
    }

    @GuardedBy(DevicePushAction.LOCK_DEVICE)
    /* renamed from: c */
    public final boolean m22023c() {
        ConnectionResult connectionResult = this.f29164k;
        return connectionResult != null && connectionResult.getErrorCode() == 4;
    }

    /* renamed from: d */
    public final boolean m22024d(BaseImplementation.ApiMethodImpl apiMethodImpl) {
        zabi zabiVar = (zabi) this.f29159f.get(apiMethodImpl.getClientKey());
        Preconditions.checkNotNull(zabiVar, "GoogleApiClient is not configured to use the API required for this call.");
        return zabiVar.equals(this.f29158e);
    }

    @Nullable
    /* renamed from: r */
    public final PendingIntent m22025r() {
        Api.Client client = this.f29161h;
        if (client == null) {
            return null;
        }
        return PendingIntent.getActivity(this.f29154a, System.identityHashCode(this.f29155b), client.getSignInIntent(), com.google.android.gms.internal.base.zap.zaa | 134217728);
    }

    @Override // com.google.android.gms.common.api.internal.zaca
    @GuardedBy(DevicePushAction.LOCK_DEVICE)
    public final ConnectionResult zab() {
        throw new UnsupportedOperationException();
    }

    @Override // com.google.android.gms.common.api.internal.zaca
    @GuardedBy(DevicePushAction.LOCK_DEVICE)
    public final ConnectionResult zac(long j, @NonNull TimeUnit timeUnit) {
        throw new UnsupportedOperationException();
    }

    @Override // com.google.android.gms.common.api.internal.zaca
    @Nullable
    @GuardedBy(DevicePushAction.LOCK_DEVICE)
    public final ConnectionResult zad(@NonNull Api api) {
        return Objects.equal(this.f29159f.get(api.zab()), this.f29158e) ? m22023c() ? new ConnectionResult(4, m22025r()) : this.f29158e.zad(api) : this.f29157d.zad(api);
    }

    @Override // com.google.android.gms.common.api.internal.zaca
    @GuardedBy(DevicePushAction.LOCK_DEVICE)
    public final BaseImplementation.ApiMethodImpl zae(@NonNull BaseImplementation.ApiMethodImpl apiMethodImpl) {
        if (!m22024d(apiMethodImpl)) {
            this.f29157d.zae(apiMethodImpl);
            return apiMethodImpl;
        }
        if (m22023c()) {
            apiMethodImpl.setFailedResult(new Status(4, (String) null, m22025r()));
            return apiMethodImpl;
        }
        this.f29158e.zae(apiMethodImpl);
        return apiMethodImpl;
    }

    @Override // com.google.android.gms.common.api.internal.zaca
    @GuardedBy(DevicePushAction.LOCK_DEVICE)
    public final BaseImplementation.ApiMethodImpl zaf(@NonNull BaseImplementation.ApiMethodImpl apiMethodImpl) {
        if (!m22024d(apiMethodImpl)) {
            return this.f29157d.zaf(apiMethodImpl);
        }
        if (!m22023c()) {
            return this.f29158e.zaf(apiMethodImpl);
        }
        apiMethodImpl.setFailedResult(new Status(4, (String) null, m22025r()));
        return apiMethodImpl;
    }

    @Override // com.google.android.gms.common.api.internal.zaca
    @GuardedBy(DevicePushAction.LOCK_DEVICE)
    public final void zaq() {
        this.f29167n = 2;
        this.f29165l = false;
        this.f29164k = null;
        this.f29163j = null;
        this.f29157d.zaq();
        this.f29158e.zaq();
    }

    @Override // com.google.android.gms.common.api.internal.zaca
    @GuardedBy(DevicePushAction.LOCK_DEVICE)
    public final void zar() {
        this.f29164k = null;
        this.f29163j = null;
        this.f29167n = 0;
        this.f29157d.zar();
        this.f29158e.zar();
        m22022b();
    }

    @Override // com.google.android.gms.common.api.internal.zaca
    public final void zas(String str, @Nullable FileDescriptor fileDescriptor, PrintWriter printWriter, @Nullable String[] strArr) {
        printWriter.append((CharSequence) str).append("authClient").println(":");
        this.f29158e.zas(String.valueOf(str).concat(GlideException.C1935a.f14609h), fileDescriptor, printWriter, strArr);
        printWriter.append((CharSequence) str).append("anonClient").println(":");
        this.f29157d.zas(String.valueOf(str).concat(GlideException.C1935a.f14609h), fileDescriptor, printWriter, strArr);
    }

    @Override // com.google.android.gms.common.api.internal.zaca
    @GuardedBy(DevicePushAction.LOCK_DEVICE)
    public final void zat() {
        this.f29157d.zat();
        this.f29158e.zat();
    }

    @Override // com.google.android.gms.common.api.internal.zaca
    public final void zau() {
        this.f29166m.lock();
        try {
            boolean zax = zax();
            this.f29158e.zar();
            this.f29164k = new ConnectionResult(4);
            if (zax) {
                new com.google.android.gms.internal.base.zau(this.f29156c).post(new ybp(this));
            } else {
                m22022b();
            }
        } finally {
            this.f29166m.unlock();
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:10:0x001f, code lost:
    
        if (r3.f29167n == 1) goto L11;
     */
    @Override // com.google.android.gms.common.api.internal.zaca
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final boolean zaw() {
        /*
            r3 = this;
            java.util.concurrent.locks.Lock r0 = r3.f29166m
            r0.lock()
            com.google.android.gms.common.api.internal.zabi r0 = r3.f29157d     // Catch: java.lang.Throwable -> L28
            boolean r0 = r0.zaw()     // Catch: java.lang.Throwable -> L28
            r1 = 0
            if (r0 == 0) goto L22
            com.google.android.gms.common.api.internal.zabi r0 = r3.f29158e     // Catch: java.lang.Throwable -> L28
            boolean r0 = r0.zaw()     // Catch: java.lang.Throwable -> L28
            r2 = 1
            if (r0 != 0) goto L21
            boolean r0 = r3.m22023c()     // Catch: java.lang.Throwable -> L28
            if (r0 != 0) goto L21
            int r0 = r3.f29167n     // Catch: java.lang.Throwable -> L28
            if (r0 != r2) goto L22
        L21:
            r1 = r2
        L22:
            java.util.concurrent.locks.Lock r3 = r3.f29166m
            r3.unlock()
            return r1
        L28:
            r0 = move-exception
            java.util.concurrent.locks.Lock r3 = r3.f29166m
            r3.unlock()
            throw r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.common.api.internal.C5053a.zaw():boolean");
    }

    @Override // com.google.android.gms.common.api.internal.zaca
    public final boolean zax() {
        this.f29166m.lock();
        try {
            return this.f29167n == 2;
        } finally {
            this.f29166m.unlock();
        }
    }

    @Override // com.google.android.gms.common.api.internal.zaca
    public final boolean zay(SignInConnectionListener signInConnectionListener) {
        this.f29166m.lock();
        try {
            boolean z = false;
            if ((zax() || zaw()) && !this.f29158e.zaw()) {
                this.f29160g.add(signInConnectionListener);
                z = true;
                if (this.f29167n == 0) {
                    this.f29167n = 1;
                }
                this.f29164k = null;
                this.f29158e.zaq();
            }
            return z;
        } finally {
            this.f29166m.unlock();
        }
    }
}
