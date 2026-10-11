package com.android.billingclient.api;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.onyx.android.sdk.pay.constants.Constants;
import java.util.ArrayList;
import java.util.List;
import java.util.Objects;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

@zzk
/* loaded from: classes3.dex */
public final class UserChoiceDetails {

    /* renamed from: a */
    public final String f13505a;

    /* renamed from: b */
    public final JSONObject f13506b;

    /* renamed from: c */
    public final List<Product> f13507c;

    public UserChoiceDetails(String str) throws JSONException {
        this.f13505a = str;
        JSONObject jSONObject = new JSONObject(str);
        this.f13506b = jSONObject;
        this.f13507c = m7785a(jSONObject.optJSONArray("products"));
    }

    /* renamed from: a */
    public static List<Product> m7785a(@Nullable JSONArray jSONArray) {
        ArrayList arrayList = new ArrayList();
        if (jSONArray != null) {
            for (int i = 0; i < jSONArray.length(); i++) {
                JSONObject optJSONObject = jSONArray.optJSONObject(i);
                if (optJSONObject != null) {
                    arrayList.add(new Product(optJSONObject));
                }
            }
        }
        return arrayList;
    }

    @NonNull
    public String getExternalTransactionToken() {
        return this.f13506b.optString("externalTransactionToken");
    }

    @Nullable
    public String getOriginalExternalTransactionId() {
        String optString = this.f13506b.optString("originalExternalTransactionId");
        if (optString.isEmpty()) {
            return null;
        }
        return optString;
    }

    @NonNull
    public List<Product> getProducts() {
        return this.f13507c;
    }

    @zzk
    /* loaded from: classes3.dex */
    public static class Product {

        /* renamed from: a */
        public final String f13508a;

        /* renamed from: b */
        public final String f13509b;

        /* renamed from: c */
        @Nullable
        public final String f13510c;

        public Product(String str, String str2, @Nullable String str3) {
            this.f13508a = str;
            this.f13509b = str2;
            this.f13510c = str3;
        }

        public boolean equals(@Nullable Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof Product)) {
                return false;
            }
            Product product = (Product) obj;
            return this.f13508a.equals(product.getId()) && this.f13509b.equals(product.getType()) && Objects.equals(this.f13510c, product.getOfferToken());
        }

        @NonNull
        public String getId() {
            return this.f13508a;
        }

        @Nullable
        public String getOfferToken() {
            return this.f13510c;
        }

        @NonNull
        public String getType() {
            return this.f13509b;
        }

        public int hashCode() {
            return Objects.hash(this.f13508a, this.f13509b, this.f13510c);
        }

        @NonNull
        public String toString() {
            return String.format("{id: %s, type: %s, offer token: %s}", this.f13508a, this.f13509b, this.f13510c);
        }

        public Product(JSONObject jSONObject) {
            this.f13508a = jSONObject.optString(Constants.KEY_GOOGLE_PRODUCT_ID);
            this.f13509b = jSONObject.optString("productType");
            String optString = jSONObject.optString("offerToken");
            this.f13510c = true == optString.isEmpty() ? null : optString;
        }
    }
}
