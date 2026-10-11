package com.android.billingclient.api;

import android.os.Bundle;
import android.os.RemoteException;
import com.android.billingclient.api.BillingResult;
import com.sunia.HTREnginev2.fjp;
import org.json.JSONException;

/* renamed from: com.android.billingclient.api.d */
/* loaded from: classes3.dex */
public final class BinderC1786d extends com.google.android.gms.internal.play_billing.zzad {

    /* renamed from: a */
    public final BillingConfigResponseListener f13547a;

    /* renamed from: b */
    public final fjp f13548b;

    /* renamed from: c */
    public final int f13549c;

    public /* synthetic */ BinderC1786d(BillingConfigResponseListener billingConfigResponseListener, fjp fjpVar, int i, zzbl zzblVar) {
        this.f13547a = billingConfigResponseListener;
        this.f13548b = fjpVar;
        this.f13549c = i;
    }

    @Override // com.google.android.gms.internal.play_billing.zzae
    public final void zza(Bundle bundle) throws RemoteException {
        if (bundle == null) {
            fjp fjpVar = this.f13548b;
            BillingResult billingResult = C1791i.f13578k;
            fjpVar.mo54124f(zzcg.zzb(63, 13, billingResult), this.f13549c);
            this.f13547a.onBillingConfigResponse(billingResult, null);
            return;
        }
        int zzb = com.google.android.gms.internal.play_billing.zze.zzb(bundle, "BillingClient");
        String zzh = com.google.android.gms.internal.play_billing.zze.zzh(bundle, "BillingClient");
        BillingResult.Builder newBuilder = BillingResult.newBuilder();
        newBuilder.setResponseCode(zzb);
        newBuilder.setDebugMessage(zzh);
        if (zzb != 0) {
            com.google.android.gms.internal.play_billing.zze.zzl("BillingClient", "getBillingConfig() failed. Response code: " + zzb);
            BillingResult build = newBuilder.build();
            this.f13548b.mo54124f(zzcg.zzb(23, 13, build), this.f13549c);
            this.f13547a.onBillingConfigResponse(build, null);
            return;
        }
        if (!bundle.containsKey("BILLING_CONFIG")) {
            com.google.android.gms.internal.play_billing.zze.zzl("BillingClient", "getBillingConfig() returned a bundle with neither an error nor a billing config response");
            newBuilder.setResponseCode(6);
            BillingResult build2 = newBuilder.build();
            this.f13548b.mo54124f(zzcg.zzb(64, 13, build2), this.f13549c);
            this.f13547a.onBillingConfigResponse(build2, null);
            return;
        }
        try {
            this.f13547a.onBillingConfigResponse(newBuilder.build(), new BillingConfig(bundle.getString("BILLING_CONFIG")));
        } catch (JSONException e) {
            com.google.android.gms.internal.play_billing.zze.zzm("BillingClient", "Got a JSON exception trying to decode BillingConfig. \n Exception: ", e);
            fjp fjpVar2 = this.f13548b;
            BillingResult billingResult2 = C1791i.f13578k;
            fjpVar2.mo54124f(zzcg.zzb(65, 13, billingResult2), this.f13549c);
            this.f13547a.onBillingConfigResponse(billingResult2, null);
        }
    }
}
