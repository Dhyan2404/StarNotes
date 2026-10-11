package com.android.billingclient.api;

import androidx.annotation.NonNull;

/* loaded from: classes3.dex */
public final class QueryPurchaseHistoryParams {

    /* renamed from: a */
    public final String f13493a;

    /* loaded from: classes3.dex */
    public static class Builder {

        /* renamed from: a */
        public String f13494a;

        public Builder() {
            throw null;
        }

        @NonNull
        public QueryPurchaseHistoryParams build() {
            if (this.f13494a != null) {
                return new QueryPurchaseHistoryParams(this, null);
            }
            throw new IllegalArgumentException("Product type must be set");
        }

        @NonNull
        public Builder setProductType(@NonNull String str) {
            this.f13494a = str;
            return this;
        }

        public /* synthetic */ Builder(zzda zzdaVar) {
        }
    }

    public /* synthetic */ QueryPurchaseHistoryParams(Builder builder, zzda zzdaVar) {
        this.f13493a = builder.f13494a;
    }

    @NonNull
    public static Builder newBuilder() {
        return new Builder(null);
    }

    @NonNull
    public final String zza() {
        return this.f13493a;
    }
}
