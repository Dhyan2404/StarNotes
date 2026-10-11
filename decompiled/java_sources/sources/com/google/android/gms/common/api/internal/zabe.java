package com.google.android.gms.common.api.internal;

import android.app.Activity;
import android.content.Context;
import android.os.Bundle;
import android.os.Looper;
import android.util.Log;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.VisibleForTesting;
import androidx.fragment.app.FragmentActivity;
import com.google.android.gms.common.ConnectionResult;
import com.google.android.gms.common.GoogleApiAvailability;
import com.google.android.gms.common.api.Api;
import com.google.android.gms.common.api.GoogleApiClient;
import com.google.android.gms.common.api.PendingResult;
import com.google.android.gms.common.api.Result;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.api.internal.BaseImplementation;
import com.google.android.gms.common.internal.ClientSettings;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.common.internal.service.Common;
import com.google.android.gms.common.internal.zaj;
import com.google.android.gms.common.util.ClientLibraryUtils;
import com.google.errorprone.annotations.ResultIgnorabilityUnspecified;
import com.google.errorprone.annotations.concurrent.GuardedBy;
import com.onyx.android.sdk.data.account.bean.DevicePushAction;
import com.onyx.android.sdk.hwr.data.constant.HwrRecognizerConstant;
import com.onyx.android.sdk.universal.editor.action.backup.ExecuteAutoBackupTaskAction;
import com.sunia.HTREnginev2.r9p;
import com.sunia.HTREnginev2.s9p;
import com.sunia.HTREnginev2.w9p;
import com.sunia.HTREnginev2.x9p;
import com.sunia.HTREnginev2.y9p;
import com.sunia.HTREnginev2.z9p;
import java.io.FileDescriptor;
import java.io.PrintWriter;
import java.io.StringWriter;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;
import java.util.Map;
import java.util.Queue;
import java.util.Set;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicReference;
import java.util.concurrent.locks.Lock;

/* loaded from: classes5.dex */
public final class zabe extends GoogleApiClient implements zabz {

    /* renamed from: b */
    public final Lock f29207b;

    /* renamed from: c */
    public final com.google.android.gms.common.internal.zak f29208c;

    /* renamed from: e */
    public final int f29210e;

    /* renamed from: f */
    public final Context f29211f;

    /* renamed from: g */
    public final Looper f29212g;

    /* renamed from: i */
    public volatile boolean f29214i;

    /* renamed from: j */
    public long f29215j;

    /* renamed from: k */
    public long f29216k;

    /* renamed from: l */
    public final y9p f29217l;

    /* renamed from: m */
    public final GoogleApiAvailability f29218m;

    /* renamed from: n */
    @Nullable
    @VisibleForTesting
    public zabx f29219n;

    /* renamed from: o */
    public final Map f29220o;

    /* renamed from: p */
    public Set f29221p;

    /* renamed from: q */
    public final ClientSettings f29222q;

    /* renamed from: r */
    public final Map f29223r;

    /* renamed from: s */
    public final Api.AbstractClientBuilder f29224s;

    /* renamed from: t */
    public final ListenerHolders f29225t;

    /* renamed from: u */
    public final ArrayList f29226u;

    /* renamed from: v */
    public Integer f29227v;

    /* renamed from: w */
    @Nullable
    public Set f29228w;

    /* renamed from: x */
    public final zadc f29229x;

    /* renamed from: y */
    public final zaj f29230y;

    /* renamed from: d */
    @Nullable
    public zaca f29209d = null;

    /* renamed from: h */
    @VisibleForTesting
    public final Queue f29213h = new LinkedList();

    public zabe(Context context, Lock lock, Looper looper, ClientSettings clientSettings, GoogleApiAvailability googleApiAvailability, Api.AbstractClientBuilder abstractClientBuilder, Map map, List list, List list2, Map map2, int i, int i2, ArrayList arrayList) {
        this.f29215j = true != ClientLibraryUtils.isPackageSide() ? ExecuteAutoBackupTaskAction.f48008l : 10000L;
        this.f29216k = 5000L;
        this.f29221p = new HashSet();
        this.f29225t = new ListenerHolders();
        this.f29227v = null;
        this.f29228w = null;
        r9p r9pVar = new r9p(this);
        this.f29230y = r9pVar;
        this.f29211f = context;
        this.f29207b = lock;
        this.f29208c = new com.google.android.gms.common.internal.zak(looper, r9pVar);
        this.f29212g = looper;
        this.f29217l = new y9p(this, looper);
        this.f29218m = googleApiAvailability;
        this.f29210e = i;
        if (i >= 0) {
            this.f29227v = Integer.valueOf(i2);
        }
        this.f29223r = map;
        this.f29220o = map2;
        this.f29226u = arrayList;
        this.f29229x = new zadc();
        Iterator it2 = list.iterator();
        while (it2.hasNext()) {
            this.f29208c.zaf((GoogleApiClient.ConnectionCallbacks) it2.next());
        }
        Iterator it3 = list2.iterator();
        while (it3.hasNext()) {
            this.f29208c.zag((GoogleApiClient.OnConnectionFailedListener) it3.next());
        }
        this.f29222q = clientSettings;
        this.f29224s = abstractClientBuilder;
    }

    /* renamed from: d */
    public static String m22067d(int i) {
        return i != 1 ? i != 2 ? i != 3 ? HwrRecognizerConstant.RECOGNIZER_UNKNOWN : "SIGN_IN_MODE_NONE" : "SIGN_IN_MODE_OPTIONAL" : "SIGN_IN_MODE_REQUIRED";
    }

    /* renamed from: f */
    public static /* bridge */ /* synthetic */ void m22069f(zabe zabeVar) {
        zabeVar.f29207b.lock();
        try {
            if (zabeVar.f29214i) {
                zabeVar.m22075k();
            }
        } finally {
            zabeVar.f29207b.unlock();
        }
    }

    /* renamed from: g */
    public static /* bridge */ /* synthetic */ void m22070g(zabe zabeVar) {
        zabeVar.f29207b.lock();
        try {
            if (zabeVar.m22072h()) {
                zabeVar.m22075k();
            }
        } finally {
            zabeVar.f29207b.unlock();
        }
    }

    public static int zad(Iterable iterable, boolean z) {
        Iterator it2 = iterable.iterator();
        boolean z2 = false;
        boolean z3 = false;
        while (it2.hasNext()) {
            Api.Client client = (Api.Client) it2.next();
            z2 |= client.requiresSignIn();
            z3 |= client.providesSignIn();
        }
        if (z2) {
            return (z3 && z) ? 2 : 1;
        }
        return 3;
    }

    @Override // com.google.android.gms.common.api.GoogleApiClient
    @ResultIgnorabilityUnspecified
    public final ConnectionResult blockingConnect() {
        boolean z = true;
        Preconditions.checkState(Looper.myLooper() != Looper.getMainLooper(), "blockingConnect must not be called on the UI thread");
        this.f29207b.lock();
        try {
            if (this.f29210e >= 0) {
                if (this.f29227v == null) {
                    z = false;
                }
                Preconditions.checkState(z, "Sign-in mode should have been set explicitly by auto-manage.");
            } else {
                Integer num = this.f29227v;
                if (num == null) {
                    this.f29227v = Integer.valueOf(zad(this.f29220o.values(), false));
                } else if (num.intValue() == 2) {
                    throw new IllegalStateException("Cannot call blockingConnect() when sign-in mode is set to SIGN_IN_MODE_OPTIONAL. Call connect(SIGN_IN_MODE_OPTIONAL) instead.");
                }
            }
            m22073i(((Integer) Preconditions.checkNotNull(this.f29227v)).intValue());
            this.f29208c.zab();
            return ((zaca) Preconditions.checkNotNull(this.f29209d)).zab();
        } finally {
            this.f29207b.unlock();
        }
    }

    /* renamed from: c */
    public final String m22071c() {
        StringWriter stringWriter = new StringWriter();
        dump("", null, new PrintWriter(stringWriter), null);
        return stringWriter.toString();
    }

    @Override // com.google.android.gms.common.api.GoogleApiClient
    public final PendingResult<Status> clearDefaultAccountAndReconnect() {
        Preconditions.checkState(isConnected(), "GoogleApiClient is not connected yet.");
        Integer num = this.f29227v;
        boolean z = true;
        if (num != null && num.intValue() == 2) {
            z = false;
        }
        Preconditions.checkState(z, "Cannot use clearDefaultAccountAndReconnect with GOOGLE_SIGN_IN_API");
        StatusPendingResult statusPendingResult = new StatusPendingResult(this);
        if (this.f29220o.containsKey(Common.CLIENT_KEY)) {
            m22074j(this, statusPendingResult, false);
        } else {
            AtomicReference atomicReference = new AtomicReference();
            s9p s9pVar = new s9p(this, atomicReference, statusPendingResult);
            w9p w9pVar = new w9p(this, statusPendingResult);
            GoogleApiClient.Builder builder = new GoogleApiClient.Builder(this.f29211f);
            builder.addApi(Common.API);
            builder.addConnectionCallbacks(s9pVar);
            builder.addOnConnectionFailedListener(w9pVar);
            builder.setHandler(this.f29217l);
            GoogleApiClient build = builder.build();
            atomicReference.set(build);
            build.connect();
        }
        return statusPendingResult;
    }

    @Override // com.google.android.gms.common.api.GoogleApiClient
    public final void connect() {
        this.f29207b.lock();
        try {
            int i = 2;
            boolean z = false;
            if (this.f29210e >= 0) {
                Preconditions.checkState(this.f29227v != null, "Sign-in mode should have been set explicitly by auto-manage.");
            } else {
                Integer num = this.f29227v;
                if (num == null) {
                    this.f29227v = Integer.valueOf(zad(this.f29220o.values(), false));
                } else if (num.intValue() == 2) {
                    throw new IllegalStateException("Cannot call connect() when SignInMode is set to SIGN_IN_MODE_OPTIONAL. Call connect(SIGN_IN_MODE_OPTIONAL) instead.");
                }
            }
            int intValue = ((Integer) Preconditions.checkNotNull(this.f29227v)).intValue();
            this.f29207b.lock();
            if (intValue == 3 || intValue == 1) {
                i = intValue;
            } else if (intValue != 2) {
                i = intValue;
                Preconditions.checkArgument(z, "Illegal sign-in mode: " + i);
                m22073i(i);
                m22075k();
                this.f29207b.unlock();
            }
            z = true;
            Preconditions.checkArgument(z, "Illegal sign-in mode: " + i);
            m22073i(i);
            m22075k();
            this.f29207b.unlock();
        } catch (Throwable th) {
            throw th;
        } finally {
            this.f29207b.unlock();
        }
    }

    @Override // com.google.android.gms.common.api.GoogleApiClient
    public final void disconnect() {
        this.f29207b.lock();
        try {
            this.f29229x.zab();
            zaca zacaVar = this.f29209d;
            if (zacaVar != null) {
                zacaVar.zar();
            }
            this.f29225t.zab();
            for (BaseImplementation.ApiMethodImpl apiMethodImpl : this.f29213h) {
                apiMethodImpl.zan(null);
                apiMethodImpl.cancel();
            }
            this.f29213h.clear();
            if (this.f29209d != null) {
                m22072h();
                this.f29208c.zaa();
            }
        } finally {
            this.f29207b.unlock();
        }
    }

    @Override // com.google.android.gms.common.api.GoogleApiClient
    public final void dump(String str, @Nullable FileDescriptor fileDescriptor, PrintWriter printWriter, @Nullable String[] strArr) {
        printWriter.append((CharSequence) str).append("mContext=").println(this.f29211f);
        printWriter.append((CharSequence) str).append("mResuming=").print(this.f29214i);
        printWriter.append(" mWorkQueue.size()=").print(this.f29213h.size());
        printWriter.append(" mUnconsumedApiCalls.size()=").println(this.f29229x.f29283a.size());
        zaca zacaVar = this.f29209d;
        if (zacaVar != null) {
            zacaVar.zas(str, fileDescriptor, printWriter, strArr);
        }
    }

    @Override // com.google.android.gms.common.api.GoogleApiClient
    @ResultIgnorabilityUnspecified
    public final <A extends Api.AnyClient, R extends Result, T extends BaseImplementation.ApiMethodImpl<R, A>> T enqueue(@NonNull T t) {
        Api<?> api = t.getApi();
        Preconditions.checkArgument(this.f29220o.containsKey(t.getClientKey()), "GoogleApiClient is not configured to use " + (api != null ? api.zad() : "the API") + " required for this call.");
        this.f29207b.lock();
        try {
            zaca zacaVar = this.f29209d;
            if (zacaVar == null) {
                this.f29213h.add(t);
            } else {
                t = (T) zacaVar.zae(t);
            }
            return t;
        } finally {
            this.f29207b.unlock();
        }
    }

    @Override // com.google.android.gms.common.api.GoogleApiClient
    @ResultIgnorabilityUnspecified
    public final <A extends Api.AnyClient, T extends BaseImplementation.ApiMethodImpl<? extends Result, A>> T execute(@NonNull T t) {
        Map map = this.f29220o;
        Api<?> api = t.getApi();
        Preconditions.checkArgument(map.containsKey(t.getClientKey()), "GoogleApiClient is not configured to use " + (api != null ? api.zad() : "the API") + " required for this call.");
        this.f29207b.lock();
        try {
            zaca zacaVar = this.f29209d;
            if (zacaVar == null) {
                throw new IllegalStateException("GoogleApiClient is not connected yet.");
            }
            if (this.f29214i) {
                this.f29213h.add(t);
                while (!this.f29213h.isEmpty()) {
                    BaseImplementation.ApiMethodImpl apiMethodImpl = (BaseImplementation.ApiMethodImpl) this.f29213h.remove();
                    this.f29229x.m22124a(apiMethodImpl);
                    apiMethodImpl.setFailedResult(Status.RESULT_INTERNAL_ERROR);
                }
            } else {
                t = (T) zacaVar.zaf(t);
            }
            return t;
        } finally {
            this.f29207b.unlock();
        }
    }

    @Override // com.google.android.gms.common.api.GoogleApiClient
    @NonNull
    public final <C extends Api.Client> C getClient(@NonNull Api.AnyClientKey<C> anyClientKey) {
        C c = (C) this.f29220o.get(anyClientKey);
        Preconditions.checkNotNull(c, "Appropriate Api was not requested.");
        return c;
    }

    @Override // com.google.android.gms.common.api.GoogleApiClient
    @NonNull
    public final ConnectionResult getConnectionResult(@NonNull Api<?> api) {
        ConnectionResult connectionResult;
        this.f29207b.lock();
        try {
            if (!isConnected() && !this.f29214i) {
                throw new IllegalStateException("Cannot invoke getConnectionResult unless GoogleApiClient is connected");
            }
            if (!this.f29220o.containsKey(api.zab())) {
                throw new IllegalArgumentException(api.zad() + " was never registered with GoogleApiClient");
            }
            ConnectionResult zad = ((zaca) Preconditions.checkNotNull(this.f29209d)).zad(api);
            if (zad != null) {
                return zad;
            }
            if (this.f29214i) {
                connectionResult = ConnectionResult.RESULT_SUCCESS;
            } else {
                Log.w("GoogleApiClientImpl", m22071c());
                Log.wtf("GoogleApiClientImpl", api.zad() + " requested in getConnectionResult is not connected but is not present in the failed  connections map", new Exception());
                connectionResult = new ConnectionResult(8, null);
            }
            return connectionResult;
        } finally {
            this.f29207b.unlock();
        }
    }

    @Override // com.google.android.gms.common.api.GoogleApiClient
    public final Context getContext() {
        return this.f29211f;
    }

    @Override // com.google.android.gms.common.api.GoogleApiClient
    public final Looper getLooper() {
        return this.f29212g;
    }

    @ResultIgnorabilityUnspecified
    @GuardedBy(DevicePushAction.LOCK_DEVICE)
    /* renamed from: h */
    public final boolean m22072h() {
        if (!this.f29214i) {
            return false;
        }
        this.f29214i = false;
        this.f29217l.removeMessages(2);
        this.f29217l.removeMessages(1);
        zabx zabxVar = this.f29219n;
        if (zabxVar != null) {
            zabxVar.zab();
            this.f29219n = null;
        }
        return true;
    }

    @Override // com.google.android.gms.common.api.GoogleApiClient
    public final boolean hasApi(@NonNull Api<?> api) {
        return this.f29220o.containsKey(api.zab());
    }

    @Override // com.google.android.gms.common.api.GoogleApiClient
    public final boolean hasConnectedApi(@NonNull Api<?> api) {
        Api.Client client;
        return isConnected() && (client = (Api.Client) this.f29220o.get(api.zab())) != null && client.isConnected();
    }

    /* renamed from: i */
    public final void m22073i(int i) {
        Integer num = this.f29227v;
        if (num == null) {
            this.f29227v = Integer.valueOf(i);
        } else if (num.intValue() != i) {
            throw new IllegalStateException("Cannot use sign-in mode: " + m22067d(i) + ". Mode was already set to " + m22067d(this.f29227v.intValue()));
        }
        if (this.f29209d != null) {
            return;
        }
        boolean z = false;
        boolean z2 = false;
        for (Api.Client client : this.f29220o.values()) {
            z |= client.requiresSignIn();
            z2 |= client.providesSignIn();
        }
        int intValue = this.f29227v.intValue();
        if (intValue == 1) {
            if (!z) {
                throw new IllegalStateException("SIGN_IN_MODE_REQUIRED cannot be used on a GoogleApiClient that does not contain any authenticated APIs. Use connect() instead.");
            }
            if (z2) {
                throw new IllegalStateException("Cannot use SIGN_IN_MODE_REQUIRED with GOOGLE_SIGN_IN_API. Use connect(SIGN_IN_MODE_OPTIONAL) instead.");
            }
        } else if (intValue == 2 && z) {
            this.f29209d = C5053a.m22010g(this.f29211f, this, this.f29207b, this.f29212g, this.f29218m, this.f29220o, this.f29222q, this.f29223r, this.f29224s, this.f29226u);
            return;
        }
        this.f29209d = new zabi(this.f29211f, this, this.f29207b, this.f29212g, this.f29218m, this.f29220o, this.f29222q, this.f29223r, this.f29224s, this.f29226u, this);
    }

    @Override // com.google.android.gms.common.api.GoogleApiClient
    public final boolean isConnected() {
        zaca zacaVar = this.f29209d;
        return zacaVar != null && zacaVar.zaw();
    }

    @Override // com.google.android.gms.common.api.GoogleApiClient
    public final boolean isConnecting() {
        zaca zacaVar = this.f29209d;
        return zacaVar != null && zacaVar.zax();
    }

    @Override // com.google.android.gms.common.api.GoogleApiClient
    public final boolean isConnectionCallbacksRegistered(@NonNull GoogleApiClient.ConnectionCallbacks connectionCallbacks) {
        return this.f29208c.zaj(connectionCallbacks);
    }

    @Override // com.google.android.gms.common.api.GoogleApiClient
    public final boolean isConnectionFailedListenerRegistered(@NonNull GoogleApiClient.OnConnectionFailedListener onConnectionFailedListener) {
        return this.f29208c.zak(onConnectionFailedListener);
    }

    /* renamed from: j */
    public final void m22074j(GoogleApiClient googleApiClient, StatusPendingResult statusPendingResult, boolean z) {
        Common.zaa.zaa(googleApiClient).setResultCallback(new x9p(this, statusPendingResult, z, googleApiClient));
    }

    @GuardedBy(DevicePushAction.LOCK_DEVICE)
    /* renamed from: k */
    public final void m22075k() {
        this.f29208c.zab();
        ((zaca) Preconditions.checkNotNull(this.f29209d)).zaq();
    }

    @Override // com.google.android.gms.common.api.GoogleApiClient
    public final boolean maybeSignIn(SignInConnectionListener signInConnectionListener) {
        zaca zacaVar = this.f29209d;
        return zacaVar != null && zacaVar.zay(signInConnectionListener);
    }

    @Override // com.google.android.gms.common.api.GoogleApiClient
    public final void maybeSignOut() {
        zaca zacaVar = this.f29209d;
        if (zacaVar != null) {
            zacaVar.zau();
        }
    }

    @Override // com.google.android.gms.common.api.GoogleApiClient
    public final void reconnect() {
        disconnect();
        connect();
    }

    @Override // com.google.android.gms.common.api.GoogleApiClient
    public final void registerConnectionCallbacks(@NonNull GoogleApiClient.ConnectionCallbacks connectionCallbacks) {
        this.f29208c.zaf(connectionCallbacks);
    }

    @Override // com.google.android.gms.common.api.GoogleApiClient
    public final void registerConnectionFailedListener(@NonNull GoogleApiClient.OnConnectionFailedListener onConnectionFailedListener) {
        this.f29208c.zag(onConnectionFailedListener);
    }

    @Override // com.google.android.gms.common.api.GoogleApiClient
    public final <L> ListenerHolder<L> registerListener(@NonNull L l) {
        this.f29207b.lock();
        try {
            return this.f29225t.zaa(l, this.f29212g, "NO_TYPE");
        } finally {
            this.f29207b.unlock();
        }
    }

    @Override // com.google.android.gms.common.api.GoogleApiClient
    public final void stopAutoManage(@NonNull FragmentActivity fragmentActivity) {
        LifecycleActivity lifecycleActivity = new LifecycleActivity((Activity) fragmentActivity);
        if (this.f29210e < 0) {
            throw new IllegalStateException("Called stopAutoManage but automatic lifecycle management is not enabled.");
        }
        zak.zaa(lifecycleActivity).zae(this.f29210e);
    }

    @Override // com.google.android.gms.common.api.GoogleApiClient
    public final void unregisterConnectionCallbacks(@NonNull GoogleApiClient.ConnectionCallbacks connectionCallbacks) {
        this.f29208c.zah(connectionCallbacks);
    }

    @Override // com.google.android.gms.common.api.GoogleApiClient
    public final void unregisterConnectionFailedListener(@NonNull GoogleApiClient.OnConnectionFailedListener onConnectionFailedListener) {
        this.f29208c.zai(onConnectionFailedListener);
    }

    @Override // com.google.android.gms.common.api.internal.zabz
    @GuardedBy(DevicePushAction.LOCK_DEVICE)
    public final void zaa(ConnectionResult connectionResult) {
        if (!this.f29218m.isPlayServicesPossiblyUpdating(this.f29211f, connectionResult.getErrorCode())) {
            m22072h();
        }
        if (this.f29214i) {
            return;
        }
        this.f29208c.zac(connectionResult);
        this.f29208c.zaa();
    }

    @Override // com.google.android.gms.common.api.internal.zabz
    @GuardedBy(DevicePushAction.LOCK_DEVICE)
    public final void zab(@Nullable Bundle bundle) {
        while (!this.f29213h.isEmpty()) {
            execute((BaseImplementation.ApiMethodImpl) this.f29213h.remove());
        }
        this.f29208c.zad(bundle);
    }

    @Override // com.google.android.gms.common.api.internal.zabz
    @GuardedBy(DevicePushAction.LOCK_DEVICE)
    public final void zac(int i, boolean z) {
        if (i == 1) {
            if (!z && !this.f29214i) {
                this.f29214i = true;
                if (this.f29219n == null && !ClientLibraryUtils.isPackageSide()) {
                    try {
                        this.f29219n = this.f29218m.zac(this.f29211f.getApplicationContext(), new z9p(this));
                    } catch (SecurityException unused) {
                    }
                }
                y9p y9pVar = this.f29217l;
                y9pVar.sendMessageDelayed(y9pVar.obtainMessage(1), this.f29215j);
                y9p y9pVar2 = this.f29217l;
                y9pVar2.sendMessageDelayed(y9pVar2.obtainMessage(2), this.f29216k);
            }
            i = 1;
        }
        for (BasePendingResult basePendingResult : (BasePendingResult[]) this.f29229x.f29283a.toArray(new BasePendingResult[0])) {
            basePendingResult.forceFailureUnlessReady(zadc.zaa);
        }
        this.f29208c.zae(i);
        this.f29208c.zaa();
        if (i == 2) {
            m22075k();
        }
    }

    @Override // com.google.android.gms.common.api.GoogleApiClient
    public final void zao(zada zadaVar) {
        this.f29207b.lock();
        try {
            if (this.f29228w == null) {
                this.f29228w = new HashSet();
            }
            this.f29228w.add(zadaVar);
        } finally {
            this.f29207b.unlock();
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:24:0x0041, code lost:
    
        if (r3 == false) goto L19;
     */
    /* JADX WARN: Code restructure failed: missing block: B:29:0x0057, code lost:
    
        r3 = move-exception;
     */
    /* JADX WARN: Code restructure failed: missing block: B:31:0x005d, code lost:
    
        throw r3;
     */
    @Override // com.google.android.gms.common.api.GoogleApiClient
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void zap(com.google.android.gms.common.api.internal.zada r3) {
        /*
            r2 = this;
            java.util.concurrent.locks.Lock r0 = r2.f29207b
            r0.lock()
            java.util.Set r0 = r2.f29228w     // Catch: java.lang.Throwable -> L57
            java.lang.String r1 = "GoogleApiClientImpl"
            if (r0 != 0) goto L16
            java.lang.String r3 = "Attempted to remove pending transform when no transforms are registered."
            java.lang.Exception r0 = new java.lang.Exception     // Catch: java.lang.Throwable -> L57
            r0.<init>()     // Catch: java.lang.Throwable -> L57
            android.util.Log.wtf(r1, r3, r0)     // Catch: java.lang.Throwable -> L57
            goto L4a
        L16:
            boolean r3 = r0.remove(r3)     // Catch: java.lang.Throwable -> L57
            if (r3 != 0) goto L27
            java.lang.String r3 = "Failed to remove pending transform - this may lead to memory leaks!"
            java.lang.Exception r0 = new java.lang.Exception     // Catch: java.lang.Throwable -> L57
            r0.<init>()     // Catch: java.lang.Throwable -> L57
            android.util.Log.wtf(r1, r3, r0)     // Catch: java.lang.Throwable -> L57
            goto L4a
        L27:
            java.util.concurrent.locks.Lock r3 = r2.f29207b     // Catch: java.lang.Throwable -> L57
            r3.lock()     // Catch: java.lang.Throwable -> L57
            java.util.Set r3 = r2.f29228w     // Catch: java.lang.Throwable -> L50
            if (r3 != 0) goto L36
            java.util.concurrent.locks.Lock r3 = r2.f29207b     // Catch: java.lang.Throwable -> L57
            r3.unlock()     // Catch: java.lang.Throwable -> L57
            goto L43
        L36:
            boolean r3 = r3.isEmpty()     // Catch: java.lang.Throwable -> L50
            r3 = r3 ^ 1
            java.util.concurrent.locks.Lock r0 = r2.f29207b     // Catch: java.lang.Throwable -> L57
            r0.unlock()     // Catch: java.lang.Throwable -> L57
            if (r3 != 0) goto L4a
        L43:
            com.google.android.gms.common.api.internal.zaca r3 = r2.f29209d     // Catch: java.lang.Throwable -> L57
            if (r3 == 0) goto L4a
            r3.zat()     // Catch: java.lang.Throwable -> L57
        L4a:
            java.util.concurrent.locks.Lock r2 = r2.f29207b
            r2.unlock()
            return
        L50:
            r3 = move-exception
            java.util.concurrent.locks.Lock r0 = r2.f29207b     // Catch: java.lang.Throwable -> L57
            r0.unlock()     // Catch: java.lang.Throwable -> L57
            throw r3     // Catch: java.lang.Throwable -> L57
        L57:
            r3 = move-exception
            java.util.concurrent.locks.Lock r2 = r2.f29207b
            r2.unlock()
            throw r3
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.common.api.internal.zabe.zap(com.google.android.gms.common.api.internal.zada):void");
    }

    @Override // com.google.android.gms.common.api.GoogleApiClient
    public final ConnectionResult blockingConnect(long j, @NonNull TimeUnit timeUnit) {
        Preconditions.checkState(Looper.myLooper() != Looper.getMainLooper(), "blockingConnect must not be called on the UI thread");
        Preconditions.checkNotNull(timeUnit, "TimeUnit must not be null");
        this.f29207b.lock();
        try {
            Integer num = this.f29227v;
            if (num == null) {
                this.f29227v = Integer.valueOf(zad(this.f29220o.values(), false));
            } else if (num.intValue() == 2) {
                throw new IllegalStateException("Cannot call blockingConnect() when sign-in mode is set to SIGN_IN_MODE_OPTIONAL. Call connect(SIGN_IN_MODE_OPTIONAL) instead.");
            }
            m22073i(((Integer) Preconditions.checkNotNull(this.f29227v)).intValue());
            this.f29208c.zab();
            return ((zaca) Preconditions.checkNotNull(this.f29209d)).zac(j, timeUnit);
        } finally {
            this.f29207b.unlock();
        }
    }

    @Override // com.google.android.gms.common.api.GoogleApiClient
    public final void connect(int i) {
        this.f29207b.lock();
        boolean z = true;
        if (i != 3 && i != 1) {
            if (i == 2) {
                i = 2;
            } else {
                z = false;
            }
        }
        try {
            Preconditions.checkArgument(z, "Illegal sign-in mode: " + i);
            m22073i(i);
            m22075k();
        } finally {
            this.f29207b.unlock();
        }
    }
}
