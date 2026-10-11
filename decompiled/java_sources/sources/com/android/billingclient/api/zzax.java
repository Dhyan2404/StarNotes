package com.android.billingclient.api;

import android.os.Bundle;
import android.os.Handler;
import android.os.ResultReceiver;
import androidx.annotation.Nullable;
import com.android.billingclient.api.BillingResult;
import com.google.android.gms.internal.play_billing.zzkg;

/* loaded from: classes3.dex */
final class zzax extends ResultReceiver {
    final /* synthetic */ ExternalOfferInformationDialogListener zza;
    final /* synthetic */ C1783a zzb;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public zzax(C1783a c1783a, Handler handler, ExternalOfferInformationDialogListener externalOfferInformationDialogListener) {
        super(handler);
        this.zza = externalOfferInformationDialogListener;
        this.zzb = c1783a;
    }

    @Override // android.os.ResultReceiver
    public final void onReceiveResult(int i, @Nullable Bundle bundle) {
        BillingResult.Builder newBuilder = BillingResult.newBuilder();
        newBuilder.setResponseCode(i);
        if (i != 0) {
            if (bundle == null) {
                this.zzb.m7837G0(this.zza, C1791i.f13578k, 97, null);
                return;
            } else {
                newBuilder.setDebugMessage(com.google.android.gms.internal.play_billing.zze.zzh(bundle, "BillingClient"));
                int i2 = bundle.getInt("INTERNAL_LOG_ERROR_REASON");
                this.zzb.m7843K(zzcg.zzc(i2 != 0 ? zzkg.zza(i2) : 23, 25, newBuilder.build(), bundle.getString("INTERNAL_LOG_ERROR_ADDITIONAL_DETAILS")));
            }
        }
        this.zza.onExternalOfferInformationDialogResponse(newBuilder.build());
    }
}
