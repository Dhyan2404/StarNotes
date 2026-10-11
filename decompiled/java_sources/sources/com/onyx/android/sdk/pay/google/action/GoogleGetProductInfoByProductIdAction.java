package com.onyx.android.sdk.pay.google.action;

import android.content.Context;
import androidx.core.net.MailTo;
import com.android.billingclient.api.BillingClient;
import com.android.billingclient.api.BillingClientStateListener;
import com.android.billingclient.api.BillingResult;
import com.android.billingclient.api.PendingPurchasesParams;
import com.android.billingclient.api.ProductDetails;
import com.android.billingclient.api.ProductDetailsResponseListener;
import com.android.billingclient.api.PurchasesUpdatedListener;
import com.android.billingclient.api.QueryProductDetailsParams;
import com.miui.penengine.p015e.C6997f;
import com.miui.penengine.p015e.C6998g;
import com.miui.penengine.p015e.C6999h;
import com.onyx.android.sdk.base.extension.RxjavaKt;
import com.onyx.android.sdk.base.utils.Debug;
import com.onyx.android.sdk.cloudstorage.provider.baiduyun.bean.BaiduYunConstant;
import com.onyx.android.sdk.pay.action.BasePayAction;
import com.onyx.android.sdk.pay.bean.ProductInfoBean;
import com.onyx.android.sdk.pay.google.action.GoogleGetProductInfoByProductIdAction;
import com.sun.org.apache.bcel.internal.Constants;
import io.reactivex.rxjava3.core.Observable;
import io.reactivex.rxjava3.core.ObservableSource;
import io.reactivex.rxjava3.functions.Action;
import io.reactivex.rxjava3.functions.Function;
import io.reactivex.rxjava3.subjects.ReplaySubject;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt__IterablesKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000B\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0006\u0018\u00002\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00030\u00020\u0001B\u001d\u0012\u0006\u0010\u0015\u001a\u00020\u0010\u0012\f\u0010\u0007\u001a\b\u0012\u0004\u0012\u00020\u00060\u0002¢\u0006\u0004\b\u001c\u0010\u001dJ\u0014\u0010\u0005\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00030\u00020\u0004H\u0014J\"\u0010\b\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00030\u00020\u00042\f\u0010\u0007\u001a\b\u0012\u0004\u0012\u00020\u00060\u0002H\u0002J*\u0010\f\u001a\u00020\u000b2\u0012\u0010\n\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00030\u00020\t2\f\u0010\u0007\u001a\b\u0012\u0004\u0012\u00020\u00060\u0002H\u0002J\u001c\u0010\u000e\u001a\b\u0012\u0004\u0012\u00020\r0\u00022\f\u0010\u0007\u001a\b\u0012\u0004\u0012\u00020\u00060\u0002H\u0002J*\u0010\u000f\u001a\u00020\u000b2\u0012\u0010\n\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00030\u00020\t2\f\u0010\u0007\u001a\b\u0012\u0004\u0012\u00020\u00060\u0002H\u0002R\u0017\u0010\u0015\u001a\u00020\u00108\u0006¢\u0006\f\n\u0004\b\u0011\u0010\u0012\u001a\u0004\b\u0013\u0010\u0014R\u001a\u0010\u0007\u001a\b\u0012\u0004\u0012\u00020\u00060\u00028\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0016\u0010\u0017R\u0018\u0010\u001b\u001a\u0004\u0018\u00010\u00188\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u0019\u0010\u001a¨\u0006\u001e"}, m61528d2 = {"Lcom/onyx/android/sdk/pay/google/action/GoogleGetProductInfoByProductIdAction;", "Lcom/onyx/android/sdk/pay/action/BasePayAction;", "", "Lcom/onyx/android/sdk/pay/bean/ProductInfoBean;", "Lio/reactivex/rxjava3/core/Observable;", BaiduYunConstant.CREATE, "", "productIdList", "q", "Lio/reactivex/rxjava3/subjects/ReplaySubject;", MailTo.f5529g, "", "u", "Lcom/android/billingclient/api/QueryProductDetailsParams$Product;", "p", "s", "Landroid/content/Context;", C6997f.f39671c, "Landroid/content/Context;", "getContext", "()Landroid/content/Context;", "context", C6998g.f39679a, "Ljava/util/List;", "Lcom/android/billingclient/api/BillingClient;", C6999h.f39688c, "Lcom/android/billingclient/api/BillingClient;", "billingClient", Constants.CONSTRUCTOR_NAME, "(Landroid/content/Context;Ljava/util/List;)V", "sdk-pay_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
@SourceDebugExtension({"SMAP\nGoogleGetProductInfoByProductIdAction.kt\nKotlin\n*S Kotlin\n*F\n+ 1 GoogleGetProductInfoByProductIdAction.kt\ncom/onyx/android/sdk/pay/google/action/GoogleGetProductInfoByProductIdAction\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,119:1\n1855#2,2:120\n1549#2:122\n1620#2,3:123\n*S KotlinDebug\n*F\n+ 1 GoogleGetProductInfoByProductIdAction.kt\ncom/onyx/android/sdk/pay/google/action/GoogleGetProductInfoByProductIdAction\n*L\n68#1:120,2\n102#1:122\n102#1:123,3\n*E\n"})
/* loaded from: classes8.dex */
public final class GoogleGetProductInfoByProductIdAction extends BasePayAction<List<? extends ProductInfoBean>> {

    /* renamed from: f, reason: from kotlin metadata */
    @NotNull
    public final Context context;

    /* renamed from: g, reason: from kotlin metadata */
    @NotNull
    public final List<String> productIdList;

    /* renamed from: h, reason: from kotlin metadata */
    @Nullable
    public BillingClient billingClient;

    /* renamed from: com.onyx.android.sdk.pay.google.action.GoogleGetProductInfoByProductIdAction$a */
    /* loaded from: classes8.dex */
    public static final class C7548a<T, R> implements Function {
        public C7548a() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final ObservableSource<? extends List<ProductInfoBean>> apply(@NotNull GoogleGetProductInfoByProductIdAction it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            GoogleGetProductInfoByProductIdAction googleGetProductInfoByProductIdAction = GoogleGetProductInfoByProductIdAction.this;
            return googleGetProductInfoByProductIdAction.m34311q(googleGetProductInfoByProductIdAction.productIdList);
        }
    }

    public GoogleGetProductInfoByProductIdAction(@NotNull Context context, @NotNull List<String> productIdList) {
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(productIdList, "productIdList");
        this.context = context;
        this.productIdList = productIdList;
    }

    /* renamed from: o */
    public static final void m34307o(GoogleGetProductInfoByProductIdAction this$0) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        BillingClient billingClient = this$0.billingClient;
        if (billingClient != null) {
            billingClient.endConnection();
        }
    }

    /* renamed from: r */
    public static final void m34308r(BillingResult billingResult, List list) {
        Intrinsics.checkNotNullParameter(billingResult, "<anonymous parameter 0>");
    }

    /* renamed from: t */
    public static final void m34309t(ReplaySubject subject, BillingResult billingResult, List productDetailList) {
        int collectionSizeOrDefault;
        Intrinsics.checkNotNullParameter(subject, "$subject");
        Intrinsics.checkNotNullParameter(billingResult, "billingResult");
        Intrinsics.checkNotNullParameter(productDetailList, "productDetailList");
        if (billingResult.getResponseCode() != 0) {
            Debug.INSTANCE.m32053i("query product filed:" + billingResult.getResponseCode() + '-' + billingResult.getDebugMessage());
            RxjavaKt.done(subject, new ArrayList());
            return;
        }
        if (productDetailList.isEmpty()) {
            RxjavaKt.done(subject, new ArrayList());
            return;
        }
        if (!r4.isEmpty()) {
            List<ProductDetails> list = productDetailList;
            collectionSizeOrDefault = CollectionsKt__IterablesKt.collectionSizeOrDefault(list, 10);
            ArrayList arrayList = new ArrayList(collectionSizeOrDefault);
            for (ProductDetails productDetails : list) {
                ProductInfoBean productInfoBean = new ProductInfoBean();
                ProductDetails.OneTimePurchaseOfferDetails oneTimePurchaseOfferDetails = productDetails.getOneTimePurchaseOfferDetails();
                if (oneTimePurchaseOfferDetails != null) {
                    oneTimePurchaseOfferDetails.getPriceAmountMicros();
                }
                ProductDetails.OneTimePurchaseOfferDetails oneTimePurchaseOfferDetails2 = productDetails.getOneTimePurchaseOfferDetails();
                String formattedPrice = oneTimePurchaseOfferDetails2 != null ? oneTimePurchaseOfferDetails2.getFormattedPrice() : null;
                if (formattedPrice == null) {
                    formattedPrice = "";
                } else {
                    Intrinsics.checkNotNull(formattedPrice);
                }
                productInfoBean.setFinalAmount(formattedPrice);
                String productId = productDetails.getProductId();
                Intrinsics.checkNotNullExpressionValue(productId, "getProductId(...)");
                productInfoBean.setProductId(productId);
                arrayList.add(productInfoBean);
            }
            RxjavaKt.done(subject, arrayList);
        }
    }

    @Override // com.onyx.android.sdk.base.p018rx.RxBaseAction
    @NotNull
    public Observable<List<ProductInfoBean>> create() {
        Observable<List<ProductInfoBean>> doFinally = Observable.just(this).observeOn(getCloudScheduler()).flatMap(new C7548a()).doFinally(new Action() { // from class: com.sunia.HTREnginev2.k4h
            @Override // io.reactivex.rxjava3.functions.Action
            public final void run() {
                GoogleGetProductInfoByProductIdAction.m34307o(GoogleGetProductInfoByProductIdAction.this);
            }
        });
        Intrinsics.checkNotNullExpressionValue(doFinally, "doFinally(...)");
        return doFinally;
    }

    @NotNull
    public final Context getContext() {
        return this.context;
    }

    /* renamed from: p */
    public final List<QueryProductDetailsParams.Product> m34310p(List<String> productIdList) {
        ArrayList arrayList = new ArrayList();
        Iterator<T> it2 = productIdList.iterator();
        while (it2.hasNext()) {
            QueryProductDetailsParams.Product build = QueryProductDetailsParams.Product.newBuilder().setProductId((String) it2.next()).setProductType("inapp").build();
            Intrinsics.checkNotNullExpressionValue(build, "build(...)");
            arrayList.add(build);
        }
        return arrayList;
    }

    /* renamed from: q */
    public final Observable<List<ProductInfoBean>> m34311q(List<String> productIdList) {
        ReplaySubject<List<ProductInfoBean>> create = ReplaySubject.create();
        Intrinsics.checkNotNullExpressionValue(create, "create(...)");
        if (productIdList.isEmpty()) {
            RxjavaKt.done(create, new ArrayList());
            return create;
        }
        PendingPurchasesParams build = PendingPurchasesParams.newBuilder().enableOneTimeProducts().build();
        Intrinsics.checkNotNullExpressionValue(build, "build(...)");
        this.billingClient = BillingClient.newBuilder(this.context).enablePendingPurchases(build).setListener(new PurchasesUpdatedListener() { // from class: com.sunia.HTREnginev2.l4h
            @Override // com.android.billingclient.api.PurchasesUpdatedListener
            public final void onPurchasesUpdated(BillingResult billingResult, List list) {
                GoogleGetProductInfoByProductIdAction.m34308r(billingResult, list);
            }
        }).build();
        m34313u(create, productIdList);
        return create;
    }

    /* renamed from: s */
    public final void m34312s(final ReplaySubject<List<ProductInfoBean>> subject, List<String> productIdList) {
        if (productIdList.isEmpty()) {
            RxjavaKt.done(subject, new ArrayList());
            return;
        }
        QueryProductDetailsParams build = QueryProductDetailsParams.newBuilder().setProductList(m34310p(productIdList)).build();
        Intrinsics.checkNotNullExpressionValue(build, "build(...)");
        BillingClient billingClient = this.billingClient;
        if (billingClient != null) {
            billingClient.queryProductDetailsAsync(build, new ProductDetailsResponseListener() { // from class: com.sunia.HTREnginev2.m4h
                @Override // com.android.billingclient.api.ProductDetailsResponseListener
                public final void onProductDetailsResponse(BillingResult billingResult, List list) {
                    GoogleGetProductInfoByProductIdAction.m34309t(ReplaySubject.this, billingResult, list);
                }
            });
        }
    }

    /* renamed from: u */
    public final void m34313u(final ReplaySubject<List<ProductInfoBean>> subject, final List<String> productIdList) {
        BillingClient billingClient = this.billingClient;
        if (billingClient != null) {
            billingClient.startConnection(new BillingClientStateListener() { // from class: com.onyx.android.sdk.pay.google.action.GoogleGetProductInfoByProductIdAction$startConnection$1
                @Override // com.android.billingclient.api.BillingClientStateListener
                public void onBillingServiceDisconnected() {
                }

                @Override // com.android.billingclient.api.BillingClientStateListener
                public void onBillingSetupFinished(@NotNull BillingResult p0) {
                    Intrinsics.checkNotNullParameter(p0, "p0");
                    if (p0.getResponseCode() == 0) {
                        GoogleGetProductInfoByProductIdAction.this.m34312s(subject, productIdList);
                    } else {
                        RxjavaKt.done(subject, new ArrayList());
                    }
                }
            });
        }
    }
}
