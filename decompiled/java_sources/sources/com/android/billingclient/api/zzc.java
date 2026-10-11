package com.android.billingclient.api;

import androidx.annotation.Nullable;
import com.onyx.android.sdk.pay.constants.Constants;
import java.util.Objects;
import org.json.JSONObject;

/* loaded from: classes3.dex */
public final class zzc {

    /* renamed from: a */
    public final String f13595a;

    /* renamed from: b */
    public final String f13596b;

    /* renamed from: c */
    @Nullable
    public final String f13597c;

    public /* synthetic */ zzc(JSONObject jSONObject, zzd zzdVar) {
        this.f13595a = jSONObject.optString(Constants.KEY_GOOGLE_PRODUCT_ID);
        this.f13596b = jSONObject.optString("productType");
        String optString = jSONObject.optString("offerToken");
        this.f13597c = true == optString.isEmpty() ? null : optString;
    }

    public final boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof zzc)) {
            return false;
        }
        zzc zzcVar = (zzc) obj;
        return this.f13595a.equals(zzcVar.f13595a) && this.f13596b.equals(zzcVar.f13596b) && Objects.equals(this.f13597c, zzcVar.f13597c);
    }

    public final int hashCode() {
        return Objects.hash(this.f13595a, this.f13596b, this.f13597c);
    }

    public final String toString() {
        return String.format("{id: %s, type: %s, offer token: %s}", this.f13595a, this.f13596b, this.f13597c);
    }
}
