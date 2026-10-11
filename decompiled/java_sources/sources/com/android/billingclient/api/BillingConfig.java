package com.android.billingclient.api;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import org.json.JSONException;
import org.json.JSONObject;

@zzh
/* loaded from: classes3.dex */
public final class BillingConfig {

    /* renamed from: a */
    public final String f13379a;

    public BillingConfig(@Nullable String str, String str2) {
        this.f13379a = str2;
    }

    /* renamed from: a */
    public static BillingConfig m7742a(String str) {
        return new BillingConfig(null, str);
    }

    @NonNull
    public String getCountryCode() {
        return this.f13379a;
    }

    public BillingConfig(String str) throws JSONException {
        this.f13379a = new JSONObject(str).optString("countryCode");
    }
}
