package com.android.billingclient.api;

import androidx.annotation.NonNull;
import com.google.android.gms.common.annotation.KeepForSdk;
import org.json.JSONException;
import org.json.JSONObject;

@zzf
@KeepForSdk
/* loaded from: classes3.dex */
public final class AlternativeBillingOnlyReportingDetails {

    /* renamed from: a */
    public final String f13365a;

    public AlternativeBillingOnlyReportingDetails(String str) throws JSONException {
        this.f13365a = new JSONObject(str).optString("externalTransactionToken");
    }

    @NonNull
    public String getExternalTransactionToken() {
        return this.f13365a;
    }
}
