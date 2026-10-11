package com.google.android.gms.common.api.internal;

import android.content.Context;
import android.os.Bundle;
import android.os.Handler;
import android.util.Log;
import androidx.annotation.BinderThread;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.WorkerThread;
import com.google.android.gms.common.ConnectionResult;
import com.google.android.gms.common.api.Api;
import com.google.android.gms.common.api.GoogleApiClient;
import com.google.android.gms.common.internal.ClientSettings;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.common.internal.zav;
import com.google.android.gms.signin.zad;
import com.sunia.HTREnginev2.pap;
import com.sunia.HTREnginev2.qap;
import java.util.Set;

/* loaded from: classes5.dex */
public final class zact extends com.google.android.gms.signin.internal.zac implements GoogleApiClient.ConnectionCallbacks, GoogleApiClient.OnConnectionFailedListener {

    /* renamed from: h */
    public static final Api.AbstractClientBuilder f29266h = zad.zac;

    /* renamed from: a */
    public final Context f29267a;

    /* renamed from: b */
    public final Handler f29268b;

    /* renamed from: c */
    public final Api.AbstractClientBuilder f29269c;

    /* renamed from: d */
    public final Set f29270d;

    /* renamed from: e */
    public final ClientSettings f29271e;

    /* renamed from: f */
    public com.google.android.gms.signin.zae f29272f;

    /* renamed from: g */
    public zacs f29273g;

    @WorkerThread
    public zact(Context context, Handler handler, @NonNull ClientSettings clientSettings) {
        Api.AbstractClientBuilder abstractClientBuilder = f29266h;
        this.f29267a = context;
        this.f29268b = handler;
        this.f29271e = (ClientSettings) Preconditions.checkNotNull(clientSettings, "ClientSettings must not be null");
        this.f29270d = clientSettings.getRequiredScopes();
        this.f29269c = abstractClientBuilder;
    }

    /* renamed from: b */
    public static /* bridge */ /* synthetic */ void m22110b(zact zactVar, com.google.android.gms.signin.internal.zak zakVar) {
        ConnectionResult zaa = zakVar.zaa();
        if (zaa.isSuccess()) {
            zav zavVar = (zav) Preconditions.checkNotNull(zakVar.zab());
            ConnectionResult zaa2 = zavVar.zaa();
            if (!zaa2.isSuccess()) {
                String valueOf = String.valueOf(zaa2);
                Log.wtf("SignInCoordinator", "Sign-in succeeded with resolve account failure: ".concat(valueOf), new Exception());
                zactVar.f29273g.zae(zaa2);
                zactVar.f29272f.disconnect();
                return;
            }
            zactVar.f29273g.zaf(zavVar.zab(), zactVar.f29270d);
        } else {
            zactVar.f29273g.zae(zaa);
        }
        zactVar.f29272f.disconnect();
    }

    @Override // com.google.android.gms.common.api.internal.ConnectionCallbacks
    @WorkerThread
    public final void onConnected(@Nullable Bundle bundle) {
        this.f29272f.zad(this);
    }

    @Override // com.google.android.gms.common.api.internal.OnConnectionFailedListener
    @WorkerThread
    public final void onConnectionFailed(@NonNull ConnectionResult connectionResult) {
        this.f29273g.zae(connectionResult);
    }

    @Override // com.google.android.gms.common.api.internal.ConnectionCallbacks
    @WorkerThread
    public final void onConnectionSuspended(int i) {
        this.f29273g.zag(i);
    }

    @Override // com.google.android.gms.signin.internal.zac, com.google.android.gms.signin.internal.zae
    @BinderThread
    public final void zab(com.google.android.gms.signin.internal.zak zakVar) {
        this.f29268b.post(new qap(this, zakVar));
    }

    /* JADX WARN: Type inference failed for: r0v3, types: [com.google.android.gms.common.api.Api$Client, com.google.android.gms.signin.zae] */
    @WorkerThread
    public final void zae(zacs zacsVar) {
        com.google.android.gms.signin.zae zaeVar = this.f29272f;
        if (zaeVar != null) {
            zaeVar.disconnect();
        }
        this.f29271e.zae(Integer.valueOf(System.identityHashCode(this)));
        Api.AbstractClientBuilder abstractClientBuilder = this.f29269c;
        Context context = this.f29267a;
        Handler handler = this.f29268b;
        ClientSettings clientSettings = this.f29271e;
        this.f29272f = abstractClientBuilder.buildClient(context, handler.getLooper(), clientSettings, (ClientSettings) clientSettings.zaa(), (GoogleApiClient.ConnectionCallbacks) this, (GoogleApiClient.OnConnectionFailedListener) this);
        this.f29273g = zacsVar;
        Set set = this.f29270d;
        if (set == null || set.isEmpty()) {
            this.f29268b.post(new pap(this));
        } else {
            this.f29272f.zab();
        }
    }

    public final void zaf() {
        com.google.android.gms.signin.zae zaeVar = this.f29272f;
        if (zaeVar != null) {
            zaeVar.disconnect();
        }
    }
}
