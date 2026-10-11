package com.google.android.gms.common.api.internal;

import android.content.Context;
import android.os.Bundle;
import android.util.Log;
import androidx.annotation.Nullable;
import com.google.android.gms.common.ConnectionResult;
import com.google.android.gms.common.GoogleApiAvailabilityLight;
import com.google.android.gms.common.api.Api;
import com.google.android.gms.common.api.GoogleApiClient;
import com.google.android.gms.common.api.internal.BaseImplementation;
import com.google.android.gms.common.internal.ClientSettings;
import com.google.android.gms.common.internal.IAccountAccessor;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.common.internal.zav;
import com.google.errorprone.annotations.concurrent.GuardedBy;
import com.onyx.android.sdk.data.account.bean.DevicePushAction;
import com.sunia.HTREnginev2.h9p;
import com.sunia.HTREnginev2.i9p;
import com.sunia.HTREnginev2.l9p;
import com.sunia.HTREnginev2.m9p;
import com.sunia.HTREnginev2.p9p;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;
import java.util.concurrent.Future;
import java.util.concurrent.locks.Lock;

/* loaded from: classes5.dex */
public final class zaaw implements zabf {

    /* renamed from: a */
    public final zabi f29184a;

    /* renamed from: b */
    public final Lock f29185b;

    /* renamed from: c */
    public final Context f29186c;

    /* renamed from: d */
    public final GoogleApiAvailabilityLight f29187d;

    /* renamed from: e */
    @Nullable
    public ConnectionResult f29188e;

    /* renamed from: f */
    public int f29189f;

    /* renamed from: h */
    public int f29191h;

    /* renamed from: k */
    @Nullable
    public com.google.android.gms.signin.zae f29194k;

    /* renamed from: l */
    public boolean f29195l;

    /* renamed from: m */
    public boolean f29196m;

    /* renamed from: n */
    public boolean f29197n;

    /* renamed from: o */
    @Nullable
    public IAccountAccessor f29198o;

    /* renamed from: p */
    public boolean f29199p;

    /* renamed from: q */
    public boolean f29200q;

    /* renamed from: r */
    @Nullable
    public final ClientSettings f29201r;

    /* renamed from: s */
    public final Map f29202s;

    /* renamed from: t */
    @Nullable
    public final Api.AbstractClientBuilder f29203t;

    /* renamed from: g */
    public int f29190g = 0;

    /* renamed from: i */
    public final Bundle f29192i = new Bundle();

    /* renamed from: j */
    public final Set f29193j = new HashSet();

    /* renamed from: u */
    public final ArrayList f29204u = new ArrayList();

    public zaaw(zabi zabiVar, @Nullable ClientSettings clientSettings, Map map, GoogleApiAvailabilityLight googleApiAvailabilityLight, @Nullable Api.AbstractClientBuilder abstractClientBuilder, Lock lock, Context context) {
        this.f29184a = zabiVar;
        this.f29201r = clientSettings;
        this.f29202s = map;
        this.f29187d = googleApiAvailabilityLight;
        this.f29203t = abstractClientBuilder;
        this.f29185b = lock;
        this.f29186c = context;
    }

    /* renamed from: j */
    public static final String m22039j(int i) {
        return i != 0 ? "STEP_GETTING_REMOTE_SERVICE" : "STEP_SERVICE_BINDINGS_AND_SIGN_IN";
    }

    /* renamed from: q */
    public static /* bridge */ /* synthetic */ Set m22046q(zaaw zaawVar) {
        ClientSettings clientSettings = zaawVar.f29201r;
        if (clientSettings == null) {
            return Collections.emptySet();
        }
        HashSet hashSet = new HashSet(clientSettings.getRequiredScopes());
        Map zad = zaawVar.f29201r.zad();
        for (Api api : zad.keySet()) {
            zabi zabiVar = zaawVar.f29184a;
            if (!zabiVar.f29237g.containsKey(api.zab())) {
                hashSet.addAll(((com.google.android.gms.common.internal.zab) zad.get(api)).zaa);
            }
        }
        return hashSet;
    }

    /* renamed from: t */
    public static /* bridge */ /* synthetic */ void m22049t(zaaw zaawVar, com.google.android.gms.signin.internal.zak zakVar) {
        if (zaawVar.m22063g(0)) {
            ConnectionResult zaa = zakVar.zaa();
            if (!zaa.isSuccess()) {
                if (!zaawVar.m22065i(zaa)) {
                    zaawVar.m22060d(zaa);
                    return;
                } else {
                    zaawVar.m22057a();
                    zaawVar.m22062f();
                    return;
                }
            }
            zav zavVar = (zav) Preconditions.checkNotNull(zakVar.zab());
            ConnectionResult zaa2 = zavVar.zaa();
            if (!zaa2.isSuccess()) {
                String valueOf = String.valueOf(zaa2);
                Log.wtf("GACConnecting", "Sign-in succeeded with resolve account failure: ".concat(valueOf), new Exception());
                zaawVar.m22060d(zaa2);
                return;
            }
            zaawVar.f29197n = true;
            zaawVar.f29198o = (IAccountAccessor) Preconditions.checkNotNull(zavVar.zab());
            zaawVar.f29199p = zavVar.zac();
            zaawVar.f29200q = zavVar.zad();
            zaawVar.m22062f();
        }
    }

    /* renamed from: B */
    public final void m22056B() {
        ArrayList arrayList = this.f29204u;
        int size = arrayList.size();
        for (int i = 0; i < size; i++) {
            ((Future) arrayList.get(i)).cancel(true);
        }
        this.f29204u.clear();
    }

    @GuardedBy(DevicePushAction.LOCK_DEVICE)
    /* renamed from: a */
    public final void m22057a() {
        this.f29196m = false;
        this.f29184a.f29244n.f29221p = Collections.emptySet();
        for (Api.AnyClientKey anyClientKey : this.f29193j) {
            if (!this.f29184a.f29237g.containsKey(anyClientKey)) {
                zabi zabiVar = this.f29184a;
                zabiVar.f29237g.put(anyClientKey, new ConnectionResult(17, null));
            }
        }
    }

    @GuardedBy(DevicePushAction.LOCK_DEVICE)
    /* renamed from: b */
    public final void m22058b(boolean z) {
        com.google.android.gms.signin.zae zaeVar = this.f29194k;
        if (zaeVar != null) {
            if (zaeVar.isConnected() && z) {
                zaeVar.zaa();
            }
            zaeVar.disconnect();
            this.f29198o = null;
        }
    }

    @GuardedBy(DevicePushAction.LOCK_DEVICE)
    /* renamed from: c */
    public final void m22059c() {
        this.f29184a.m22078c();
        zabj.zaa().execute(new h9p(this));
        com.google.android.gms.signin.zae zaeVar = this.f29194k;
        if (zaeVar != null) {
            if (this.f29199p) {
                zaeVar.zac((IAccountAccessor) Preconditions.checkNotNull(this.f29198o), this.f29200q);
            }
            m22058b(false);
        }
        Iterator it2 = this.f29184a.f29237g.keySet().iterator();
        while (it2.hasNext()) {
            ((Api.Client) Preconditions.checkNotNull((Api.Client) this.f29184a.f29236f.get((Api.AnyClientKey) it2.next()))).disconnect();
        }
        this.f29184a.f29245o.zab(this.f29192i.isEmpty() ? null : this.f29192i);
    }

    @GuardedBy(DevicePushAction.LOCK_DEVICE)
    /* renamed from: d */
    public final void m22060d(ConnectionResult connectionResult) {
        m22056B();
        m22058b(!connectionResult.hasResolution());
        this.f29184a.m22080e(connectionResult);
        this.f29184a.f29245o.zaa(connectionResult);
    }

    @GuardedBy(DevicePushAction.LOCK_DEVICE)
    /* renamed from: e */
    public final void m22061e(ConnectionResult connectionResult, Api api, boolean z) {
        int priority = api.zac().getPriority();
        if ((!z || connectionResult.hasResolution() || this.f29187d.getErrorResolutionIntent(connectionResult.getErrorCode()) != null) && (this.f29188e == null || priority < this.f29189f)) {
            this.f29188e = connectionResult;
            this.f29189f = priority;
        }
        zabi zabiVar = this.f29184a;
        zabiVar.f29237g.put(api.zab(), connectionResult);
    }

    @GuardedBy(DevicePushAction.LOCK_DEVICE)
    /* renamed from: f */
    public final void m22062f() {
        if (this.f29191h != 0) {
            return;
        }
        if (!this.f29196m || this.f29197n) {
            ArrayList arrayList = new ArrayList();
            this.f29190g = 1;
            this.f29191h = this.f29184a.f29236f.size();
            for (Api.AnyClientKey anyClientKey : this.f29184a.f29236f.keySet()) {
                if (!this.f29184a.f29237g.containsKey(anyClientKey)) {
                    arrayList.add((Api.Client) this.f29184a.f29236f.get(anyClientKey));
                } else if (m22064h()) {
                    m22059c();
                }
            }
            if (arrayList.isEmpty()) {
                return;
            }
            this.f29204u.add(zabj.zaa().submit(new m9p(this, arrayList)));
        }
    }

    @GuardedBy(DevicePushAction.LOCK_DEVICE)
    /* renamed from: g */
    public final boolean m22063g(int i) {
        if (this.f29190g == i) {
            return true;
        }
        Log.w("GACConnecting", this.f29184a.f29244n.m22071c());
        Log.w("GACConnecting", "Unexpected callback in ".concat(toString()));
        Log.w("GACConnecting", "mRemainingConnections=" + this.f29191h);
        Log.e("GACConnecting", "GoogleApiClient connecting is in step " + m22039j(this.f29190g) + " but received callback for step " + m22039j(i), new Exception());
        m22060d(new ConnectionResult(8, null));
        return false;
    }

    @GuardedBy(DevicePushAction.LOCK_DEVICE)
    /* renamed from: h */
    public final boolean m22064h() {
        int i = this.f29191h - 1;
        this.f29191h = i;
        if (i > 0) {
            return false;
        }
        if (i < 0) {
            Log.w("GACConnecting", this.f29184a.f29244n.m22071c());
            Log.wtf("GACConnecting", "GoogleApiClient received too many callbacks for the given step. Clients may be in an unexpected state; GoogleApiClient will now disconnect.", new Exception());
            m22060d(new ConnectionResult(8, null));
            return false;
        }
        ConnectionResult connectionResult = this.f29188e;
        if (connectionResult == null) {
            return true;
        }
        this.f29184a.f29243m = this.f29189f;
        m22060d(connectionResult);
        return false;
    }

    @GuardedBy(DevicePushAction.LOCK_DEVICE)
    /* renamed from: i */
    public final boolean m22065i(ConnectionResult connectionResult) {
        return this.f29195l && !connectionResult.hasResolution();
    }

    @Override // com.google.android.gms.common.api.internal.zabf
    public final BaseImplementation.ApiMethodImpl zaa(BaseImplementation.ApiMethodImpl apiMethodImpl) {
        this.f29184a.f29244n.f29213h.add(apiMethodImpl);
        return apiMethodImpl;
    }

    @Override // com.google.android.gms.common.api.internal.zabf
    public final BaseImplementation.ApiMethodImpl zab(BaseImplementation.ApiMethodImpl apiMethodImpl) {
        throw new IllegalStateException("GoogleApiClient is not connected yet.");
    }

    /* JADX WARN: Type inference failed for: r0v13, types: [com.google.android.gms.common.api.Api$Client, com.google.android.gms.signin.zae] */
    @Override // com.google.android.gms.common.api.internal.zabf
    @GuardedBy(DevicePushAction.LOCK_DEVICE)
    public final void zad() {
        this.f29184a.f29237g.clear();
        this.f29196m = false;
        zaas zaasVar = null;
        this.f29188e = null;
        this.f29190g = 0;
        this.f29195l = true;
        this.f29197n = false;
        this.f29199p = false;
        HashMap hashMap = new HashMap();
        boolean z = false;
        for (Api api : this.f29202s.keySet()) {
            Api.Client client = (Api.Client) Preconditions.checkNotNull((Api.Client) this.f29184a.f29236f.get(api.zab()));
            z |= api.zac().getPriority() == 1;
            boolean booleanValue = ((Boolean) this.f29202s.get(api)).booleanValue();
            if (client.requiresSignIn()) {
                this.f29196m = true;
                if (booleanValue) {
                    this.f29193j.add(api.zab());
                } else {
                    this.f29195l = false;
                }
            }
            hashMap.put(client, new i9p(this, api, booleanValue));
        }
        if (z) {
            this.f29196m = false;
        }
        if (this.f29196m) {
            Preconditions.checkNotNull(this.f29201r);
            Preconditions.checkNotNull(this.f29203t);
            this.f29201r.zae(Integer.valueOf(System.identityHashCode(this.f29184a.f29244n)));
            p9p p9pVar = new p9p(this, zaasVar);
            Api.AbstractClientBuilder abstractClientBuilder = this.f29203t;
            Context context = this.f29186c;
            zabi zabiVar = this.f29184a;
            ClientSettings clientSettings = this.f29201r;
            this.f29194k = abstractClientBuilder.buildClient(context, zabiVar.f29244n.getLooper(), clientSettings, (ClientSettings) clientSettings.zaa(), (GoogleApiClient.ConnectionCallbacks) p9pVar, (GoogleApiClient.OnConnectionFailedListener) p9pVar);
        }
        this.f29191h = this.f29184a.f29236f.size();
        this.f29204u.add(zabj.zaa().submit(new l9p(this, hashMap)));
    }

    @Override // com.google.android.gms.common.api.internal.zabf
    public final void zae() {
    }

    @Override // com.google.android.gms.common.api.internal.zabf
    @GuardedBy(DevicePushAction.LOCK_DEVICE)
    public final void zag(@Nullable Bundle bundle) {
        if (m22063g(1)) {
            if (bundle != null) {
                this.f29192i.putAll(bundle);
            }
            if (m22064h()) {
                m22059c();
            }
        }
    }

    @Override // com.google.android.gms.common.api.internal.zabf
    @GuardedBy(DevicePushAction.LOCK_DEVICE)
    public final void zah(ConnectionResult connectionResult, Api api, boolean z) {
        if (m22063g(1)) {
            m22061e(connectionResult, api, z);
            if (m22064h()) {
                m22059c();
            }
        }
    }

    @Override // com.google.android.gms.common.api.internal.zabf
    @GuardedBy(DevicePushAction.LOCK_DEVICE)
    public final void zai(int i) {
        m22060d(new ConnectionResult(8, null));
    }

    @Override // com.google.android.gms.common.api.internal.zabf
    @GuardedBy(DevicePushAction.LOCK_DEVICE)
    public final boolean zaj() {
        m22056B();
        m22058b(true);
        this.f29184a.m22080e(null);
        return true;
    }
}
