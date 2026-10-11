package com.android.billingclient.api;

import android.text.TextUtils;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.google.firebase.analytics.FirebaseAnalytics;
import com.onyx.android.sdk.pay.constants.Constants;
import java.util.ArrayList;
import java.util.List;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

/* loaded from: classes3.dex */
public class PurchaseHistoryRecord {

    /* renamed from: a */
    public final String f13480a;

    /* renamed from: b */
    public final String f13481b;

    /* renamed from: c */
    public final JSONObject f13482c;

    public PurchaseHistoryRecord(@NonNull String str, @NonNull String str2) throws JSONException {
        this.f13480a = str;
        this.f13481b = str2;
        this.f13482c = new JSONObject(str);
    }

    /* renamed from: a */
    public final ArrayList m7776a() {
        ArrayList arrayList = new ArrayList();
        if (this.f13482c.has("productIds")) {
            JSONArray optJSONArray = this.f13482c.optJSONArray("productIds");
            if (optJSONArray != null) {
                for (int i = 0; i < optJSONArray.length(); i++) {
                    arrayList.add(optJSONArray.optString(i));
                }
            }
        } else if (this.f13482c.has(Constants.KEY_GOOGLE_PRODUCT_ID)) {
            arrayList.add(this.f13482c.optString(Constants.KEY_GOOGLE_PRODUCT_ID));
        }
        return arrayList;
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof PurchaseHistoryRecord)) {
            return false;
        }
        PurchaseHistoryRecord purchaseHistoryRecord = (PurchaseHistoryRecord) obj;
        return TextUtils.equals(this.f13480a, purchaseHistoryRecord.getOriginalJson()) && TextUtils.equals(this.f13481b, purchaseHistoryRecord.getSignature());
    }

    @NonNull
    public String getDeveloperPayload() {
        return this.f13482c.optString("developerPayload");
    }

    @NonNull
    public String getOriginalJson() {
        return this.f13480a;
    }

    @NonNull
    public List<String> getProducts() {
        return m7776a();
    }

    public long getPurchaseTime() {
        return this.f13482c.optLong("purchaseTime");
    }

    @NonNull
    public String getPurchaseToken() {
        JSONObject jSONObject = this.f13482c;
        return jSONObject.optString("token", jSONObject.optString("purchaseToken"));
    }

    public int getQuantity() {
        return this.f13482c.optInt(FirebaseAnalytics.Param.QUANTITY, 1);
    }

    @NonNull
    public String getSignature() {
        return this.f13481b;
    }

    @NonNull
    @Deprecated
    public ArrayList<String> getSkus() {
        return m7776a();
    }

    public int hashCode() {
        return this.f13480a.hashCode();
    }

    @NonNull
    public String toString() {
        return "PurchaseHistoryRecord. Json: ".concat(String.valueOf(this.f13480a));
    }
}
