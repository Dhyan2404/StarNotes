package com.onyx.android.sdk.pay.google;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import androidx.appcompat.widget.ActivityChooserModel;
import com.android.billingclient.api.BillingClient;
import com.android.billingclient.api.BillingResult;
import com.android.billingclient.api.Purchase;
import com.android.billingclient.api.PurchasesUpdatedListener;
import com.onyx.android.sdk.base.p018rx.RxBaseAction;
import com.onyx.android.sdk.data.account.bean.DataResponse;
import com.onyx.android.sdk.pay.BasePayment;
import com.onyx.android.sdk.pay.action.BasePayAction;
import com.onyx.android.sdk.pay.bean.OrderBean;
import com.onyx.android.sdk.pay.bean.PayBean;
import com.onyx.android.sdk.pay.bean.ProductInfoBean;
import com.onyx.android.sdk.pay.data.PayType;
import com.onyx.android.sdk.pay.google.action.GoogleCheckAndConsumePurchaseAction;
import com.onyx.android.sdk.pay.google.action.GoogleGetProductInfoByProductIdAction;
import com.onyx.android.sdk.pay.google.action.GooglePaymentReadyAction;
import com.onyx.android.sdk.pay.google.p032ui.GoogleConsumptionPayActivity;
import io.reactivex.rxjava3.core.Observable;
import io.reactivex.rxjava3.functions.Consumer;
import io.reactivex.rxjava3.functions.Function;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000X\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\u0018\u00002\u00020\u0001B\u0005¢\u0006\u0002\u0010\u0002J\u0010\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u0006H\u0016J*\u0010\u0007\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\n0\t0\b2\u0006\u0010\u0005\u001a\u00020\u00062\f\u0010\u000b\u001a\b\u0012\u0004\u0012\u00020\n0\tH\u0016J*\u0010\f\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u000f0\u000e0\r2\u0006\u0010\u0010\u001a\u00020\u00112\f\u0010\u0012\u001a\b\u0012\u0004\u0012\u00020\u00130\u000eH\u0016J(\u0010\u0014\u001a\u00020\u00042\u0006\u0010\u0015\u001a\u00020\u00112\u0006\u0010\u0016\u001a\u00020\u00172\u0006\u0010\u0018\u001a\u00020\u00132\u0006\u0010\u0019\u001a\u00020\u001aH\u0016J\b\u0010\u001b\u001a\u00020\u001cH\u0016¨\u0006\u001d"}, m61528d2 = {"Lcom/onyx/android/sdk/pay/google/GooglePayment;", "Lcom/onyx/android/sdk/pay/BasePayment;", "()V", "checkIAPOrder", "", ActivityChooserModel.f1429r, "Landroid/app/Activity;", "checkPaymentReady", "Lio/reactivex/rxjava3/core/Observable;", "Lcom/onyx/android/sdk/data/account/bean/DataResponse;", "Lcom/onyx/android/sdk/pay/bean/OrderBean;", "data", "getProductInfoByProductIdAction", "Lcom/onyx/android/sdk/pay/action/BasePayAction;", "", "Lcom/onyx/android/sdk/pay/bean/ProductInfoBean;", "context", "Landroid/content/Context;", "productIdList", "", "gotoPayActivity", "activityContext", "payType", "Lcom/onyx/android/sdk/pay/data/PayType;", "orderId", "payBean", "Lcom/onyx/android/sdk/pay/bean/PayBean;", "isPaymentInstalled", "", "sdk-pay_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
/* loaded from: classes8.dex */
public final class GooglePayment extends BasePayment {

    /* renamed from: com.onyx.android.sdk.pay.google.GooglePayment$a */
    /* loaded from: classes8.dex */
    public static final class C7527a<T, R> implements Function {

        /* renamed from: e */
        public static final C7527a<T, R> f44142e = new C7527a<>();

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final Boolean apply(@NotNull Throwable it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return Boolean.FALSE;
        }
    }

    /* renamed from: com.onyx.android.sdk.pay.google.GooglePayment$b */
    /* loaded from: classes8.dex */
    public static final class C7528b<T> implements Consumer {

        /* renamed from: e */
        public final /* synthetic */ OrderBean f44143e;

        public C7528b(OrderBean orderBean) {
            this.f44143e = orderBean;
        }

        /* renamed from: a */
        public final void m34262a(boolean z) {
            this.f44143e.setHuaweiIapPayEnabled(Boolean.valueOf(z));
        }

        @Override // io.reactivex.rxjava3.functions.Consumer
        public /* bridge */ /* synthetic */ void accept(Object obj) {
            m34262a(((Boolean) obj).booleanValue());
        }
    }

    /* renamed from: com.onyx.android.sdk.pay.google.GooglePayment$c */
    /* loaded from: classes8.dex */
    public static final class C7529c<T, R> implements Function {

        /* renamed from: e */
        public final /* synthetic */ DataResponse<OrderBean> f44144e;

        public C7529c(DataResponse<OrderBean> dataResponse) {
            this.f44144e = dataResponse;
        }

        @NotNull
        /* renamed from: a */
        public final DataResponse<OrderBean> m34263a(boolean z) {
            return this.f44144e;
        }

        @Override // io.reactivex.rxjava3.functions.Function
        public /* bridge */ /* synthetic */ Object apply(Object obj) {
            return m34263a(((Boolean) obj).booleanValue());
        }
    }

    @Override // com.onyx.android.sdk.pay.BasePayment, com.onyx.android.sdk.pay.interfaces.IPaymentIAP
    public void checkIAPOrder(@NotNull Activity activity) {
        Intrinsics.checkNotNullParameter(activity, "activity");
        RxBaseAction.execute$default(new GoogleCheckAndConsumePurchaseAction(activity), null, null, null, 7, null);
    }

    @Override // com.onyx.android.sdk.pay.BasePayment, com.onyx.android.sdk.pay.interfaces.IPaymentIAP
    @NotNull
    public Observable<DataResponse<OrderBean>> checkPaymentReady(@NotNull Activity activity, @NotNull DataResponse<OrderBean> data) {
        Intrinsics.checkNotNullParameter(activity, "activity");
        Intrinsics.checkNotNullParameter(data, "data");
        OrderBean data2 = data.getData();
        if (data2 == null) {
            Observable<DataResponse<OrderBean>> just = Observable.just(data);
            Intrinsics.checkNotNullExpressionValue(just, "just(...)");
            return just;
        }
        BillingClient build = BillingClient.newBuilder(activity).enablePendingPurchases().setListener(new PurchasesUpdatedListener() { // from class: com.onyx.android.sdk.pay.google.GooglePayment$checkPaymentReady$billingClient$1
            @Override // com.android.billingclient.api.PurchasesUpdatedListener
            public void onPurchasesUpdated(@NotNull BillingResult p0, @Nullable List<Purchase> p1) {
                Intrinsics.checkNotNullParameter(p0, "p0");
            }
        }).build();
        Intrinsics.checkNotNullExpressionValue(build, "build(...)");
        Observable map = new GooglePaymentReadyAction(build).setActivity(activity).build().onErrorReturn(C7527a.f44142e).doOnNext(new C7528b(data2)).map(new C7529c(data));
        Intrinsics.checkNotNullExpressionValue(map, "map(...)");
        return map;
    }

    @Override // com.onyx.android.sdk.pay.BasePayment, com.onyx.android.sdk.pay.interfaces.IPaymentIAP
    @NotNull
    public BasePayAction<List<ProductInfoBean>> getProductInfoByProductIdAction(@NotNull Context context, @NotNull List<String> productIdList) {
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(productIdList, "productIdList");
        return new GoogleGetProductInfoByProductIdAction(context, productIdList);
    }

    @Override // com.onyx.android.sdk.pay.BasePayment, com.onyx.android.sdk.pay.interfaces.IPaymentIAP
    public void gotoPayActivity(@NotNull Context activityContext, @NotNull PayType payType, @NotNull String orderId, @NotNull PayBean payBean) {
        Intrinsics.checkNotNullParameter(activityContext, "activityContext");
        Intrinsics.checkNotNullParameter(payType, "payType");
        Intrinsics.checkNotNullParameter(orderId, "orderId");
        Intrinsics.checkNotNullParameter(payBean, "payBean");
        Intent intent = new Intent(activityContext, (Class<?>) GoogleConsumptionPayActivity.class);
        intent.putExtra(GoogleConsumptionPayActivity.KEY_PAYMENT_PRODUCT_ID, payBean.getProductId());
        intent.putExtra(GoogleConsumptionPayActivity.KEY_PAYMENT_PRODUCT_TYPE, payBean.getProductType());
        intent.putExtra(GoogleConsumptionPayActivity.KEY_PAYMENT_ORDER_ID, orderId);
        intent.putExtra(GoogleConsumptionPayActivity.KEY_PAYMENT_OUT_TRADE_NO, payBean.getOutTradeNo());
        activityContext.startActivity(intent);
    }

    @Override // com.onyx.android.sdk.pay.BasePayment, com.onyx.android.sdk.pay.interfaces.IPaymentThirdParty
    public boolean isPaymentInstalled() {
        return true;
    }
}
