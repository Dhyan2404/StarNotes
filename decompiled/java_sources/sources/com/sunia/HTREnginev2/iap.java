package com.sunia.HTREnginev2;

import android.os.Handler;
import android.util.Log;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.WorkerThread;
import com.google.android.gms.common.ConnectionResult;
import com.google.android.gms.common.api.Api;
import com.google.android.gms.common.api.internal.ApiKey;
import com.google.android.gms.common.api.internal.GoogleApiManager;
import com.google.android.gms.common.api.internal.zabq;
import com.google.android.gms.common.api.internal.zacs;
import com.google.android.gms.common.internal.BaseGmsClient;
import com.google.android.gms.common.internal.IAccountAccessor;
import java.util.Map;
import java.util.Set;

/* loaded from: classes5.dex */
public final class iap implements BaseGmsClient.ConnectionProgressReportCallbacks, zacs {

    /* renamed from: a */
    public final Api.Client f73059a;

    /* renamed from: b */
    public final ApiKey f73060b;

    /* renamed from: c */
    @Nullable
    public IAccountAccessor f73061c = null;

    /* renamed from: d */
    @Nullable
    public Set f73062d = null;

    /* renamed from: e */
    public boolean f73063e = false;

    /* renamed from: f */
    public final /* synthetic */ GoogleApiManager f73064f;

    public iap(GoogleApiManager googleApiManager, Api.Client client, ApiKey apiKey) {
        this.f73064f = googleApiManager;
        this.f73059a = client;
        this.f73060b = apiKey;
    }

    @WorkerThread
    /* renamed from: e */
    public final void m54698e() {
        IAccountAccessor iAccountAccessor;
        if (!this.f73063e || (iAccountAccessor = this.f73061c) == null) {
            return;
        }
        this.f73059a.getRemoteService(iAccountAccessor, this.f73062d);
    }

    @Override // com.google.android.gms.common.internal.BaseGmsClient.ConnectionProgressReportCallbacks
    public final void onReportServiceBinding(@NonNull ConnectionResult connectionResult) {
        Handler handler;
        handler = this.f73064f.f29106r;
        handler.post(new hap(this, connectionResult));
    }

    @Override // com.google.android.gms.common.api.internal.zacs
    @WorkerThread
    public final void zae(ConnectionResult connectionResult) {
        Map map;
        map = this.f73064f.f29102n;
        zabq zabqVar = (zabq) map.get(this.f73060b);
        if (zabqVar != null) {
            zabqVar.zas(connectionResult);
        }
    }

    @Override // com.google.android.gms.common.api.internal.zacs
    @WorkerThread
    public final void zaf(@Nullable IAccountAccessor iAccountAccessor, @Nullable Set set) {
        if (iAccountAccessor == null || set == null) {
            Log.wtf("GoogleApiManager", "Received null response from onSignInSuccess", new Exception());
            zae(new ConnectionResult(4));
        } else {
            this.f73061c = iAccountAccessor;
            this.f73062d = set;
            m54698e();
        }
    }

    @Override // com.google.android.gms.common.api.internal.zacs
    @WorkerThread
    public final void zag(int i) {
        Map map;
        boolean z;
        map = this.f73064f.f29102n;
        zabq zabqVar = (zabq) map.get(this.f73060b);
        if (zabqVar != null) {
            z = zabqVar.f29255i;
            if (z) {
                zabqVar.zas(new ConnectionResult(17));
            } else {
                zabqVar.onConnectionSuspended(i);
            }
        }
    }
}
