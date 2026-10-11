package com.sunia.HTREnginev2;

import android.util.Log;
import com.google.android.gms.common.ConnectionResult;
import com.google.android.gms.common.api.Api;
import com.google.android.gms.common.api.internal.ApiKey;
import com.google.android.gms.common.api.internal.zabq;
import java.util.Map;

/* loaded from: classes5.dex */
public final class hap implements Runnable {

    /* renamed from: e */
    public final /* synthetic */ ConnectionResult f72017e;

    /* renamed from: f */
    public final /* synthetic */ iap f72018f;

    public hap(iap iapVar, ConnectionResult connectionResult) {
        this.f72018f = iapVar;
        this.f72017e = connectionResult;
    }

    @Override // java.lang.Runnable
    public final void run() {
        Map map;
        ApiKey apiKey;
        Api.Client client;
        Api.Client client2;
        Api.Client client3;
        Api.Client client4;
        iap iapVar = this.f72018f;
        map = iapVar.f73064f.f29102n;
        apiKey = iapVar.f73060b;
        zabq zabqVar = (zabq) map.get(apiKey);
        if (zabqVar == null) {
            return;
        }
        if (!this.f72017e.isSuccess()) {
            zabqVar.zar(this.f72017e, null);
            return;
        }
        this.f72018f.f73063e = true;
        client = this.f72018f.f73059a;
        if (client.requiresSignIn()) {
            this.f72018f.m54698e();
            return;
        }
        try {
            iap iapVar2 = this.f72018f;
            client3 = iapVar2.f73059a;
            client4 = iapVar2.f73059a;
            client3.getRemoteService(null, client4.getScopesForConnectionlessNonSignIn());
        } catch (SecurityException e) {
            Log.e("GoogleApiManager", "Failed to get service from broker. ", e);
            client2 = this.f72018f.f73059a;
            client2.disconnect("Failed to get service from broker.");
            zabqVar.zar(new ConnectionResult(10), null);
        }
    }
}
