package com.android.billingclient.api;

import androidx.annotation.NonNull;

/* loaded from: classes3.dex */
public final class QueryPurchasesParams {

    /* renamed from: a */
    public final String f13495a;

    /* loaded from: classes3.dex */
    public static class Builder {

        /* renamed from: a */
        public String f13496a;

        public Builder() {
            throw null;
        }

        @NonNull
        public QueryPurchasesParams build() {
            if (this.f13496a != null) {
                return new QueryPurchasesParams(this, null);
            }
            throw new IllegalArgumentException("Product type must be set");
        }

        @NonNull
        public Builder setProductType(@NonNull String str) {
            this.f13496a = str;
            return this;
        }

        public /* synthetic */ Builder(zzdb zzdbVar) {
        }
    }

    public /* synthetic */ QueryPurchasesParams(Builder builder, zzdb zzdbVar) {
        this.f13495a = builder.f13496a;
    }

    @NonNull
    public static Builder newBuilder() {
        return new Builder(null);
    }

    @NonNull
    public final String zza() {
        return this.f13495a;
    }
}
