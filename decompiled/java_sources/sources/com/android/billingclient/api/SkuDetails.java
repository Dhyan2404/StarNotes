package com.android.billingclient.api;

import android.text.TextUtils;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.google.firebase.analytics.FirebaseAnalytics;
import com.onyx.android.sdk.pay.constants.Constants;
import com.onyx.galaxy.note.message.data.MessageConst;
import org.json.JSONException;
import org.json.JSONObject;

@Deprecated
/* loaded from: classes3.dex */
public class SkuDetails {

    /* renamed from: a */
    public final String f13497a;

    /* renamed from: b */
    public final JSONObject f13498b;

    public SkuDetails(@NonNull String str) throws JSONException {
        this.f13497a = str;
        JSONObject jSONObject = new JSONObject(str);
        this.f13498b = jSONObject;
        if (TextUtils.isEmpty(jSONObject.optString(Constants.KEY_GOOGLE_PRODUCT_ID))) {
            throw new IllegalArgumentException("SKU cannot be empty.");
        }
        if (TextUtils.isEmpty(jSONObject.optString("type"))) {
            throw new IllegalArgumentException("SkuType cannot be empty.");
        }
    }

    /* renamed from: a */
    public final String m7782a() {
        return this.f13498b.optString("skuDetailsToken");
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof SkuDetails) {
            return TextUtils.equals(this.f13497a, ((SkuDetails) obj).f13497a);
        }
        return false;
    }

    @NonNull
    public String getDescription() {
        return this.f13498b.optString("description");
    }

    @NonNull
    public String getFreeTrialPeriod() {
        return this.f13498b.optString("freeTrialPeriod");
    }

    @NonNull
    public String getIconUrl() {
        return this.f13498b.optString("iconUrl");
    }

    @NonNull
    public String getIntroductoryPrice() {
        return this.f13498b.optString("introductoryPrice");
    }

    public long getIntroductoryPriceAmountMicros() {
        return this.f13498b.optLong("introductoryPriceAmountMicros");
    }

    public int getIntroductoryPriceCycles() {
        return this.f13498b.optInt("introductoryPriceCycles");
    }

    @NonNull
    public String getIntroductoryPricePeriod() {
        return this.f13498b.optString("introductoryPricePeriod");
    }

    @NonNull
    public String getOriginalJson() {
        return this.f13497a;
    }

    @NonNull
    public String getOriginalPrice() {
        return this.f13498b.has("original_price") ? this.f13498b.optString("original_price") : getPrice();
    }

    public long getOriginalPriceAmountMicros() {
        return this.f13498b.has("original_price_micros") ? this.f13498b.optLong("original_price_micros") : getPriceAmountMicros();
    }

    @NonNull
    public String getPrice() {
        return this.f13498b.optString(FirebaseAnalytics.Param.PRICE);
    }

    public long getPriceAmountMicros() {
        return this.f13498b.optLong("price_amount_micros");
    }

    @NonNull
    public String getPriceCurrencyCode() {
        return this.f13498b.optString("price_currency_code");
    }

    @NonNull
    public String getSku() {
        return this.f13498b.optString(Constants.KEY_GOOGLE_PRODUCT_ID);
    }

    @NonNull
    public String getSubscriptionPeriod() {
        return this.f13498b.optString("subscriptionPeriod");
    }

    @NonNull
    public String getTitle() {
        return this.f13498b.optString("title");
    }

    @NonNull
    public String getType() {
        return this.f13498b.optString("type");
    }

    public int hashCode() {
        return this.f13497a.hashCode();
    }

    @NonNull
    public String toString() {
        return "SkuDetails: ".concat(String.valueOf(this.f13497a));
    }

    public int zza() {
        return this.f13498b.optInt("offer_type");
    }

    @NonNull
    public String zzb() {
        return this.f13498b.optString("offer_id");
    }

    @NonNull
    public String zzc() {
        String optString = this.f13498b.optString("offerIdToken");
        return optString.isEmpty() ? this.f13498b.optString("offer_id_token") : optString;
    }

    @NonNull
    public final String zzd() {
        return this.f13498b.optString(MessageConst.KEY_PACKAGE_NAME);
    }

    @NonNull
    public String zze() {
        return this.f13498b.optString("serializedDocid");
    }
}
