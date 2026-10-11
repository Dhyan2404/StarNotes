package com.sunia.HTREnginev2;

import android.os.Bundle;
import android.os.RemoteException;
import com.android.billingclient.api.AlternativeBillingOnlyAvailabilityListener;
import com.android.billingclient.api.BillingResult;
import com.android.billingclient.api.C1791i;
import com.android.billingclient.api.zzbl;
import com.android.billingclient.api.zzcg;
import com.google.android.gms.internal.play_billing.zzah;

/* loaded from: classes3.dex */
public final class dip extends zzah {

    /* renamed from: a */
    public final AlternativeBillingOnlyAvailabilityListener f67912a;

    /* renamed from: b */
    public final fjp f67913b;

    /* renamed from: c */
    public final int f67914c;

    public /* synthetic */ dip(AlternativeBillingOnlyAvailabilityListener alternativeBillingOnlyAvailabilityListener, fjp fjpVar, int i, zzbl zzblVar) {
        this.f67912a = alternativeBillingOnlyAvailabilityListener;
        this.f67913b = fjpVar;
        this.f67914c = i;
    }

    @Override // com.google.android.gms.internal.play_billing.zzai
    public final void zza(Bundle bundle) throws RemoteException {
        if (bundle == null) {
            fjp fjpVar = this.f67913b;
            BillingResult billingResult = C1791i.f13578k;
            fjpVar.mo54124f(zzcg.zzb(67, 14, billingResult), this.f67914c);
            this.f67912a.onAlternativeBillingOnlyAvailabilityResponse(billingResult);
            return;
        }
        int zzb = com.google.android.gms.internal.play_billing.zze.zzb(bundle, "BillingClient");
        BillingResult m7928a = C1791i.m7928a(zzb, com.google.android.gms.internal.play_billing.zze.zzh(bundle, "BillingClient"));
        if (zzb != 0) {
            com.google.android.gms.internal.play_billing.zze.zzl("BillingClient", "isAlternativeBillingOnlyAvailableAsync() failed. Response code: " + zzb);
            this.f67913b.mo54124f(zzcg.zzb(23, 14, m7928a), this.f67914c);
        }
        this.f67912a.onAlternativeBillingOnlyAvailabilityResponse(m7928a);
    }
}
