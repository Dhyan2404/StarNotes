package com.sunia.HTREnginev2;

import android.os.Bundle;
import android.os.RemoteException;
import com.android.billingclient.api.AlternativeBillingOnlyReportingDetails;
import com.android.billingclient.api.AlternativeBillingOnlyReportingDetailsListener;
import com.android.billingclient.api.BillingResult;
import com.android.billingclient.api.C1791i;
import com.android.billingclient.api.zzbl;
import com.android.billingclient.api.zzcg;
import com.google.android.gms.internal.play_billing.zzx;
import org.json.JSONException;

/* loaded from: classes3.dex */
public final class xhp extends zzx {

    /* renamed from: a */
    public final AlternativeBillingOnlyReportingDetailsListener f89666a;

    /* renamed from: b */
    public final fjp f89667b;

    /* renamed from: c */
    public final int f89668c;

    public /* synthetic */ xhp(AlternativeBillingOnlyReportingDetailsListener alternativeBillingOnlyReportingDetailsListener, fjp fjpVar, int i, zzbl zzblVar) {
        this.f89666a = alternativeBillingOnlyReportingDetailsListener;
        this.f89667b = fjpVar;
        this.f89668c = i;
    }

    @Override // com.google.android.gms.internal.play_billing.zzy
    public final void zza(Bundle bundle) throws RemoteException {
        if (bundle == null) {
            fjp fjpVar = this.f89667b;
            BillingResult billingResult = C1791i.f13578k;
            fjpVar.mo54124f(zzcg.zzb(71, 15, billingResult), this.f89668c);
            this.f89666a.onAlternativeBillingOnlyTokenResponse(billingResult, null);
            return;
        }
        int zzb = com.google.android.gms.internal.play_billing.zze.zzb(bundle, "BillingClient");
        BillingResult m7928a = C1791i.m7928a(zzb, com.google.android.gms.internal.play_billing.zze.zzh(bundle, "BillingClient"));
        if (zzb != 0) {
            com.google.android.gms.internal.play_billing.zze.zzl("BillingClient", "createAlternativeBillingOnlyReportingDetailsAsync() failed. Response code: " + zzb);
            this.f89667b.mo54124f(zzcg.zzb(23, 15, m7928a), this.f89668c);
            this.f89666a.onAlternativeBillingOnlyTokenResponse(m7928a, null);
            return;
        }
        try {
            this.f89666a.onAlternativeBillingOnlyTokenResponse(m7928a, new AlternativeBillingOnlyReportingDetails(bundle.getString("CREATE_ALTERNATIVE_BILLING_ONLY_REPORTING_DETAILS")));
        } catch (JSONException e) {
            com.google.android.gms.internal.play_billing.zze.zzm("BillingClient", "Error when parsing invalid alternative billing only reporting details. \n Exception: ", e);
            fjp fjpVar2 = this.f89667b;
            BillingResult billingResult2 = C1791i.f13578k;
            fjpVar2.mo54124f(zzcg.zzb(72, 15, billingResult2), this.f89668c);
            this.f89666a.onAlternativeBillingOnlyTokenResponse(billingResult2, null);
        }
    }
}
