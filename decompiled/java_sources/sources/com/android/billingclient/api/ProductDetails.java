package com.android.billingclient.api;

import android.text.TextUtils;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
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
public final class ProductDetails {

    /* renamed from: a */
    public final String f13425a;

    /* renamed from: b */
    public final JSONObject f13426b;

    /* renamed from: c */
    public final String f13427c;

    /* renamed from: d */
    public final String f13428d;

    /* renamed from: e */
    public final String f13429e;

    /* renamed from: f */
    public final String f13430f;

    /* renamed from: g */
    public final String f13431g;

    /* renamed from: h */
    public final String f13432h;

    /* renamed from: i */
    @Nullable
    public final String f13433i;

    /* renamed from: j */
    @Nullable
    public final List f13434j;

    /* renamed from: k */
    @Nullable
    public final List f13435k;

    @zzi
    /* loaded from: classes3.dex */
    public static final class InstallmentPlanDetails {

        /* renamed from: a */
        public final int f13436a;

        /* renamed from: b */
        public final int f13437b;

        public InstallmentPlanDetails(JSONObject jSONObject) throws JSONException {
            this.f13436a = jSONObject.getInt("commitmentPaymentsCount");
            this.f13437b = jSONObject.optInt("subsequentCommitmentPaymentsCount");
        }

        @zzi
        public int getInstallmentPlanCommitmentPaymentsCount() {
            return this.f13436a;
        }

        @zzi
        public int getSubsequentInstallmentPlanCommitmentPaymentsCount() {
            return this.f13437b;
        }
    }

    /* loaded from: classes3.dex */
    public static final class OneTimePurchaseOfferDetails {

        /* renamed from: a */
        public final String f13438a;

        /* renamed from: b */
        public final long f13439b;

        /* renamed from: c */
        public final String f13440c;

        /* renamed from: d */
        @Nullable
        public final String f13441d;

        /* renamed from: e */
        @Nullable
        public final String f13442e;

        /* renamed from: f */
        @Nullable
        public final zzcs f13443f;

        public OneTimePurchaseOfferDetails(JSONObject jSONObject) throws JSONException {
            this.f13438a = jSONObject.optString("formattedPrice");
            this.f13439b = jSONObject.optLong("priceAmountMicros");
            this.f13440c = jSONObject.optString("priceCurrencyCode");
            String optString = jSONObject.optString("offerIdToken");
            this.f13441d = true == optString.isEmpty() ? null : optString;
            jSONObject.optString("offerId").isEmpty();
            jSONObject.optString("purchaseOptionId").isEmpty();
            jSONObject.optInt("offerType");
            JSONArray optJSONArray = jSONObject.optJSONArray("offerTags");
            ArrayList arrayList = new ArrayList();
            if (optJSONArray != null) {
                for (int i = 0; i < optJSONArray.length(); i++) {
                    arrayList.add(optJSONArray.getString(i));
                }
            }
            com.google.android.gms.internal.play_billing.zzco.zzk(arrayList);
            if (jSONObject.has("fullPriceMicros")) {
                jSONObject.optLong("fullPriceMicros");
            }
            JSONObject optJSONObject = jSONObject.optJSONObject("discountDisplayInfo");
            if (optJSONObject != null) {
                optJSONObject.getInt("percentageDiscount");
            }
            JSONObject optJSONObject2 = jSONObject.optJSONObject("validTimeWindow");
            if (optJSONObject2 != null) {
                optJSONObject2.getLong("startTimeMillis");
                optJSONObject2.getLong("endTimeMillis");
            }
            JSONObject optJSONObject3 = jSONObject.optJSONObject("limitedQuantityInfo");
            if (optJSONObject3 != null) {
                optJSONObject3.getInt("maximumQuantity");
                optJSONObject3.getInt("remainingQuantity");
            }
            this.f13442e = jSONObject.optString("serializedDocid");
            JSONObject optJSONObject4 = jSONObject.optJSONObject("preorderDetails");
            if (optJSONObject4 != null) {
                optJSONObject4.getLong("preorderReleaseTimeMillis");
                optJSONObject4.getLong("preorderPresaleEndTimeMillis");
            }
            JSONObject optJSONObject5 = jSONObject.optJSONObject("rentalDetails");
            if (optJSONObject5 != null) {
                optJSONObject5.getString("rentalPeriod");
                optJSONObject5.optString("rentalExpirationPeriod").isEmpty();
            }
            JSONObject optJSONObject6 = jSONObject.optJSONObject("autoPayDetails");
            this.f13443f = optJSONObject6 != null ? new zzcs(optJSONObject6) : null;
        }

        @Nullable
        /* renamed from: a */
        public final String m7770a() {
            return this.f13442e;
        }

        @NonNull
        public String getFormattedPrice() {
            return this.f13438a;
        }

        public long getPriceAmountMicros() {
            return this.f13439b;
        }

        @NonNull
        public String getPriceCurrencyCode() {
            return this.f13440c;
        }

        @Nullable
        public final zzcs zza() {
            return this.f13443f;
        }

        @Nullable
        public final String zzb() {
            return this.f13441d;
        }
    }

    /* loaded from: classes3.dex */
    public static final class PricingPhase {

        /* renamed from: a */
        public final String f13444a;

        /* renamed from: b */
        public final long f13445b;

        /* renamed from: c */
        public final String f13446c;

        /* renamed from: d */
        public final String f13447d;

        /* renamed from: e */
        public final int f13448e;

        /* renamed from: f */
        public final int f13449f;

        public PricingPhase(JSONObject jSONObject) {
            this.f13447d = jSONObject.optString("billingPeriod");
            this.f13446c = jSONObject.optString("priceCurrencyCode");
            this.f13444a = jSONObject.optString("formattedPrice");
            this.f13445b = jSONObject.optLong("priceAmountMicros");
            this.f13449f = jSONObject.optInt("recurrenceMode");
            this.f13448e = jSONObject.optInt("billingCycleCount");
        }

        public int getBillingCycleCount() {
            return this.f13448e;
        }

        @NonNull
        public String getBillingPeriod() {
            return this.f13447d;
        }

        @NonNull
        public String getFormattedPrice() {
            return this.f13444a;
        }

        public long getPriceAmountMicros() {
            return this.f13445b;
        }

        @NonNull
        public String getPriceCurrencyCode() {
            return this.f13446c;
        }

        public int getRecurrenceMode() {
            return this.f13449f;
        }
    }

    /* loaded from: classes3.dex */
    public static class PricingPhases {

        /* renamed from: a */
        public final List f13450a;

        public PricingPhases(JSONArray jSONArray) {
            ArrayList arrayList = new ArrayList();
            if (jSONArray != null) {
                for (int i = 0; i < jSONArray.length(); i++) {
                    JSONObject optJSONObject = jSONArray.optJSONObject(i);
                    if (optJSONObject != null) {
                        arrayList.add(new PricingPhase(optJSONObject));
                    }
                }
            }
            this.f13450a = arrayList;
        }

        @NonNull
        public List<PricingPhase> getPricingPhaseList() {
            return this.f13450a;
        }
    }

    @Retention(RetentionPolicy.SOURCE)
    /* loaded from: classes3.dex */
    public @interface RecurrenceMode {
        public static final int FINITE_RECURRING = 2;
        public static final int INFINITE_RECURRING = 1;
        public static final int NON_RECURRING = 3;
    }

    /* loaded from: classes3.dex */
    public static final class SubscriptionOfferDetails {

        /* renamed from: a */
        public final String f13451a;

        /* renamed from: b */
        @Nullable
        public final String f13452b;

        /* renamed from: c */
        public final String f13453c;

        /* renamed from: d */
        public final PricingPhases f13454d;

        /* renamed from: e */
        public final List f13455e;

        /* renamed from: f */
        @Nullable
        public final InstallmentPlanDetails f13456f;

        public SubscriptionOfferDetails(JSONObject jSONObject) throws JSONException {
            this.f13451a = jSONObject.optString("basePlanId");
            String optString = jSONObject.optString("offerId");
            this.f13452b = true == optString.isEmpty() ? null : optString;
            this.f13453c = jSONObject.getString("offerIdToken");
            this.f13454d = new PricingPhases(jSONObject.getJSONArray("pricingPhases"));
            JSONObject optJSONObject = jSONObject.optJSONObject("installmentPlanDetails");
            this.f13456f = optJSONObject != null ? new InstallmentPlanDetails(optJSONObject) : null;
            JSONObject optJSONObject2 = jSONObject.optJSONObject("transitionPlanDetails");
            if (optJSONObject2 != null) {
                optJSONObject2.getString(Constants.KEY_GOOGLE_PRODUCT_ID);
                optJSONObject2.optString("title");
                optJSONObject2.optString("name");
                optJSONObject2.optString("description");
                optJSONObject2.optString("basePlanId");
                JSONObject optJSONObject3 = optJSONObject2.optJSONObject("pricingPhase");
                if (optJSONObject3 != null) {
                    new PricingPhase(optJSONObject3);
                }
            }
            ArrayList arrayList = new ArrayList();
            JSONArray optJSONArray = jSONObject.optJSONArray("offerTags");
            if (optJSONArray != null) {
                for (int i = 0; i < optJSONArray.length(); i++) {
                    arrayList.add(optJSONArray.getString(i));
                }
            }
            this.f13455e = arrayList;
        }

        @NonNull
        public String getBasePlanId() {
            return this.f13451a;
        }

        @Nullable
        @zzi
        public InstallmentPlanDetails getInstallmentPlanDetails() {
            return this.f13456f;
        }

        @Nullable
        public String getOfferId() {
            return this.f13452b;
        }

        @NonNull
        public List<String> getOfferTags() {
            return this.f13455e;
        }

        @NonNull
        public String getOfferToken() {
            return this.f13453c;
        }

        @NonNull
        public PricingPhases getPricingPhases() {
            return this.f13454d;
        }
    }

    public ProductDetails(String str) throws JSONException {
        this.f13425a = str;
        JSONObject jSONObject = new JSONObject(str);
        this.f13426b = jSONObject;
        String optString = jSONObject.optString(Constants.KEY_GOOGLE_PRODUCT_ID);
        this.f13427c = optString;
        String optString2 = jSONObject.optString("type");
        this.f13428d = optString2;
        if (TextUtils.isEmpty(optString)) {
            throw new IllegalArgumentException("Product id cannot be empty.");
        }
        if (TextUtils.isEmpty(optString2)) {
            throw new IllegalArgumentException("Product type cannot be empty.");
        }
        this.f13429e = jSONObject.optString("title");
        this.f13430f = jSONObject.optString("name");
        this.f13431g = jSONObject.optString("description");
        jSONObject.optString("packageDisplayName");
        jSONObject.optString("iconUrl");
        this.f13432h = jSONObject.optString("skuDetailsToken");
        this.f13433i = jSONObject.optString("serializedDocid");
        JSONArray optJSONArray = jSONObject.optJSONArray("subscriptionOfferDetails");
        if (optJSONArray != null) {
            ArrayList arrayList = new ArrayList();
            for (int i = 0; i < optJSONArray.length(); i++) {
                arrayList.add(new SubscriptionOfferDetails(optJSONArray.getJSONObject(i)));
            }
            this.f13434j = arrayList;
        } else {
            this.f13434j = (optString2.equals("subs") || optString2.equals("play_pass_subs")) ? new ArrayList() : null;
        }
        JSONObject optJSONObject = this.f13426b.optJSONObject("oneTimePurchaseOfferDetails");
        JSONArray optJSONArray2 = this.f13426b.optJSONArray("oneTimePurchaseOfferDetailsList");
        ArrayList arrayList2 = new ArrayList();
        if (optJSONArray2 != null) {
            for (int i2 = 0; i2 < optJSONArray2.length(); i2++) {
                arrayList2.add(new OneTimePurchaseOfferDetails(optJSONArray2.getJSONObject(i2)));
            }
            this.f13435k = arrayList2;
            return;
        }
        if (optJSONObject == null) {
            this.f13435k = null;
        } else {
            arrayList2.add(new OneTimePurchaseOfferDetails(optJSONObject));
            this.f13435k = arrayList2;
        }
    }

    /* renamed from: a */
    public final String m7768a() {
        return this.f13432h;
    }

    @Nullable
    /* renamed from: b */
    public final List m7769b() {
        return this.f13435k;
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof ProductDetails) {
            return TextUtils.equals(this.f13425a, ((ProductDetails) obj).f13425a);
        }
        return false;
    }

    @NonNull
    public String getDescription() {
        return this.f13431g;
    }

    @NonNull
    public String getName() {
        return this.f13430f;
    }

    @Nullable
    public OneTimePurchaseOfferDetails getOneTimePurchaseOfferDetails() {
        List list = this.f13435k;
        if (list == null || list.isEmpty()) {
            return null;
        }
        return (OneTimePurchaseOfferDetails) this.f13435k.get(0);
    }

    @NonNull
    public String getProductId() {
        return this.f13427c;
    }

    @NonNull
    public String getProductType() {
        return this.f13428d;
    }

    @Nullable
    public List<SubscriptionOfferDetails> getSubscriptionOfferDetails() {
        return this.f13434j;
    }

    @NonNull
    public String getTitle() {
        return this.f13429e;
    }

    public int hashCode() {
        return this.f13425a.hashCode();
    }

    @NonNull
    public String toString() {
        List list = this.f13434j;
        return "ProductDetails{jsonString='" + this.f13425a + "', parsedJson=" + this.f13426b.toString() + ", productId='" + this.f13427c + "', productType='" + this.f13428d + "', title='" + this.f13429e + "', productDetailsToken='" + this.f13432h + "', subscriptionOfferDetails=" + String.valueOf(list) + "}";
    }

    @NonNull
    public final String zza() {
        return this.f13426b.optString(MessageConst.KEY_PACKAGE_NAME);
    }

    @Nullable
    public String zzc() {
        return this.f13433i;
    }
}
