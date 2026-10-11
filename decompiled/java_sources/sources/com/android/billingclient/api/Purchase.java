package com.android.billingclient.api;

import android.text.TextUtils;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.google.firebase.analytics.FirebaseAnalytics;
import com.onyx.android.sdk.pay.constants.Constants;
import com.onyx.galaxy.note.message.data.MessageConst;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.util.ArrayList;
import java.util.List;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

/* loaded from: classes3.dex */
public class Purchase {

    /* renamed from: a */
    public final String f13476a;

    /* renamed from: b */
    public final String f13477b;

    /* renamed from: c */
    public final JSONObject f13478c;

    @zzj
    /* loaded from: classes3.dex */
    public static final class PendingPurchaseUpdate {

        /* renamed from: a */
        public final JSONObject f13479a;

        public PendingPurchaseUpdate(JSONObject jSONObject) {
            this.f13479a = jSONObject;
        }

        @NonNull
        public List<String> getProducts() {
            JSONArray optJSONArray;
            ArrayList arrayList = new ArrayList();
            if (this.f13479a.has("productIds") && (optJSONArray = this.f13479a.optJSONArray("productIds")) != null) {
                for (int i = 0; i < optJSONArray.length(); i++) {
                    arrayList.add(optJSONArray.optString(i));
                }
            }
            return arrayList;
        }

        @NonNull
        public String getPurchaseToken() {
            return this.f13479a.optString("purchaseToken");
        }
    }

    @Retention(RetentionPolicy.SOURCE)
    /* loaded from: classes3.dex */
    public @interface PurchaseState {
        public static final int PENDING = 2;
        public static final int PURCHASED = 1;
        public static final int UNSPECIFIED_STATE = 0;
    }

    public Purchase(@NonNull String str, @NonNull String str2) throws JSONException {
        this.f13476a = str;
        this.f13477b = str2;
        this.f13478c = new JSONObject(str);
    }

    /* renamed from: a */
    public final ArrayList m7775a() {
        ArrayList arrayList = new ArrayList();
        if (this.f13478c.has("productIds")) {
            JSONArray optJSONArray = this.f13478c.optJSONArray("productIds");
            if (optJSONArray != null) {
                for (int i = 0; i < optJSONArray.length(); i++) {
                    arrayList.add(optJSONArray.optString(i));
                }
            }
        } else if (this.f13478c.has(Constants.KEY_GOOGLE_PRODUCT_ID)) {
            arrayList.add(this.f13478c.optString(Constants.KEY_GOOGLE_PRODUCT_ID));
        }
        return arrayList;
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof Purchase)) {
            return false;
        }
        Purchase purchase = (Purchase) obj;
        return TextUtils.equals(this.f13476a, purchase.getOriginalJson()) && TextUtils.equals(this.f13477b, purchase.getSignature());
    }

    @Nullable
    public AccountIdentifiers getAccountIdentifiers() {
        JSONObject jSONObject = this.f13478c;
        String optString = jSONObject.optString("obfuscatedAccountId");
        String optString2 = jSONObject.optString("obfuscatedProfileId");
        if (optString == null && optString2 == null) {
            return null;
        }
        return new AccountIdentifiers(optString, optString2);
    }

    @NonNull
    public String getDeveloperPayload() {
        return this.f13478c.optString("developerPayload");
    }

    @Nullable
    public String getOrderId() {
        String optString = this.f13478c.optString("orderId");
        if (TextUtils.isEmpty(optString)) {
            return null;
        }
        return optString;
    }

    @NonNull
    public String getOriginalJson() {
        return this.f13476a;
    }

    @NonNull
    public String getPackageName() {
        return this.f13478c.optString(MessageConst.KEY_PACKAGE_NAME);
    }

    @Nullable
    @zzj
    public PendingPurchaseUpdate getPendingPurchaseUpdate() {
        JSONObject optJSONObject = this.f13478c.optJSONObject("pendingPurchaseUpdate");
        if (optJSONObject == null) {
            return null;
        }
        return new PendingPurchaseUpdate(optJSONObject);
    }

    @NonNull
    public List<String> getProducts() {
        return m7775a();
    }

    public int getPurchaseState() {
        return this.f13478c.optInt("purchaseState", 1) != 4 ? 1 : 2;
    }

    public long getPurchaseTime() {
        return this.f13478c.optLong("purchaseTime");
    }

    @NonNull
    public String getPurchaseToken() {
        JSONObject jSONObject = this.f13478c;
        return jSONObject.optString("token", jSONObject.optString("purchaseToken"));
    }

    public int getQuantity() {
        return this.f13478c.optInt(FirebaseAnalytics.Param.QUANTITY, 1);
    }

    @NonNull
    public String getSignature() {
        return this.f13477b;
    }

    @NonNull
    @Deprecated
    public ArrayList<String> getSkus() {
        return m7775a();
    }

    public int hashCode() {
        return this.f13476a.hashCode();
    }

    public boolean isAcknowledged() {
        return this.f13478c.optBoolean("acknowledged", true);
    }

    public boolean isAutoRenewing() {
        return this.f13478c.optBoolean("autoRenewing");
    }

    @NonNull
    public String toString() {
        return "Purchase. Json: ".concat(String.valueOf(this.f13476a));
    }
}
