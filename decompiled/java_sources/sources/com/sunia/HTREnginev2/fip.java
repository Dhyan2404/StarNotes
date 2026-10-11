package com.sunia.HTREnginev2;

import android.os.Bundle;
import android.os.RemoteException;
import com.android.billingclient.api.BillingResult;
import com.android.billingclient.api.C1791i;
import com.android.billingclient.api.ExternalOfferAvailabilityListener;
import com.android.billingclient.api.zzbl;
import com.android.billingclient.api.zzcg;
import com.google.android.gms.internal.play_billing.zzaj;

/* loaded from: classes3.dex */
public final class fip extends zzaj {

    /* renamed from: a */
    public final ExternalOfferAvailabilityListener f70048a;

    /* renamed from: b */
    public final fjp f70049b;

    /* renamed from: c */
    public final int f70050c;

    public /* synthetic */ fip(ExternalOfferAvailabilityListener externalOfferAvailabilityListener, fjp fjpVar, int i, zzbl zzblVar) {
        this.f70048a = externalOfferAvailabilityListener;
        this.f70049b = fjpVar;
        this.f70050c = i;
    }

    @Override // com.google.android.gms.internal.play_billing.zzak
    public final void zza(Bundle bundle) throws RemoteException {
        if (bundle == null) {
            fjp fjpVar = this.f70049b;
            BillingResult billingResult = C1791i.f13578k;
            fjpVar.mo54124f(zzcg.zzb(92, 23, billingResult), this.f70050c);
            this.f70048a.onExternalOfferAvailabilityResponse(billingResult);
            return;
        }
        int zzb = com.google.android.gms.internal.play_billing.zze.zzb(bundle, "BillingClient");
        BillingResult m7928a = C1791i.m7928a(zzb, com.google.android.gms.internal.play_billing.zze.zzh(bundle, "BillingClient"));
        if (zzb != 0) {
            com.google.android.gms.internal.play_billing.zze.zzl("BillingClient", "isExternalOfferAvailableAsync() failed. Response code: " + zzb);
            this.f70049b.mo54124f(zzcg.zzb(23, 23, m7928a), this.f70050c);
        }
        this.f70048a.onExternalOfferAvailabilityResponse(m7928a);
    }
}
