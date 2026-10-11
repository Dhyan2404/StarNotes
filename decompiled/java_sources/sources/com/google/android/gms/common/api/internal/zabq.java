package com.google.android.gms.common.api.internal;

import android.content.Context;
import android.os.Bundle;
import android.os.DeadObjectException;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.os.RemoteException;
import android.util.Log;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.WorkerThread;
import androidx.collection.ArrayMap;
import com.google.android.gms.common.ConnectionResult;
import com.google.android.gms.common.Feature;
import com.google.android.gms.common.GoogleApiAvailability;
import com.google.android.gms.common.api.Api;
import com.google.android.gms.common.api.GoogleApi;
import com.google.android.gms.common.api.GoogleApiClient;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.api.UnsupportedApiCallException;
import com.google.android.gms.common.api.internal.ListenerHolder;
import com.google.android.gms.common.internal.Objects;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.common.util.ArrayUtils;
import com.google.android.gms.tasks.TaskCompletionSource;
import com.google.errorprone.annotations.ResultIgnorabilityUnspecified;
import com.onyx.android.sdk.universal.editor.action.backup.ExecuteAutoBackupTaskAction;
import com.sunia.HTREnginev2.cap;
import com.sunia.HTREnginev2.dap;
import com.sunia.HTREnginev2.fap;
import com.sunia.HTREnginev2.gap;
import com.sunia.HTREnginev2.iap;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;
import java.util.Map;
import java.util.Queue;
import java.util.Set;
import org.checkerframework.checker.initialization.qual.NotOnlyInitialized;

/* loaded from: classes5.dex */
public final class zabq implements GoogleApiClient.ConnectionCallbacks, GoogleApiClient.OnConnectionFailedListener, zau {

    /* renamed from: b */
    @NotOnlyInitialized
    public final Api.Client f29248b;

    /* renamed from: c */
    public final ApiKey f29249c;

    /* renamed from: d */
    public final zaad f29250d;

    /* renamed from: g */
    public final int f29253g;

    /* renamed from: h */
    @Nullable
    public final zact f29254h;

    /* renamed from: i */
    public boolean f29255i;

    /* renamed from: m */
    public final /* synthetic */ GoogleApiManager f29259m;

    /* renamed from: a */
    public final Queue f29247a = new LinkedList();

    /* renamed from: e */
    public final Set f29251e = new HashSet();

    /* renamed from: f */
    public final Map f29252f = new HashMap();

    /* renamed from: j */
    public final List f29256j = new ArrayList();

    /* renamed from: k */
    @Nullable
    public ConnectionResult f29257k = null;

    /* renamed from: l */
    public int f29258l = 0;

    @WorkerThread
    public zabq(GoogleApiManager googleApiManager, GoogleApi googleApi) {
        Handler handler;
        Context context;
        Handler handler2;
        this.f29259m = googleApiManager;
        handler = googleApiManager.f29106r;
        Api.Client zab = googleApi.zab(handler.getLooper(), this);
        this.f29248b = zab;
        this.f29249c = googleApi.getApiKey();
        this.f29250d = new zaad();
        this.f29253g = googleApi.zaa();
        if (!zab.requiresSignIn()) {
            this.f29254h = null;
            return;
        }
        context = googleApiManager.f29097i;
        handler2 = googleApiManager.f29106r;
        this.f29254h = googleApi.zac(context, handler2);
    }

    /* renamed from: p */
    public static /* bridge */ /* synthetic */ ApiKey m22084p(zabq zabqVar) {
        return zabqVar.f29249c;
    }

    /* renamed from: q */
    public static /* bridge */ /* synthetic */ void m22085q(zabq zabqVar, Status status) {
        zabqVar.m22094c(status);
    }

    /* renamed from: t */
    public static /* bridge */ /* synthetic */ void m22088t(zabq zabqVar, gap gapVar) {
        if (zabqVar.f29256j.contains(gapVar) && !zabqVar.f29255i) {
            if (zabqVar.f29248b.isConnected()) {
                zabqVar.m22096e();
            } else {
                zabqVar.zao();
            }
        }
    }

    /* renamed from: u */
    public static /* bridge */ /* synthetic */ void m22089u(zabq zabqVar, gap gapVar) {
        Handler handler;
        Handler handler2;
        Feature feature;
        Feature[] zab;
        if (zabqVar.f29256j.remove(gapVar)) {
            handler = zabqVar.f29259m.f29106r;
            handler.removeMessages(15, gapVar);
            handler2 = zabqVar.f29259m.f29106r;
            handler2.removeMessages(16, gapVar);
            feature = gapVar.f70853b;
            ArrayList arrayList = new ArrayList(zabqVar.f29247a.size());
            for (zai zaiVar : zabqVar.f29247a) {
                if ((zaiVar instanceof zac) && (zab = ((zac) zaiVar).zab(zabqVar)) != null && ArrayUtils.contains(zab, feature)) {
                    arrayList.add(zaiVar);
                }
            }
            int size = arrayList.size();
            for (int i = 0; i < size; i++) {
                zai zaiVar2 = (zai) arrayList.get(i);
                zabqVar.f29247a.remove(zaiVar2);
                zaiVar2.zae(new UnsupportedApiCallException(feature));
            }
        }
    }

    /* renamed from: x */
    public static /* bridge */ /* synthetic */ boolean m22091x(zabq zabqVar, boolean z) {
        return zabqVar.m22104m(false);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Nullable
    @WorkerThread
    /* renamed from: a */
    public final Feature m22092a(@Nullable Feature[] featureArr) {
        if (featureArr != null && featureArr.length != 0) {
            Feature[] availableFeatures = this.f29248b.getAvailableFeatures();
            if (availableFeatures == null) {
                availableFeatures = new Feature[0];
            }
            ArrayMap arrayMap = new ArrayMap(availableFeatures.length);
            for (Feature feature : availableFeatures) {
                arrayMap.put(feature.getName(), Long.valueOf(feature.getVersion()));
            }
            for (Feature feature2 : featureArr) {
                Long l = (Long) arrayMap.get(feature2.getName());
                if (l == null || l.longValue() < feature2.getVersion()) {
                    return feature2;
                }
            }
        }
        return null;
    }

    @WorkerThread
    /* renamed from: b */
    public final void m22093b(ConnectionResult connectionResult) {
        Iterator it2 = this.f29251e.iterator();
        while (it2.hasNext()) {
            ((zal) it2.next()).zac(this.f29249c, connectionResult, Objects.equal(connectionResult, ConnectionResult.RESULT_SUCCESS) ? this.f29248b.getEndpointPackageName() : null);
        }
        this.f29251e.clear();
    }

    @WorkerThread
    /* renamed from: c */
    public final void m22094c(Status status) {
        Handler handler;
        handler = this.f29259m.f29106r;
        Preconditions.checkHandlerThread(handler);
        m22095d(status, null, false);
    }

    @WorkerThread
    /* renamed from: d */
    public final void m22095d(@Nullable Status status, @Nullable Exception exc, boolean z) {
        Handler handler;
        handler = this.f29259m.f29106r;
        Preconditions.checkHandlerThread(handler);
        if ((status == null) == (exc == null)) {
            throw new IllegalArgumentException("Status XOR exception should be null");
        }
        Iterator it2 = this.f29247a.iterator();
        while (it2.hasNext()) {
            zai zaiVar = (zai) it2.next();
            if (!z || zaiVar.zac == 2) {
                if (status != null) {
                    zaiVar.zad(status);
                } else {
                    zaiVar.zae(exc);
                }
                it2.remove();
            }
        }
    }

    @WorkerThread
    /* renamed from: e */
    public final void m22096e() {
        ArrayList arrayList = new ArrayList(this.f29247a);
        int size = arrayList.size();
        for (int i = 0; i < size; i++) {
            zai zaiVar = (zai) arrayList.get(i);
            if (!this.f29248b.isConnected()) {
                return;
            }
            if (m22102k(zaiVar)) {
                this.f29247a.remove(zaiVar);
            }
        }
    }

    @WorkerThread
    /* renamed from: f */
    public final void m22097f() {
        zan();
        m22093b(ConnectionResult.RESULT_SUCCESS);
        m22101j();
        Iterator it2 = this.f29252f.values().iterator();
        while (it2.hasNext()) {
            zaci zaciVar = (zaci) it2.next();
            if (m22092a(zaciVar.zaa.getRequiredFeatures()) != null) {
                it2.remove();
            } else {
                try {
                    zaciVar.zaa.registerListener(this.f29248b, new TaskCompletionSource<>());
                } catch (DeadObjectException unused) {
                    onConnectionSuspended(3);
                    this.f29248b.disconnect("DeadObjectException thrown while calling register listener method.");
                } catch (RemoteException unused2) {
                    it2.remove();
                }
            }
        }
        m22096e();
        m22099h();
    }

    @WorkerThread
    /* renamed from: g */
    public final void m22098g(int i) {
        Handler handler;
        Handler handler2;
        Handler handler3;
        Handler handler4;
        com.google.android.gms.common.internal.zal zalVar;
        zan();
        this.f29255i = true;
        this.f29250d.m22031e(i, this.f29248b.getLastDisconnectMessage());
        ApiKey apiKey = this.f29249c;
        GoogleApiManager googleApiManager = this.f29259m;
        handler = googleApiManager.f29106r;
        handler2 = googleApiManager.f29106r;
        handler.sendMessageDelayed(Message.obtain(handler2, 9, apiKey), 5000L);
        ApiKey apiKey2 = this.f29249c;
        GoogleApiManager googleApiManager2 = this.f29259m;
        handler3 = googleApiManager2.f29106r;
        handler4 = googleApiManager2.f29106r;
        handler3.sendMessageDelayed(Message.obtain(handler4, 11, apiKey2), ExecuteAutoBackupTaskAction.f48008l);
        zalVar = this.f29259m.f29099k;
        zalVar.zac();
        Iterator it2 = this.f29252f.values().iterator();
        while (it2.hasNext()) {
            ((zaci) it2.next()).zac.run();
        }
    }

    /* renamed from: h */
    public final void m22099h() {
        Handler handler;
        Handler handler2;
        Handler handler3;
        long j;
        ApiKey apiKey = this.f29249c;
        handler = this.f29259m.f29106r;
        handler.removeMessages(12, apiKey);
        ApiKey apiKey2 = this.f29249c;
        GoogleApiManager googleApiManager = this.f29259m;
        handler2 = googleApiManager.f29106r;
        handler3 = googleApiManager.f29106r;
        Message obtainMessage = handler3.obtainMessage(12, apiKey2);
        j = this.f29259m.f29093e;
        handler2.sendMessageDelayed(obtainMessage, j);
    }

    @WorkerThread
    /* renamed from: i */
    public final void m22100i(zai zaiVar) {
        zaiVar.zag(this.f29250d, zaA());
        try {
            zaiVar.zaf(this);
        } catch (DeadObjectException unused) {
            onConnectionSuspended(1);
            this.f29248b.disconnect("DeadObjectException thrown while running ApiCallRunner.");
        }
    }

    @WorkerThread
    /* renamed from: j */
    public final void m22101j() {
        Handler handler;
        Handler handler2;
        if (this.f29255i) {
            GoogleApiManager googleApiManager = this.f29259m;
            ApiKey apiKey = this.f29249c;
            handler = googleApiManager.f29106r;
            handler.removeMessages(11, apiKey);
            GoogleApiManager googleApiManager2 = this.f29259m;
            ApiKey apiKey2 = this.f29249c;
            handler2 = googleApiManager2.f29106r;
            handler2.removeMessages(9, apiKey2);
            this.f29255i = false;
        }
    }

    @WorkerThread
    /* renamed from: k */
    public final boolean m22102k(zai zaiVar) {
        boolean z;
        Handler handler;
        Handler handler2;
        Handler handler3;
        Handler handler4;
        Handler handler5;
        Handler handler6;
        Handler handler7;
        if (!(zaiVar instanceof zac)) {
            m22100i(zaiVar);
            return true;
        }
        zac zacVar = (zac) zaiVar;
        Feature m22092a = m22092a(zacVar.zab(this));
        if (m22092a == null) {
            m22100i(zaiVar);
            return true;
        }
        Log.w("GoogleApiManager", this.f29248b.getClass().getName() + " could not execute call because it requires feature (" + m22092a.getName() + ", " + m22092a.getVersion() + ").");
        z = this.f29259m.f29107s;
        if (!z || !zacVar.zaa(this)) {
            zacVar.zae(new UnsupportedApiCallException(m22092a));
            return true;
        }
        gap gapVar = new gap(this.f29249c, m22092a, null);
        int indexOf = this.f29256j.indexOf(gapVar);
        if (indexOf >= 0) {
            gap gapVar2 = (gap) this.f29256j.get(indexOf);
            handler5 = this.f29259m.f29106r;
            handler5.removeMessages(15, gapVar2);
            GoogleApiManager googleApiManager = this.f29259m;
            handler6 = googleApiManager.f29106r;
            handler7 = googleApiManager.f29106r;
            handler6.sendMessageDelayed(Message.obtain(handler7, 15, gapVar2), 5000L);
            return false;
        }
        this.f29256j.add(gapVar);
        GoogleApiManager googleApiManager2 = this.f29259m;
        handler = googleApiManager2.f29106r;
        handler2 = googleApiManager2.f29106r;
        handler.sendMessageDelayed(Message.obtain(handler2, 15, gapVar), 5000L);
        GoogleApiManager googleApiManager3 = this.f29259m;
        handler3 = googleApiManager3.f29106r;
        handler4 = googleApiManager3.f29106r;
        handler3.sendMessageDelayed(Message.obtain(handler4, 16, gapVar), ExecuteAutoBackupTaskAction.f48008l);
        ConnectionResult connectionResult = new ConnectionResult(2, null);
        if (m22103l(connectionResult)) {
            return false;
        }
        this.f29259m.m21992d(connectionResult, this.f29253g);
        return false;
    }

    @WorkerThread
    /* renamed from: l */
    public final boolean m22103l(@NonNull ConnectionResult connectionResult) {
        Object obj;
        zaae zaaeVar;
        Set set;
        zaae zaaeVar2;
        obj = GoogleApiManager.f29091u;
        synchronized (obj) {
            GoogleApiManager googleApiManager = this.f29259m;
            zaaeVar = googleApiManager.f29103o;
            if (zaaeVar != null) {
                set = googleApiManager.f29104p;
                if (set.contains(this.f29249c)) {
                    zaaeVar2 = this.f29259m.f29103o;
                    zaaeVar2.zah(connectionResult, this.f29253g);
                    return true;
                }
            }
            return false;
        }
    }

    @WorkerThread
    /* renamed from: m */
    public final boolean m22104m(boolean z) {
        Handler handler;
        handler = this.f29259m.f29106r;
        Preconditions.checkHandlerThread(handler);
        if (!this.f29248b.isConnected() || !this.f29252f.isEmpty()) {
            return false;
        }
        if (!this.f29250d.m22032f()) {
            this.f29248b.disconnect("Timing out service connection.");
            return true;
        }
        if (!z) {
            return false;
        }
        m22099h();
        return false;
    }

    @WorkerThread
    /* renamed from: n */
    public final int m22105n() {
        return this.f29258l;
    }

    @Override // com.google.android.gms.common.api.internal.ConnectionCallbacks
    public final void onConnected(@Nullable Bundle bundle) {
        Handler handler;
        Handler handler2;
        GoogleApiManager googleApiManager = this.f29259m;
        Looper myLooper = Looper.myLooper();
        handler = googleApiManager.f29106r;
        if (myLooper == handler.getLooper()) {
            m22097f();
        } else {
            handler2 = this.f29259m.f29106r;
            handler2.post(new cap(this));
        }
    }

    @Override // com.google.android.gms.common.api.internal.OnConnectionFailedListener
    @WorkerThread
    public final void onConnectionFailed(@NonNull ConnectionResult connectionResult) {
        zar(connectionResult, null);
    }

    @Override // com.google.android.gms.common.api.internal.ConnectionCallbacks
    public final void onConnectionSuspended(int i) {
        Handler handler;
        Handler handler2;
        GoogleApiManager googleApiManager = this.f29259m;
        Looper myLooper = Looper.myLooper();
        handler = googleApiManager.f29106r;
        if (myLooper == handler.getLooper()) {
            m22098g(i);
        } else {
            handler2 = this.f29259m.f29106r;
            handler2.post(new dap(this, i));
        }
    }

    @WorkerThread
    /* renamed from: v */
    public final void m22106v() {
        this.f29258l++;
    }

    /* renamed from: y */
    public final boolean m22107y() {
        return this.f29248b.isConnected();
    }

    public final boolean zaA() {
        return this.f29248b.requiresSignIn();
    }

    @ResultIgnorabilityUnspecified
    @WorkerThread
    public final boolean zaB() {
        return m22104m(true);
    }

    @Override // com.google.android.gms.common.api.internal.zau
    public final void zaa(ConnectionResult connectionResult, Api api, boolean z) {
        throw null;
    }

    public final int zab() {
        return this.f29253g;
    }

    @Nullable
    @WorkerThread
    public final ConnectionResult zad() {
        Handler handler;
        handler = this.f29259m.f29106r;
        Preconditions.checkHandlerThread(handler);
        return this.f29257k;
    }

    public final Api.Client zaf() {
        return this.f29248b;
    }

    public final Map zah() {
        return this.f29252f;
    }

    @WorkerThread
    public final void zan() {
        Handler handler;
        handler = this.f29259m.f29106r;
        Preconditions.checkHandlerThread(handler);
        this.f29257k = null;
    }

    @WorkerThread
    public final void zao() {
        Handler handler;
        com.google.android.gms.common.internal.zal zalVar;
        Context context;
        handler = this.f29259m.f29106r;
        Preconditions.checkHandlerThread(handler);
        if (this.f29248b.isConnected() || this.f29248b.isConnecting()) {
            return;
        }
        try {
            GoogleApiManager googleApiManager = this.f29259m;
            zalVar = googleApiManager.f29099k;
            context = googleApiManager.f29097i;
            int zab = zalVar.zab(context, this.f29248b);
            if (zab == 0) {
                GoogleApiManager googleApiManager2 = this.f29259m;
                Api.Client client = this.f29248b;
                iap iapVar = new iap(googleApiManager2, client, this.f29249c);
                if (client.requiresSignIn()) {
                    ((zact) Preconditions.checkNotNull(this.f29254h)).zae(iapVar);
                }
                try {
                    this.f29248b.connect(iapVar);
                    return;
                } catch (SecurityException e) {
                    zar(new ConnectionResult(10), e);
                    return;
                }
            }
            ConnectionResult connectionResult = new ConnectionResult(zab, null);
            Log.w("GoogleApiManager", "The service for " + this.f29248b.getClass().getName() + " is not available: " + connectionResult.toString());
            zar(connectionResult, null);
        } catch (IllegalStateException e2) {
            zar(new ConnectionResult(10), e2);
        }
    }

    @WorkerThread
    public final void zap(zai zaiVar) {
        Handler handler;
        handler = this.f29259m.f29106r;
        Preconditions.checkHandlerThread(handler);
        if (this.f29248b.isConnected()) {
            if (m22102k(zaiVar)) {
                m22099h();
                return;
            } else {
                this.f29247a.add(zaiVar);
                return;
            }
        }
        this.f29247a.add(zaiVar);
        ConnectionResult connectionResult = this.f29257k;
        if (connectionResult == null || !connectionResult.hasResolution()) {
            zao();
        } else {
            zar(this.f29257k, null);
        }
    }

    @WorkerThread
    public final void zar(@NonNull ConnectionResult connectionResult, @Nullable Exception exc) {
        Handler handler;
        com.google.android.gms.common.internal.zal zalVar;
        boolean z;
        Status m21977e;
        Status m21977e2;
        Status m21977e3;
        Handler handler2;
        Handler handler3;
        Handler handler4;
        Status status;
        Handler handler5;
        Handler handler6;
        handler = this.f29259m.f29106r;
        Preconditions.checkHandlerThread(handler);
        zact zactVar = this.f29254h;
        if (zactVar != null) {
            zactVar.zaf();
        }
        zan();
        zalVar = this.f29259m.f29099k;
        zalVar.zac();
        m22093b(connectionResult);
        if ((this.f29248b instanceof com.google.android.gms.common.internal.service.zap) && connectionResult.getErrorCode() != 24) {
            this.f29259m.f29094f = true;
            GoogleApiManager googleApiManager = this.f29259m;
            handler5 = googleApiManager.f29106r;
            handler6 = googleApiManager.f29106r;
            handler5.sendMessageDelayed(handler6.obtainMessage(19), 300000L);
        }
        if (connectionResult.getErrorCode() == 4) {
            status = GoogleApiManager.f29090t;
            m22094c(status);
            return;
        }
        if (this.f29247a.isEmpty()) {
            this.f29257k = connectionResult;
            return;
        }
        if (exc != null) {
            handler4 = this.f29259m.f29106r;
            Preconditions.checkHandlerThread(handler4);
            m22095d(null, exc, false);
            return;
        }
        z = this.f29259m.f29107s;
        if (!z) {
            m21977e = GoogleApiManager.m21977e(this.f29249c, connectionResult);
            m22094c(m21977e);
            return;
        }
        m21977e2 = GoogleApiManager.m21977e(this.f29249c, connectionResult);
        m22095d(m21977e2, null, true);
        if (this.f29247a.isEmpty() || m22103l(connectionResult) || this.f29259m.m21992d(connectionResult, this.f29253g)) {
            return;
        }
        if (connectionResult.getErrorCode() == 18) {
            this.f29255i = true;
        }
        if (!this.f29255i) {
            m21977e3 = GoogleApiManager.m21977e(this.f29249c, connectionResult);
            m22094c(m21977e3);
            return;
        }
        GoogleApiManager googleApiManager2 = this.f29259m;
        ApiKey apiKey = this.f29249c;
        handler2 = googleApiManager2.f29106r;
        handler3 = googleApiManager2.f29106r;
        handler2.sendMessageDelayed(Message.obtain(handler3, 9, apiKey), 5000L);
    }

    @WorkerThread
    public final void zas(@NonNull ConnectionResult connectionResult) {
        Handler handler;
        handler = this.f29259m.f29106r;
        Preconditions.checkHandlerThread(handler);
        Api.Client client = this.f29248b;
        client.disconnect("onSignInFailed for " + client.getClass().getName() + " with " + String.valueOf(connectionResult));
        zar(connectionResult, null);
    }

    @WorkerThread
    public final void zat(zal zalVar) {
        Handler handler;
        handler = this.f29259m.f29106r;
        Preconditions.checkHandlerThread(handler);
        this.f29251e.add(zalVar);
    }

    @WorkerThread
    public final void zau() {
        Handler handler;
        handler = this.f29259m.f29106r;
        Preconditions.checkHandlerThread(handler);
        if (this.f29255i) {
            zao();
        }
    }

    @WorkerThread
    public final void zav() {
        Handler handler;
        handler = this.f29259m.f29106r;
        Preconditions.checkHandlerThread(handler);
        m22094c(GoogleApiManager.zaa);
        this.f29250d.zaf();
        for (ListenerHolder.ListenerKey listenerKey : (ListenerHolder.ListenerKey[]) this.f29252f.keySet().toArray(new ListenerHolder.ListenerKey[0])) {
            zap(new zah(listenerKey, new TaskCompletionSource()));
        }
        m22093b(new ConnectionResult(4));
        if (this.f29248b.isConnected()) {
            this.f29248b.onUserSignOut(new fap(this));
        }
    }

    @WorkerThread
    public final void zaw() {
        Handler handler;
        GoogleApiAvailability googleApiAvailability;
        Context context;
        handler = this.f29259m.f29106r;
        Preconditions.checkHandlerThread(handler);
        if (this.f29255i) {
            m22101j();
            GoogleApiManager googleApiManager = this.f29259m;
            googleApiAvailability = googleApiManager.f29098j;
            context = googleApiManager.f29097i;
            m22094c(googleApiAvailability.isGooglePlayServicesAvailable(context) == 18 ? new Status(21, "Connection timed out waiting for Google Play services update to complete.") : new Status(22, "API failed to connect while resuming due to an unknown error."));
            this.f29248b.disconnect("Timing out connection while resuming.");
        }
    }
}
