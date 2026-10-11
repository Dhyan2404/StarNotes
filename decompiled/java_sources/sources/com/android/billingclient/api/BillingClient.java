package com.android.billingclient.api;

import android.app.Activity;
import android.content.Context;
import androidx.annotation.AnyThread;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.UiThread;
import com.android.billingclient.api.PendingPurchasesParams;
import com.google.android.gms.common.annotation.KeepForSdk;
import com.sunia.HTREnginev2.fjp;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.util.concurrent.ExecutorService;

/* loaded from: classes3.dex */
public abstract class BillingClient {

    @Retention(RetentionPolicy.SOURCE)
    /* loaded from: classes3.dex */
    public @interface BillingResponseCode {
        public static final int BILLING_UNAVAILABLE = 3;
        public static final int DEVELOPER_ERROR = 5;
        public static final int ERROR = 6;
        public static final int FEATURE_NOT_SUPPORTED = -2;
        public static final int ITEM_ALREADY_OWNED = 7;
        public static final int ITEM_NOT_OWNED = 8;
        public static final int ITEM_UNAVAILABLE = 4;
        public static final int NETWORK_ERROR = 12;

        /* renamed from: OK */
        public static final int f13366OK = 0;
        public static final int SERVICE_DISCONNECTED = -1;

        @Deprecated
        public static final int SERVICE_TIMEOUT = -3;
        public static final int SERVICE_UNAVAILABLE = 2;
        public static final int USER_CANCELED = 1;
    }

    @AnyThread
    /* loaded from: classes3.dex */
    public static final class Builder {

        /* renamed from: a */
        public volatile String f13367a;

        /* renamed from: b */
        public volatile PendingPurchasesParams f13368b;

        /* renamed from: c */
        public final Context f13369c;

        /* renamed from: d */
        public volatile PurchasesUpdatedListener f13370d;

        /* renamed from: e */
        public volatile zzco f13371e;

        /* renamed from: f */
        public volatile fjp f13372f;

        /* renamed from: g */
        public volatile zzb f13373g;

        /* renamed from: h */
        public volatile UserChoiceBillingListener f13374h;

        /* renamed from: i */
        @Nullable
        public volatile ExecutorService f13375i;

        /* renamed from: j */
        public volatile boolean f13376j;

        /* renamed from: k */
        public volatile boolean f13377k;

        /* renamed from: l */
        public volatile boolean f13378l;

        public /* synthetic */ Builder(Context context, zzo zzoVar) {
            this.f13369c = context;
        }

        /* renamed from: a */
        public final boolean m7741a() {
            try {
                return this.f13369c.getPackageManager().getApplicationInfo(this.f13369c.getPackageName(), 128).metaData.getBoolean("com.google.android.play.billingclient.enableBillingOverridesTesting", false);
            } catch (Exception e) {
                com.google.android.gms.internal.play_billing.zze.zzm("BillingClient", "Unable to retrieve metadata value for enableBillingOverridesTesting.", e);
                return false;
            }
        }

        @NonNull
        public BillingClient build() {
            if (this.f13369c == null) {
                throw new IllegalArgumentException("Please provide a valid Context.");
            }
            if (this.f13370d == null) {
                if (this.f13374h != null) {
                    throw new IllegalArgumentException("Please provide a valid listener for Google Play Billing purchases updates when enabling User Choice Billing.");
                }
                if (!this.f13376j && !this.f13377k) {
                    throw new IllegalArgumentException("Please provide a valid listener for purchases updates.");
                }
                Context context = this.f13369c;
                return m7741a() ? new C1790h(null, context, null, null) : new C1783a(null, context, null, null);
            }
            if (this.f13368b == null || !this.f13368b.m7766a()) {
                throw new IllegalArgumentException("Pending purchases for one-time products must be supported.");
            }
            if (this.f13370d == null) {
                PendingPurchasesParams pendingPurchasesParams = this.f13368b;
                Context context2 = this.f13369c;
                return m7741a() ? new C1790h(null, pendingPurchasesParams, context2, null, null, null) : new C1783a(null, pendingPurchasesParams, context2, null, null, null);
            }
            if (this.f13374h == null) {
                PendingPurchasesParams pendingPurchasesParams2 = this.f13368b;
                Context context3 = this.f13369c;
                PurchasesUpdatedListener purchasesUpdatedListener = this.f13370d;
                return m7741a() ? new C1790h((String) null, pendingPurchasesParams2, context3, purchasesUpdatedListener, (zzb) null, (fjp) null, (ExecutorService) null) : new C1783a((String) null, pendingPurchasesParams2, context3, purchasesUpdatedListener, (zzb) null, (fjp) null, (ExecutorService) null);
            }
            PendingPurchasesParams pendingPurchasesParams3 = this.f13368b;
            Context context4 = this.f13369c;
            PurchasesUpdatedListener purchasesUpdatedListener2 = this.f13370d;
            UserChoiceBillingListener userChoiceBillingListener = this.f13374h;
            return m7741a() ? new C1790h((String) null, pendingPurchasesParams3, context4, purchasesUpdatedListener2, userChoiceBillingListener, (fjp) null, (ExecutorService) null) : new C1783a((String) null, pendingPurchasesParams3, context4, purchasesUpdatedListener2, userChoiceBillingListener, (fjp) null, (ExecutorService) null);
        }

        @NonNull
        @zzf
        public Builder enableAlternativeBillingOnly() {
            this.f13376j = true;
            return this;
        }

        @NonNull
        @zzg
        public Builder enableExternalOffer() {
            this.f13377k = true;
            return this;
        }

        @NonNull
        @zzj
        public Builder enablePendingPurchases(@NonNull PendingPurchasesParams pendingPurchasesParams) {
            this.f13368b = pendingPurchasesParams;
            return this;
        }

        @NonNull
        @zzk
        public Builder enableUserChoiceBilling(@NonNull UserChoiceBillingListener userChoiceBillingListener) {
            this.f13374h = userChoiceBillingListener;
            return this;
        }

        @NonNull
        public Builder setListener(@NonNull PurchasesUpdatedListener purchasesUpdatedListener) {
            this.f13370d = purchasesUpdatedListener;
            return this;
        }

        @NonNull
        @Deprecated
        public Builder enablePendingPurchases() {
            PendingPurchasesParams.Builder newBuilder = PendingPurchasesParams.newBuilder();
            newBuilder.enableOneTimeProducts();
            enablePendingPurchases(newBuilder.build());
            return this;
        }
    }

    @Retention(RetentionPolicy.SOURCE)
    /* loaded from: classes3.dex */
    public @interface ConnectionState {
        public static final int CLOSED = 3;
        public static final int CONNECTED = 2;
        public static final int CONNECTING = 1;
        public static final int DISCONNECTED = 0;
    }

    @Retention(RetentionPolicy.SOURCE)
    /* loaded from: classes3.dex */
    public @interface FeatureType {

        @NonNull
        @zzf
        public static final String ALTERNATIVE_BILLING_ONLY = "jjj";

        @NonNull
        @zzh
        public static final String BILLING_CONFIG = "ggg";

        @NonNull
        @zzg
        public static final String EXTERNAL_OFFER = "kkk";

        @NonNull
        public static final String IN_APP_MESSAGING = "bbb";

        @NonNull
        public static final String PRICE_CHANGE_CONFIRMATION = "priceChangeConfirmation";

        @NonNull
        public static final String PRODUCT_DETAILS = "fff";

        @NonNull
        public static final String SUBSCRIPTIONS = "subscriptions";

        @NonNull
        public static final String SUBSCRIPTIONS_UPDATE = "subscriptionsUpdate";
    }

    @Retention(RetentionPolicy.SOURCE)
    /* loaded from: classes3.dex */
    public @interface ProductType {

        @NonNull
        public static final String INAPP = "inapp";

        @NonNull
        public static final String SUBS = "subs";
    }

    @Retention(RetentionPolicy.SOURCE)
    @Deprecated
    /* loaded from: classes3.dex */
    public @interface SkuType {

        @NonNull
        public static final String INAPP = "inapp";

        @NonNull
        public static final String SUBS = "subs";
    }

    @NonNull
    @AnyThread
    public static Builder newBuilder(@NonNull Context context) {
        return new Builder(context, null);
    }

    @AnyThread
    public abstract void acknowledgePurchase(@NonNull AcknowledgePurchaseParams acknowledgePurchaseParams, @NonNull AcknowledgePurchaseResponseListener acknowledgePurchaseResponseListener);

    @AnyThread
    public abstract void consumeAsync(@NonNull ConsumeParams consumeParams, @NonNull ConsumeResponseListener consumeResponseListener);

    @AnyThread
    @zzf
    @KeepForSdk
    public abstract void createAlternativeBillingOnlyReportingDetailsAsync(@NonNull AlternativeBillingOnlyReportingDetailsListener alternativeBillingOnlyReportingDetailsListener);

    @zzg
    @AnyThread
    public abstract void createExternalOfferReportingDetailsAsync(@NonNull ExternalOfferReportingDetailsListener externalOfferReportingDetailsListener);

    @AnyThread
    public abstract void endConnection();

    @AnyThread
    @zzh
    public abstract void getBillingConfigAsync(@NonNull GetBillingConfigParams getBillingConfigParams, @NonNull BillingConfigResponseListener billingConfigResponseListener);

    @AnyThread
    public abstract int getConnectionState();

    @AnyThread
    @zzf
    @KeepForSdk
    public abstract void isAlternativeBillingOnlyAvailableAsync(@NonNull AlternativeBillingOnlyAvailabilityListener alternativeBillingOnlyAvailabilityListener);

    @zzg
    @AnyThread
    public abstract void isExternalOfferAvailableAsync(@NonNull ExternalOfferAvailabilityListener externalOfferAvailabilityListener);

    @NonNull
    @AnyThread
    public abstract BillingResult isFeatureSupported(@NonNull String str);

    @AnyThread
    public abstract boolean isReady();

    @NonNull
    @UiThread
    public abstract BillingResult launchBillingFlow(@NonNull Activity activity, @NonNull BillingFlowParams billingFlowParams);

    @AnyThread
    public abstract void queryProductDetailsAsync(@NonNull QueryProductDetailsParams queryProductDetailsParams, @NonNull ProductDetailsResponseListener productDetailsResponseListener);

    @AnyThread
    @Deprecated
    public abstract void queryPurchaseHistoryAsync(@NonNull QueryPurchaseHistoryParams queryPurchaseHistoryParams, @NonNull PurchaseHistoryResponseListener purchaseHistoryResponseListener);

    @AnyThread
    @Deprecated
    public abstract void queryPurchaseHistoryAsync(@NonNull String str, @NonNull PurchaseHistoryResponseListener purchaseHistoryResponseListener);

    @AnyThread
    public abstract void queryPurchasesAsync(@NonNull QueryPurchasesParams queryPurchasesParams, @NonNull PurchasesResponseListener purchasesResponseListener);

    @AnyThread
    @Deprecated
    public abstract void queryPurchasesAsync(@NonNull String str, @NonNull PurchasesResponseListener purchasesResponseListener);

    @AnyThread
    @Deprecated
    public abstract void querySkuDetailsAsync(@NonNull SkuDetailsParams skuDetailsParams, @NonNull SkuDetailsResponseListener skuDetailsResponseListener);

    @NonNull
    @zzf
    @UiThread
    public abstract BillingResult showAlternativeBillingOnlyInformationDialog(@NonNull Activity activity, @NonNull AlternativeBillingOnlyInformationDialogListener alternativeBillingOnlyInformationDialogListener);

    @NonNull
    @zzg
    @UiThread
    public abstract BillingResult showExternalOfferInformationDialog(@NonNull Activity activity, @NonNull ExternalOfferInformationDialogListener externalOfferInformationDialogListener);

    @NonNull
    @UiThread
    public abstract BillingResult showInAppMessages(@NonNull Activity activity, @NonNull InAppMessageParams inAppMessageParams, @NonNull InAppMessageResponseListener inAppMessageResponseListener);

    @AnyThread
    public abstract void startConnection(@NonNull BillingClientStateListener billingClientStateListener);
}
