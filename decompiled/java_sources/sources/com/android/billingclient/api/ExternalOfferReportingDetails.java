package com.android.billingclient.api;

import androidx.annotation.NonNull;
import org.json.JSONException;
import org.json.JSONObject;

@zzg
/* loaded from: classes3.dex */
public final class ExternalOfferReportingDetails {

    /* renamed from: a */
    public final String f13416a;

    public ExternalOfferReportingDetails(String str) throws JSONException {
        this.f13416a = new JSONObject(str).optString("externalTransactionToken");
    }

    @NonNull
    public String getExternalTransactionToken() {
        return this.f13416a;
    }
}
