package com.sunia.HTREnginev2;

import android.os.Bundle;
import android.os.RemoteException;
import com.android.billingclient.api.BillingResult;
import com.android.billingclient.api.C1791i;
import com.android.billingclient.api.ExternalOfferReportingDetails;
import com.android.billingclient.api.ExternalOfferReportingDetailsListener;
import com.android.billingclient.api.zzbl;
import com.android.billingclient.api.zzcg;
import com.google.android.gms.internal.play_billing.zzz;
import org.json.JSONException;

/* loaded from: classes3.dex */
public final class yhp extends zzz {

    /* renamed from: a */
    public final ExternalOfferReportingDetailsListener f90753a;

    /* renamed from: b */
    public final fjp f90754b;

    /* renamed from: c */
    public final int f90755c;

    public /* synthetic */ yhp(ExternalOfferReportingDetailsListener externalOfferReportingDetailsListener, fjp fjpVar, int i, zzbl zzblVar) {
        this.f90753a = externalOfferReportingDetailsListener;
        this.f90754b = fjpVar;
        this.f90755c = i;
    }

    @Override // com.google.android.gms.internal.play_billing.zzaa
    public final void zza(Bundle bundle) throws RemoteException {
        if (bundle == null) {
            fjp fjpVar = this.f90754b;
            BillingResult billingResult = C1791i.f13578k;
            fjpVar.mo54124f(zzcg.zzb(95, 24, billingResult), this.f90755c);
            this.f90753a.onExternalOfferReportingDetailsResponse(billingResult, null);
            return;
        }
        int zzb = com.google.android.gms.internal.play_billing.zze.zzb(bundle, "BillingClient");
        BillingResult m7928a = C1791i.m7928a(zzb, com.google.android.gms.internal.play_billing.zze.zzh(bundle, "BillingClient"));
        if (zzb != 0) {
            com.google.android.gms.internal.play_billing.zze.zzl("BillingClient", "createExternalOfferReportingDetailsAsync() failed. Response code: " + zzb);
            this.f90754b.mo54124f(zzcg.zzb(23, 24, m7928a), this.f90755c);
            this.f90753a.onExternalOfferReportingDetailsResponse(m7928a, null);
            return;
        }
        try {
            this.f90753a.onExternalOfferReportingDetailsResponse(m7928a, new ExternalOfferReportingDetails(bundle.getString("CREATE_EXTERNAL_PAYMENT_REPORTING_DETAILS")));
        } catch (JSONException e) {
            com.google.android.gms.internal.play_billing.zze.zzm("BillingClient", "Error when parsing invalid external offer reporting details. \n Exception: ", e);
            fjp fjpVar2 = this.f90754b;
            BillingResult billingResult2 = C1791i.f13578k;
            fjpVar2.mo54124f(zzcg.zzb(104, 24, billingResult2), this.f90755c);
            this.f90753a.onExternalOfferReportingDetailsResponse(billingResult2, null);
        }
    }
}
