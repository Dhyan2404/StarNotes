package com.onyx.android.sdk.pay.google.p032ui;

import android.os.Bundle;
import android.widget.Toast;
import androidx.appcompat.app.AppCompatActivity;
import androidx.fragment.app.C1126e;
import androidx.lifecycle.Observer;
import com.android.billingclient.api.AccountIdentifiers;
import com.android.billingclient.api.BillingClient;
import com.android.billingclient.api.BillingClientStateListener;
import com.android.billingclient.api.BillingFlowParams;
import com.android.billingclient.api.BillingResult;
import com.android.billingclient.api.PendingPurchasesParams;
import com.android.billingclient.api.ProductDetails;
import com.android.billingclient.api.ProductDetailsResponseListener;
import com.android.billingclient.api.Purchase;
import com.android.billingclient.api.PurchasesResponseListener;
import com.android.billingclient.api.PurchasesUpdatedListener;
import com.android.billingclient.api.QueryProductDetailsParams;
import com.android.billingclient.api.QueryPurchasesParams;
import com.couchbase.lite.internal.BaseTLSIdentity;
import com.google.firebase.analytics.FirebaseAnalytics;
import com.onyx.android.sdk.base.extension.FragmentActivityKt;
import com.onyx.android.sdk.base.utils.Debug;
import com.onyx.android.sdk.base.utils.ToastUtils;
import com.onyx.android.sdk.pay.C7520R;
import com.onyx.android.sdk.pay.PayBundle;
import com.onyx.android.sdk.pay.data.PayResult;
import com.onyx.android.sdk.pay.data.PayType;
import com.onyx.android.sdk.pay.event.PayResultEvent;
import com.onyx.android.sdk.pay.google.PaymentErrorCodeUtils;
import com.onyx.android.sdk.pay.google.p032ui.GoogleConsumptionPayActivity;
import com.onyx.android.sdk.pay.google.viewmodel.GooglePayViewModel;
import com.onyx.android.sdk.theme.config.IUnSupportThemeRecreateActivity;
import com.sagittarius.p050v6.C13086AB;
import com.sun.org.apache.xalan.internal.xsltc.compiler.Constants;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import kotlin.Function;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.collections.CollectionsKt__CollectionsJVMKt;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.FunctionAdapter;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.apache.xmlbeans.impl.common.NameUtil;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000]\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0005\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0002\b\t\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0007*\u0001-\u0018\u0000 72\u00020\u00012\u00020\u0002:\u00017B\u0007¢\u0006\u0004\b5\u00106J\u0012\u0010\u0006\u001a\u00020\u00052\b\u0010\u0004\u001a\u0004\u0018\u00010\u0003H\u0014J\b\u0010\u0007\u001a\u00020\u0005H\u0014J\b\u0010\b\u001a\u00020\u0005H\u0002J\b\u0010\t\u001a\u00020\u0005H\u0002J\b\u0010\n\u001a\u00020\u0005H\u0002J\u0016\u0010\u000e\u001a\u00020\u00052\f\u0010\r\u001a\b\u0012\u0004\u0012\u00020\f0\u000bH\u0002J\b\u0010\u000f\u001a\u00020\u0005H\u0002J\u000e\u0010\u0011\u001a\b\u0012\u0004\u0012\u00020\u00100\u000bH\u0002J\u0010\u0010\u0013\u001a\u00020\u00052\u0006\u0010\u0012\u001a\u00020\fH\u0002J\u0018\u0010\u0016\u001a\u00020\u00052\u000e\u0010\u0015\u001a\n\u0012\u0004\u0012\u00020\u0014\u0018\u00010\u000bH\u0002J\u0016\u0010\u0017\u001a\u00020\u00052\f\u0010\u0015\u001a\b\u0012\u0004\u0012\u00020\u00140\u000bH\u0002J\u0010\u0010\u0019\u001a\u00020\u00052\u0006\u0010\u0018\u001a\u00020\u0014H\u0002J\b\u0010\u001a\u001a\u00020\u0005H\u0002J\u0010\u0010\u001d\u001a\u00020\u00052\u0006\u0010\u001c\u001a\u00020\u001bH\u0002J\b\u0010\u001e\u001a\u00020\u0005H\u0002R\u0016\u0010\"\u001a\u00020\u001f8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b \u0010!R\u0016\u0010$\u001a\u00020\u001f8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b#\u0010!R\u0016\u0010&\u001a\u00020\u001f8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b%\u0010!R\u0016\u0010(\u001a\u00020\u001f8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b'\u0010!R\u0018\u0010,\u001a\u0004\u0018\u00010)8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b*\u0010+R\u0014\u00100\u001a\u00020-8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b.\u0010/R\u0014\u00104\u001a\u0002018\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b2\u00103¨\u00068"}, m61528d2 = {"Lcom/onyx/android/sdk/pay/google/ui/GoogleConsumptionPayActivity;", "Landroidx/appcompat/app/AppCompatActivity;", "Lcom/onyx/android/sdk/theme/config/IUnSupportThemeRecreateActivity;", "Landroid/os/Bundle;", C1126e.f7693h, "", "onCreate", "onDestroy", BaseTLSIdentity.CERT_ATTRIBUTE_ORGANIZATION, "P", "L", "", "Lcom/android/billingclient/api/ProductDetails;", "productDetailList", "U", "S", "Lcom/android/billingclient/api/QueryProductDetailsParams$Product;", "K", "item", "Q", "Lcom/android/billingclient/api/Purchase;", "purchaseList", "N", "I", FirebaseAnalytics.Event.PURCHASE, "H", "F", "", "resultCode", "J", "G", "", "w0", Constants.STRING_SIG, "priceType", "x0", com.onyx.android.sdk.pay.constants.Constants.KEY_GOOGLE_PRODUCT_ID, "y0", "orderId", "z0", "outTradeNo", "Lcom/android/billingclient/api/BillingClient;", "A0", "Lcom/android/billingclient/api/BillingClient;", "billingClient", "com/onyx/android/sdk/pay/google/ui/GoogleConsumptionPayActivity$clientStateListener$1", "B0", "Lcom/onyx/android/sdk/pay/google/ui/GoogleConsumptionPayActivity$clientStateListener$1;", "clientStateListener", "Lcom/android/billingclient/api/PurchasesUpdatedListener;", "C0", "Lcom/android/billingclient/api/PurchasesUpdatedListener;", "purchasesUpdatedListener", com.sun.org.apache.bcel.internal.Constants.CONSTRUCTOR_NAME, "()V", "Companion", "sdk-pay_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
@SourceDebugExtension({"SMAP\nGoogleConsumptionPayActivity.kt\nKotlin\n*S Kotlin\n*F\n+ 1 GoogleConsumptionPayActivity.kt\ncom/onyx/android/sdk/pay/google/ui/GoogleConsumptionPayActivity\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,274:1\n1855#2,2:275\n*S KotlinDebug\n*F\n+ 1 GoogleConsumptionPayActivity.kt\ncom/onyx/android/sdk/pay/google/ui/GoogleConsumptionPayActivity\n*L\n224#1:275,2\n*E\n"})
/* loaded from: classes17.dex */
public final class GoogleConsumptionPayActivity extends AppCompatActivity implements IUnSupportThemeRecreateActivity {
    public static final int DEVELOPER_PARAMS_MAX_LENGTH = 64;

    @NotNull
    public static final String KEY_PAYMENT_ORDER_ID = "key_payment_order_id";

    @NotNull
    public static final String KEY_PAYMENT_OUT_TRADE_NO = "key_payment_out_trade_no";

    @NotNull
    public static final String KEY_PAYMENT_PRODUCT_ID = "key_payment_product_id";

    @NotNull
    public static final String KEY_PAYMENT_PRODUCT_TYPE = "key_payment_product_type";

    /* renamed from: A0, reason: from kotlin metadata */
    @Nullable
    public BillingClient billingClient;

    /* renamed from: w0, reason: from kotlin metadata */
    @NotNull
    public String priceType = "inapp";

    /* renamed from: x0, reason: from kotlin metadata */
    @NotNull
    public String productId = "";

    /* renamed from: y0, reason: from kotlin metadata */
    @NotNull
    public String orderId = "";

    /* renamed from: z0, reason: from kotlin metadata */
    @NotNull
    public String outTradeNo = "";

    /* renamed from: B0, reason: from kotlin metadata */
    @NotNull
    public final GoogleConsumptionPayActivity$clientStateListener$1 clientStateListener = new BillingClientStateListener() { // from class: com.onyx.android.sdk.pay.google.ui.GoogleConsumptionPayActivity$clientStateListener$1
        @Override // com.android.billingclient.api.BillingClientStateListener
        public void onBillingServiceDisconnected() {
            GoogleConsumptionPayActivity.this.m34334J(-1);
        }

        @Override // com.android.billingclient.api.BillingClientStateListener
        public void onBillingSetupFinished(@NotNull BillingResult billingResult) {
            Intrinsics.checkNotNullParameter(billingResult, "billingResult");
            if (billingResult.getResponseCode() != 0) {
                GoogleConsumptionPayActivity.this.m34334J(billingResult.getResponseCode());
            } else {
                Debug.INSTANCE.m32053i("service connect success!");
                GoogleConsumptionPayActivity.this.m34336L();
            }
        }
    };

    /* renamed from: C0, reason: from kotlin metadata */
    @NotNull
    public final PurchasesUpdatedListener purchasesUpdatedListener = new PurchasesUpdatedListener() { // from class: com.sunia.HTREnginev2.f4h
        @Override // com.android.billingclient.api.PurchasesUpdatedListener
        public final void onPurchasesUpdated(BillingResult billingResult, List list) {
            GoogleConsumptionPayActivity.m34328R(GoogleConsumptionPayActivity.this, billingResult, list);
        }
    };

    /* renamed from: com.onyx.android.sdk.pay.google.ui.GoogleConsumptionPayActivity$a */
    /* loaded from: classes8.dex */
    public static final class C7554a implements Observer, FunctionAdapter {

        /* renamed from: a */
        public final /* synthetic */ Function1 f44196a;

        public C7554a(Function1 function) {
            Intrinsics.checkNotNullParameter(function, "function");
            this.f44196a = function;
        }

        public final boolean equals(@Nullable Object obj) {
            if ((obj instanceof Observer) && (obj instanceof FunctionAdapter)) {
                return Intrinsics.areEqual(getFunctionDelegate(), ((FunctionAdapter) obj).getFunctionDelegate());
            }
            return false;
        }

        @Override // kotlin.jvm.internal.FunctionAdapter
        @NotNull
        public final Function<?> getFunctionDelegate() {
            return this.f44196a;
        }

        public final int hashCode() {
            return getFunctionDelegate().hashCode();
        }

        @Override // androidx.lifecycle.Observer
        public final /* synthetic */ void onChanged(Object obj) {
            this.f44196a.invoke(obj);
        }
    }

    /* renamed from: M */
    public static final void m34327M(GoogleConsumptionPayActivity this$0, BillingResult billingResult, List productDetailList) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullParameter(billingResult, "billingResult");
        Intrinsics.checkNotNullParameter(productDetailList, "productDetailList");
        if (billingResult.getResponseCode() == 0) {
            if (productDetailList.isEmpty()) {
                this$0.m34334J(2001);
                return;
            } else {
                if (!r3.isEmpty()) {
                    this$0.m34342U(productDetailList);
                    return;
                }
                return;
            }
        }
        Debug.INSTANCE.m32053i("query product filed:" + billingResult.getResponseCode() + '-' + billingResult.getDebugMessage());
        this$0.m34334J(billingResult.getResponseCode());
    }

    /* renamed from: R */
    public static final void m34328R(GoogleConsumptionPayActivity this$0, BillingResult billingResult, List list) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullParameter(billingResult, "billingResult");
        int responseCode = billingResult.getResponseCode();
        if (responseCode == 0) {
            this$0.m34337N(list);
            return;
        }
        if (responseCode == 1) {
            Debug.INSTANCE.m32053i("purchasesUpdated error user canceled");
            this$0.m34330F();
            return;
        }
        if (responseCode == 3) {
            Debug.INSTANCE.m32053i("purchasesUpdated BILLING_UNAVAILABLE code:" + billingResult.getResponseCode() + " message:" + billingResult.getDebugMessage());
            this$0.m34334J(billingResult.getResponseCode());
            return;
        }
        if (responseCode != 5) {
            Debug.INSTANCE.m32053i("purchasesUpdated error:" + billingResult.getResponseCode());
            this$0.m34334J(billingResult.getResponseCode());
            return;
        }
        Debug.INSTANCE.m32053i("purchasesUpdated INVALID PARAMETER VALUE code:" + billingResult.getResponseCode() + " message:" + billingResult.getDebugMessage());
        this$0.m34334J(billingResult.getResponseCode());
    }

    /* renamed from: T */
    public static final void m34329T(GoogleConsumptionPayActivity this$0, BillingResult billingResult, List purchaseList) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullParameter(billingResult, "billingResult");
        Intrinsics.checkNotNullParameter(purchaseList, "purchaseList");
        if (billingResult.getResponseCode() == 0 && (!purchaseList.isEmpty())) {
            this$0.m34337N(purchaseList);
        } else {
            this$0.m34336L();
        }
    }

    /* renamed from: F */
    public final void m34330F() {
        PayResult payResult = new PayResult(PayType.GOOGLE);
        payResult.setStatus(1);
        PayBundle.INSTANCE.postEvent(new PayResultEvent(payResult));
        finish();
    }

    /* renamed from: G */
    public final void m34331G() {
        PayResult payResult = new PayResult(PayType.GOOGLE);
        payResult.setStatus(0);
        PayBundle.INSTANCE.postEvent(new PayResultEvent(payResult));
        finish();
    }

    /* renamed from: H */
    public final void m34332H(Purchase purchase) {
        String str;
        if (this.billingClient == null) {
            m34334J(1002);
            return;
        }
        AccountIdentifiers accountIdentifiers = purchase.getAccountIdentifiers();
        if (accountIdentifiers == null || (str = accountIdentifiers.getObfuscatedAccountId()) == null) {
            str = "";
        }
        GooglePayViewModel googlePayViewModel = (GooglePayViewModel) FragmentActivityKt.getViewModel(this, GooglePayViewModel.class);
        BillingClient billingClient = this.billingClient;
        Intrinsics.checkNotNull(billingClient);
        String str2 = this.orderId;
        String purchaseToken = purchase.getPurchaseToken();
        Intrinsics.checkNotNullExpressionValue(purchaseToken, "getPurchaseToken(...)");
        googlePayViewModel.verifyGooglePurchaseToken(billingClient, str2, purchaseToken, str).observe(this, new C7554a(new Function1<Integer, Unit>() { // from class: com.onyx.android.sdk.pay.google.ui.GoogleConsumptionPayActivity$consumeOwnedPurchase$1
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Unit invoke(Integer num) {
                invoke2(num);
                return Unit.INSTANCE;
            }

            /* renamed from: invoke, reason: avoid collision after fix types in other method */
            public final void invoke2(Integer num) {
                if (num != null && num.intValue() == -1) {
                    GoogleConsumptionPayActivity.this.m34331G();
                    return;
                }
                GoogleConsumptionPayActivity googleConsumptionPayActivity = GoogleConsumptionPayActivity.this;
                Intrinsics.checkNotNull(num);
                googleConsumptionPayActivity.m34334J(num.intValue());
            }
        }));
    }

    /* renamed from: I */
    public final void m34333I(List<? extends Purchase> purchaseList) {
        Iterator<T> it2 = purchaseList.iterator();
        while (it2.hasNext()) {
            m34332H((Purchase) it2.next());
        }
    }

    /* renamed from: J */
    public final void m34334J(int resultCode) {
        PayResult payResult = new PayResult(PayType.GOOGLE);
        payResult.setStatus(2);
        payResult.setCode(resultCode);
        payResult.setMessage(PaymentErrorCodeUtils.INSTANCE.getErrorMessage(resultCode));
        PayBundle.INSTANCE.postEvent(new PayResultEvent(payResult));
        finish();
    }

    /* renamed from: K */
    public final List<QueryProductDetailsParams.Product> m34335K() {
        ArrayList arrayList = new ArrayList();
        QueryProductDetailsParams.Product build = QueryProductDetailsParams.Product.newBuilder().setProductId(this.productId).setProductType("inapp").build();
        Intrinsics.checkNotNullExpressionValue(build, "build(...)");
        arrayList.add(build);
        return arrayList;
    }

    /* renamed from: L */
    public final void m34336L() {
        QueryProductDetailsParams build = QueryProductDetailsParams.newBuilder().setProductList(m34335K()).build();
        Intrinsics.checkNotNullExpressionValue(build, "build(...)");
        BillingClient billingClient = this.billingClient;
        if (billingClient != null) {
            billingClient.queryProductDetailsAsync(build, new ProductDetailsResponseListener() { // from class: com.sunia.HTREnginev2.g4h
                @Override // com.android.billingclient.api.ProductDetailsResponseListener
                public final void onProductDetailsResponse(BillingResult billingResult, List list) {
                    GoogleConsumptionPayActivity.m34327M(GoogleConsumptionPayActivity.this, billingResult, list);
                }
            });
        }
    }

    /* renamed from: N */
    public final void m34337N(List<? extends Purchase> purchaseList) {
        List<? extends Purchase> list = purchaseList;
        if (!(list == null || list.isEmpty())) {
            m34333I(purchaseList);
        } else {
            Toast.makeText(this, "result is empty", 1).show();
            m34334J(2004);
        }
    }

    /* renamed from: O */
    public final void m34338O() {
        String stringExtra = getIntent().getStringExtra(KEY_PAYMENT_PRODUCT_ID);
        if (stringExtra == null) {
            stringExtra = "";
        }
        this.productId = stringExtra;
        String stringExtra2 = getIntent().getStringExtra(KEY_PAYMENT_ORDER_ID);
        if (stringExtra2 == null) {
            stringExtra2 = "";
        }
        this.orderId = stringExtra2;
        String stringExtra3 = getIntent().getStringExtra(KEY_PAYMENT_OUT_TRADE_NO);
        this.outTradeNo = stringExtra3 != null ? stringExtra3 : "";
        this.priceType = getIntent().getIntExtra(KEY_PAYMENT_PRODUCT_TYPE, 0) == 0 ? "inapp" : "subs";
    }

    /* renamed from: P */
    public final void m34339P() {
        try {
            PendingPurchasesParams build = PendingPurchasesParams.newBuilder().enableOneTimeProducts().build();
            Intrinsics.checkNotNullExpressionValue(build, "build(...)");
            BillingClient build2 = BillingClient.newBuilder(this).enablePendingPurchases(build).setListener(this.purchasesUpdatedListener).build();
            this.billingClient = build2;
            if (build2 != null) {
                build2.startConnection(this.clientStateListener);
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    /* renamed from: Q */
    public final void m34340Q(ProductDetails item) {
        String str;
        String str2;
        List<BillingFlowParams.ProductDetailsParams> listOf;
        BillingFlowParams.ProductDetailsParams build = BillingFlowParams.ProductDetailsParams.newBuilder().setProductDetails(item).build();
        Intrinsics.checkNotNullExpressionValue(build, "build(...)");
        if (this.outTradeNo.length() > 64) {
            ToastUtils toastUtils = ToastUtils.INSTANCE;
            String string = getString(C7520R.string.developer_params_error);
            Intrinsics.checkNotNullExpressionValue(string, "getString(...)");
            ToastUtils.show$default(toastUtils, (CharSequence) string, false, 2, (Object) null);
            m34334J(2002);
            return;
        }
        ProductDetails.OneTimePurchaseOfferDetails oneTimePurchaseOfferDetails = item.getOneTimePurchaseOfferDetails();
        String str3 = "";
        if (oneTimePurchaseOfferDetails == null || (str = oneTimePurchaseOfferDetails.getPriceCurrencyCode()) == null) {
            str = "";
        }
        ProductDetails.OneTimePurchaseOfferDetails oneTimePurchaseOfferDetails2 = item.getOneTimePurchaseOfferDetails();
        String valueOf = oneTimePurchaseOfferDetails2 != null ? Long.valueOf(oneTimePurchaseOfferDetails2.getPriceAmountMicros()) : "";
        ProductDetails.OneTimePurchaseOfferDetails oneTimePurchaseOfferDetails3 = item.getOneTimePurchaseOfferDetails();
        if (oneTimePurchaseOfferDetails3 == null || (str2 = oneTimePurchaseOfferDetails3.getFormattedPrice()) == null) {
            str2 = "";
        }
        if (item.getOneTimePurchaseOfferDetails() != null) {
            str3 = str + NameUtil.USCORE + valueOf + NameUtil.USCORE + str2;
        }
        BillingFlowParams.Builder newBuilder = BillingFlowParams.newBuilder();
        listOf = CollectionsKt__CollectionsJVMKt.listOf(build);
        BillingFlowParams build2 = newBuilder.setProductDetailsParamsList(listOf).setObfuscatedAccountId(this.outTradeNo).setObfuscatedProfileId(str3).build();
        Intrinsics.checkNotNullExpressionValue(build2, "build(...)");
        BillingClient billingClient = this.billingClient;
        if (billingClient != null) {
            billingClient.launchBillingFlow(this, build2);
        }
    }

    /* renamed from: S */
    public final void m34341S() {
        QueryPurchasesParams build = QueryPurchasesParams.newBuilder().setProductType(this.priceType).build();
        Intrinsics.checkNotNullExpressionValue(build, "build(...)");
        BillingClient billingClient = this.billingClient;
        if (billingClient != null) {
            billingClient.queryPurchasesAsync(build, new PurchasesResponseListener() { // from class: com.sunia.HTREnginev2.h4h
                @Override // com.android.billingclient.api.PurchasesResponseListener
                public final void onQueryPurchasesResponse(BillingResult billingResult, List list) {
                    GoogleConsumptionPayActivity.m34329T(GoogleConsumptionPayActivity.this, billingResult, list);
                }
            });
        }
    }

    /* renamed from: U */
    public final void m34342U(List<ProductDetails> productDetailList) {
        Object firstOrNull;
        firstOrNull = CollectionsKt___CollectionsKt.firstOrNull((List<? extends Object>) productDetailList);
        ProductDetails productDetails = (ProductDetails) firstOrNull;
        if (productDetails == null) {
            m34341S();
        } else {
            m34340Q(productDetails);
        }
    }

    @Override // androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    public void onCreate(@Nullable Bundle savedInstanceState) {
        C13086AB.m52315v(-1426063343, this, savedInstanceState);
    }

    @Override // androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onDestroy() {
        super.onDestroy();
        BillingClient billingClient = this.billingClient;
        if (billingClient != null) {
            billingClient.endConnection();
        }
    }
}
