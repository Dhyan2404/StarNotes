package com.android.billingclient.api;

import androidx.annotation.NonNull;
import java.util.HashSet;
import java.util.List;

/* loaded from: classes3.dex */
public final class QueryProductDetailsParams {

    /* renamed from: a */
    public final com.google.android.gms.internal.play_billing.zzco f13487a;

    /* loaded from: classes3.dex */
    public static class Builder {

        /* renamed from: a */
        public com.google.android.gms.internal.play_billing.zzco f13488a;

        public Builder() {
            throw null;
        }

        @NonNull
        public QueryProductDetailsParams build() {
            if (this.f13488a != null) {
                return new QueryProductDetailsParams(this, null);
            }
            throw new IllegalArgumentException("Product list must be set to a non empty list.");
        }

        @NonNull
        public Builder setProductList(@NonNull List<Product> list) {
            if (list == null || list.isEmpty()) {
                throw new IllegalArgumentException("Product list cannot be empty.");
            }
            HashSet hashSet = new HashSet();
            for (Product product : list) {
                if (!"play_pass_subs".equals(product.zzb())) {
                    hashSet.add(product.zzb());
                }
            }
            if (hashSet.size() > 1) {
                throw new IllegalArgumentException("All products should be of the same product type.");
            }
            this.f13488a = com.google.android.gms.internal.play_billing.zzco.zzk(list);
            return this;
        }

        public /* synthetic */ Builder(zzcz zzczVar) {
        }
    }

    /* loaded from: classes3.dex */
    public static class Product {

        /* renamed from: a */
        public final String f13489a;

        /* renamed from: b */
        public final String f13490b;

        /* loaded from: classes3.dex */
        public static class Builder {

            /* renamed from: a */
            public String f13491a;

            /* renamed from: b */
            public String f13492b;

            public Builder() {
                throw null;
            }

            @NonNull
            public Product build() {
                if ("first_party".equals(this.f13492b)) {
                    throw new IllegalArgumentException("Serialized doc id must be provided for first party products.");
                }
                if (this.f13491a == null) {
                    throw new IllegalArgumentException("Product id must be provided.");
                }
                if (this.f13492b != null) {
                    return new Product(this, null);
                }
                throw new IllegalArgumentException("Product type must be provided.");
            }

            @NonNull
            public Builder setProductId(@NonNull String str) {
                this.f13491a = str;
                return this;
            }

            @NonNull
            public Builder setProductType(@NonNull String str) {
                this.f13492b = str;
                return this;
            }

            public /* synthetic */ Builder(zzcz zzczVar) {
            }
        }

        public /* synthetic */ Product(Builder builder, zzcz zzczVar) {
            this.f13489a = builder.f13491a;
            this.f13490b = builder.f13492b;
        }

        @NonNull
        public static Builder newBuilder() {
            return new Builder(null);
        }

        @NonNull
        public final String zza() {
            return this.f13489a;
        }

        @NonNull
        public final String zzb() {
            return this.f13490b;
        }
    }

    public /* synthetic */ QueryProductDetailsParams(Builder builder, zzcz zzczVar) {
        this.f13487a = builder.f13488a;
    }

    @NonNull
    public static Builder newBuilder() {
        return new Builder(null);
    }

    public final com.google.android.gms.internal.play_billing.zzco zza() {
        return this.f13487a;
    }

    @NonNull
    public final String zzb() {
        return ((Product) this.f13487a.get(0)).zzb();
    }
}
