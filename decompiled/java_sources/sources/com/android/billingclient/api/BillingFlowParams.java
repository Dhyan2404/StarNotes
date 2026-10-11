package com.android.billingclient.api;

import android.text.TextUtils;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.android.billingclient.api.BillingFlowParams;
import com.android.billingclient.api.ProductDetails;
import com.google.android.gms.internal.play_billing.zzbe;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.function.Consumer;
import java.util.function.Predicate;

/* loaded from: classes3.dex */
public class BillingFlowParams {

    @NonNull
    public static final String EXTRA_PARAM_KEY_ACCOUNT_ID = "accountId";

    /* renamed from: a */
    public boolean f13380a;

    /* renamed from: b */
    public String f13381b;

    /* renamed from: c */
    public String f13382c;

    /* renamed from: d */
    public SubscriptionUpdateParams f13383d;

    /* renamed from: e */
    public com.google.android.gms.internal.play_billing.zzco f13384e;

    /* renamed from: f */
    public ArrayList f13385f;

    /* renamed from: g */
    public boolean f13386g;

    /* loaded from: classes3.dex */
    public static class Builder {

        /* renamed from: a */
        public String f13387a;

        /* renamed from: b */
        public String f13388b;

        /* renamed from: c */
        public List f13389c;

        /* renamed from: d */
        public ArrayList f13390d;

        /* renamed from: e */
        public boolean f13391e;

        /* renamed from: f */
        public SubscriptionUpdateParams.Builder f13392f;

        public Builder() {
            SubscriptionUpdateParams.Builder newBuilder = SubscriptionUpdateParams.newBuilder();
            SubscriptionUpdateParams.Builder.m7761a(newBuilder);
            this.f13392f = newBuilder;
        }

        @NonNull
        public BillingFlowParams build() {
            ArrayList arrayList = this.f13390d;
            boolean z = true;
            boolean z2 = (arrayList == null || arrayList.isEmpty()) ? false : true;
            List list = this.f13389c;
            boolean z3 = (list == null || list.isEmpty()) ? false : true;
            if (!z2 && !z3) {
                throw new IllegalArgumentException("Details of the products must be provided.");
            }
            if (z2 && z3) {
                throw new IllegalArgumentException("Set SkuDetails or ProductDetailsParams, not both.");
            }
            zzcf zzcfVar = null;
            if (!z2) {
                this.f13389c.forEach(new Consumer() { // from class: com.android.billingclient.api.zzce
                    @Override // java.util.function.Consumer
                    public final void accept(Object obj) {
                        if (((BillingFlowParams.ProductDetailsParams) obj) == null) {
                            throw new IllegalArgumentException("ProductDetailsParams cannot be null.");
                        }
                    }
                });
            } else {
                if (this.f13390d.contains(null)) {
                    throw new IllegalArgumentException("SKU cannot be null.");
                }
                if (this.f13390d.size() > 1) {
                    SkuDetails skuDetails = (SkuDetails) this.f13390d.get(0);
                    String type = skuDetails.getType();
                    ArrayList arrayList2 = this.f13390d;
                    int size = arrayList2.size();
                    for (int i = 0; i < size; i++) {
                        SkuDetails skuDetails2 = (SkuDetails) arrayList2.get(i);
                        if (!type.equals("play_pass_subs") && !skuDetails2.getType().equals("play_pass_subs") && !type.equals(skuDetails2.getType())) {
                            throw new IllegalArgumentException("SKUs should have the same type.");
                        }
                    }
                    String zzd = skuDetails.zzd();
                    ArrayList arrayList3 = this.f13390d;
                    int size2 = arrayList3.size();
                    for (int i2 = 0; i2 < size2; i2++) {
                        SkuDetails skuDetails3 = (SkuDetails) arrayList3.get(i2);
                        if (!type.equals("play_pass_subs") && !skuDetails3.getType().equals("play_pass_subs") && !zzd.equals(skuDetails3.zzd())) {
                            throw new IllegalArgumentException("All SKUs must have the same package name.");
                        }
                    }
                }
            }
            BillingFlowParams billingFlowParams = new BillingFlowParams(zzcfVar);
            if ((!z2 || ((SkuDetails) this.f13390d.get(0)).zzd().isEmpty()) && (!z3 || ((ProductDetailsParams) this.f13389c.get(0)).zza().zza().isEmpty())) {
                z = false;
            }
            billingFlowParams.f13380a = z;
            billingFlowParams.f13381b = this.f13387a;
            billingFlowParams.f13382c = this.f13388b;
            billingFlowParams.f13383d = this.f13392f.build();
            ArrayList arrayList4 = this.f13390d;
            billingFlowParams.f13385f = arrayList4 != null ? new ArrayList(arrayList4) : new ArrayList();
            billingFlowParams.f13386g = this.f13391e;
            List list2 = this.f13389c;
            billingFlowParams.f13384e = list2 != null ? com.google.android.gms.internal.play_billing.zzco.zzk(list2) : com.google.android.gms.internal.play_billing.zzco.zzl();
            return billingFlowParams;
        }

        @NonNull
        public Builder setIsOfferPersonalized(boolean z) {
            this.f13391e = z;
            return this;
        }

        @NonNull
        public Builder setObfuscatedAccountId(@NonNull String str) {
            this.f13387a = str;
            return this;
        }

        @NonNull
        public Builder setObfuscatedProfileId(@NonNull String str) {
            this.f13388b = str;
            return this;
        }

        @NonNull
        public Builder setProductDetailsParamsList(@NonNull List<ProductDetailsParams> list) {
            this.f13389c = new ArrayList(list);
            return this;
        }

        @NonNull
        @Deprecated
        public Builder setSkuDetails(@NonNull SkuDetails skuDetails) {
            ArrayList arrayList = new ArrayList();
            arrayList.add(skuDetails);
            this.f13390d = arrayList;
            return this;
        }

        @NonNull
        public Builder setSubscriptionUpdateParams(@NonNull SubscriptionUpdateParams subscriptionUpdateParams) {
            this.f13392f = SubscriptionUpdateParams.m7754b(subscriptionUpdateParams);
            return this;
        }

        public /* synthetic */ Builder(zzcf zzcfVar) {
            SubscriptionUpdateParams.Builder newBuilder = SubscriptionUpdateParams.newBuilder();
            SubscriptionUpdateParams.Builder.m7761a(newBuilder);
            this.f13392f = newBuilder;
        }
    }

    /* loaded from: classes3.dex */
    public static final class ProductDetailsParams {

        /* renamed from: a */
        public final ProductDetails f13393a;

        /* renamed from: b */
        @Nullable
        public final String f13394b;

        /* loaded from: classes3.dex */
        public static class Builder {

            /* renamed from: a */
            public ProductDetails f13395a;

            /* renamed from: b */
            @Nullable
            public String f13396b;

            public Builder() {
                throw null;
            }

            @NonNull
            public ProductDetailsParams build() {
                zzbe.zzc(this.f13395a, "ProductDetails is required for constructing ProductDetailsParams.");
                if (this.f13395a.getSubscriptionOfferDetails() != null) {
                    zzbe.zzc(this.f13396b, "offerToken is required for constructing ProductDetailsParams for subscriptions.");
                }
                return new ProductDetailsParams(this, null);
            }

            @NonNull
            public Builder setOfferToken(@NonNull String str) {
                if (TextUtils.isEmpty(str)) {
                    throw new IllegalArgumentException("offerToken can not be empty");
                }
                this.f13396b = str;
                return this;
            }

            @NonNull
            public Builder setProductDetails(@NonNull ProductDetails productDetails) {
                this.f13395a = productDetails;
                if (productDetails.getOneTimePurchaseOfferDetails() != null) {
                    productDetails.getOneTimePurchaseOfferDetails().getClass();
                    ProductDetails.OneTimePurchaseOfferDetails oneTimePurchaseOfferDetails = productDetails.getOneTimePurchaseOfferDetails();
                    if (oneTimePurchaseOfferDetails.zzb() != null) {
                        this.f13396b = oneTimePurchaseOfferDetails.zzb();
                    }
                }
                return this;
            }

            public /* synthetic */ Builder(zzcf zzcfVar) {
            }
        }

        public /* synthetic */ ProductDetailsParams(Builder builder, zzcf zzcfVar) {
            this.f13393a = builder.f13395a;
            this.f13394b = builder.f13396b;
        }

        @NonNull
        public static Builder newBuilder() {
            return new Builder(null);
        }

        @NonNull
        public final ProductDetails zza() {
            return this.f13393a;
        }

        @Nullable
        public final String zzb() {
            return this.f13394b;
        }
    }

    /* loaded from: classes3.dex */
    public static class SubscriptionUpdateParams {

        /* renamed from: a */
        public String f13397a;

        /* renamed from: b */
        public String f13398b;

        /* renamed from: c */
        public int f13399c = 0;

        /* loaded from: classes3.dex */
        public static class Builder {

            /* renamed from: a */
            public String f13400a;

            /* renamed from: b */
            public String f13401b;

            /* renamed from: c */
            public boolean f13402c;

            /* renamed from: d */
            public int f13403d = 0;

            public Builder() {
            }

            /* renamed from: a */
            public static /* synthetic */ Builder m7761a(Builder builder) {
                builder.f13402c = true;
                return builder;
            }

            @NonNull
            public SubscriptionUpdateParams build() {
                zzcf zzcfVar = null;
                boolean z = (TextUtils.isEmpty(this.f13400a) && TextUtils.isEmpty(null)) ? false : true;
                boolean isEmpty = true ^ TextUtils.isEmpty(this.f13401b);
                if (z && isEmpty) {
                    throw new IllegalArgumentException("Please provide Old SKU purchase information(token/id) or original external transaction id, not both.");
                }
                if (!this.f13402c && !z && !isEmpty) {
                    throw new IllegalArgumentException("Old SKU purchase information(token/id) or original external transaction id must be provided.");
                }
                SubscriptionUpdateParams subscriptionUpdateParams = new SubscriptionUpdateParams(zzcfVar);
                subscriptionUpdateParams.f13397a = this.f13400a;
                subscriptionUpdateParams.f13399c = this.f13403d;
                subscriptionUpdateParams.f13398b = this.f13401b;
                return subscriptionUpdateParams;
            }

            @NonNull
            public Builder setOldPurchaseToken(@NonNull String str) {
                this.f13400a = str;
                return this;
            }

            @NonNull
            @zze
            public Builder setOriginalExternalTransactionId(@NonNull String str) {
                this.f13401b = str;
                return this;
            }

            @NonNull
            public Builder setSubscriptionReplacementMode(int i) {
                this.f13403d = i;
                return this;
            }

            @NonNull
            @Deprecated
            public final Builder zzb(@NonNull String str) {
                this.f13400a = str;
                return this;
            }

            public /* synthetic */ Builder(zzcf zzcfVar) {
            }
        }

        @Retention(RetentionPolicy.SOURCE)
        /* loaded from: classes3.dex */
        public @interface ReplacementMode {
            public static final int CHARGE_FULL_PRICE = 5;
            public static final int CHARGE_PRORATED_PRICE = 2;
            public static final int DEFERRED = 6;
            public static final int UNKNOWN_REPLACEMENT_MODE = 0;
            public static final int WITHOUT_PRORATION = 3;
            public static final int WITH_TIME_PRORATION = 1;
        }

        public SubscriptionUpdateParams() {
        }

        /* renamed from: b */
        public static /* bridge */ /* synthetic */ Builder m7754b(SubscriptionUpdateParams subscriptionUpdateParams) {
            Builder newBuilder = newBuilder();
            newBuilder.zzb(subscriptionUpdateParams.f13397a);
            newBuilder.setSubscriptionReplacementMode(subscriptionUpdateParams.f13399c);
            newBuilder.setOriginalExternalTransactionId(subscriptionUpdateParams.f13398b);
            return newBuilder;
        }

        @NonNull
        public static Builder newBuilder() {
            return new Builder(null);
        }

        /* renamed from: a */
        public final int m7758a() {
            return this.f13399c;
        }

        /* renamed from: c */
        public final String m7759c() {
            return this.f13397a;
        }

        /* renamed from: d */
        public final String m7760d() {
            return this.f13398b;
        }

        public /* synthetic */ SubscriptionUpdateParams(zzcf zzcfVar) {
        }
    }

    public BillingFlowParams() {
        throw null;
    }

    @NonNull
    public static Builder newBuilder() {
        return new Builder(null);
    }

    /* renamed from: a */
    public final BillingResult m7750a() {
        if (this.f13384e.isEmpty()) {
            return C1791i.f13579l;
        }
        ProductDetailsParams productDetailsParams = (ProductDetailsParams) this.f13384e.get(0);
        for (int i = 1; i < this.f13384e.size(); i++) {
            ProductDetailsParams productDetailsParams2 = (ProductDetailsParams) this.f13384e.get(i);
            if (!productDetailsParams2.zza().getProductType().equals(productDetailsParams.zza().getProductType()) && !productDetailsParams2.zza().getProductType().equals("play_pass_subs")) {
                return C1791i.m7928a(5, "All products should have same ProductType.");
            }
        }
        String zza = productDetailsParams.zza().zza();
        HashSet hashSet = new HashSet();
        HashSet hashSet2 = new HashSet();
        com.google.android.gms.internal.play_billing.zzco zzcoVar = this.f13384e;
        int size = zzcoVar.size();
        for (int i2 = 0; i2 < size; i2++) {
            ProductDetailsParams productDetailsParams3 = (ProductDetailsParams) zzcoVar.get(i2);
            productDetailsParams3.zza().getProductType().equals("subs");
            if (hashSet.contains(productDetailsParams3.zza().getProductId())) {
                return C1791i.m7928a(5, String.format("ProductId can not be duplicated. Invalid product id: %s.", productDetailsParams3.zza().getProductId()));
            }
            hashSet.add(productDetailsParams3.zza().getProductId());
            if (!productDetailsParams.zza().getProductType().equals("play_pass_subs") && !productDetailsParams3.zza().getProductType().equals("play_pass_subs") && !zza.equals(productDetailsParams3.zza().zza())) {
                return C1791i.m7928a(5, "All products must have the same package name.");
            }
        }
        Iterator it2 = hashSet2.iterator();
        while (it2.hasNext()) {
            String str = (String) it2.next();
            if (hashSet.contains(str)) {
                return C1791i.m7928a(5, String.format("OldProductId must not be one of the products to be purchased. Invalid old product id: %s.", str));
            }
        }
        ProductDetails.OneTimePurchaseOfferDetails oneTimePurchaseOfferDetails = productDetailsParams.zza().getOneTimePurchaseOfferDetails();
        return (oneTimePurchaseOfferDetails == null || oneTimePurchaseOfferDetails.zza() == null) ? C1791i.f13579l : C1791i.m7928a(5, "Both autoPayDetails and autoPayBalanceThreshold is required for constructing ProductDetailsParams for autopay.");
    }

    /* renamed from: i */
    public final boolean m7751i() {
        return (this.f13381b == null && this.f13382c == null && this.f13383d.m7760d() == null && this.f13383d.m7758a() == 0 && !this.f13384e.stream().anyMatch(new Predicate() { // from class: com.android.billingclient.api.zzcd
            @Override // java.util.function.Predicate
            public final boolean test(Object obj) {
                return false;
            }
        }) && !this.f13380a && !this.f13386g) ? false : true;
    }

    public final int zza() {
        return this.f13383d.m7758a();
    }

    @Nullable
    public final String zzc() {
        return this.f13381b;
    }

    @Nullable
    public final String zzd() {
        return this.f13382c;
    }

    @Nullable
    public final String zze() {
        return this.f13383d.m7759c();
    }

    @Nullable
    public final String zzf() {
        return this.f13383d.m7760d();
    }

    @NonNull
    public final ArrayList zzg() {
        ArrayList arrayList = new ArrayList();
        arrayList.addAll(this.f13385f);
        return arrayList;
    }

    @NonNull
    public final List zzh() {
        return this.f13384e;
    }

    public final boolean zzp() {
        return this.f13386g;
    }

    public /* synthetic */ BillingFlowParams(zzcf zzcfVar) {
    }
}
