package com.android.billingclient.api;

import android.os.Bundle;
import com.android.billingclient.api.BillingResult;
import com.sunia.HTREnginev2.ijp;
import java.util.ArrayList;

/* renamed from: com.android.billingclient.api.j */
/* loaded from: classes3.dex */
public final class C1792j {
    /* renamed from: a */
    public static ijp m7929a(Bundle bundle, String str, String str2) {
        BillingResult billingResult = C1791i.f13578k;
        if (bundle == null) {
            com.google.android.gms.internal.play_billing.zze.zzl("BillingClient", String.format("%s got null owned items list", str2));
            return new ijp(billingResult, 54);
        }
        int zzb = com.google.android.gms.internal.play_billing.zze.zzb(bundle, "BillingClient");
        String zzh = com.google.android.gms.internal.play_billing.zze.zzh(bundle, "BillingClient");
        BillingResult.Builder newBuilder = BillingResult.newBuilder();
        newBuilder.setResponseCode(zzb);
        newBuilder.setDebugMessage(zzh);
        BillingResult build = newBuilder.build();
        if (zzb != 0) {
            com.google.android.gms.internal.play_billing.zze.zzl("BillingClient", String.format("%s failed. Response code: %s", str2, Integer.valueOf(zzb)));
            return new ijp(build, 23);
        }
        if (!bundle.containsKey("INAPP_PURCHASE_ITEM_LIST") || !bundle.containsKey("INAPP_PURCHASE_DATA_LIST") || !bundle.containsKey("INAPP_DATA_SIGNATURE_LIST")) {
            com.google.android.gms.internal.play_billing.zze.zzl("BillingClient", String.format("Bundle returned from %s doesn't contain required fields.", str2));
            return new ijp(billingResult, 55);
        }
        ArrayList<String> stringArrayList = bundle.getStringArrayList("INAPP_PURCHASE_ITEM_LIST");
        ArrayList<String> stringArrayList2 = bundle.getStringArrayList("INAPP_PURCHASE_DATA_LIST");
        ArrayList<String> stringArrayList3 = bundle.getStringArrayList("INAPP_DATA_SIGNATURE_LIST");
        if (stringArrayList == null) {
            com.google.android.gms.internal.play_billing.zze.zzl("BillingClient", String.format("Bundle returned from %s contains null SKUs list.", str2));
            return new ijp(billingResult, 56);
        }
        if (stringArrayList2 == null) {
            com.google.android.gms.internal.play_billing.zze.zzl("BillingClient", String.format("Bundle returned from %s contains null purchases list.", str2));
            return new ijp(billingResult, 57);
        }
        if (stringArrayList3 != null) {
            return new ijp(C1791i.f13579l, 1);
        }
        com.google.android.gms.internal.play_billing.zze.zzl("BillingClient", String.format("Bundle returned from %s contains null signatures list.", str2));
        return new ijp(billingResult, 58);
    }
}
