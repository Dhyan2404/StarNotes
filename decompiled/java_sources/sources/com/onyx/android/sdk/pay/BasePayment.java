package com.onyx.android.sdk.pay;

import android.app.Activity;
import android.content.Context;
import androidx.appcompat.widget.ActivityChooserModel;
import com.onyx.android.sdk.data.account.bean.DataResponse;
import com.onyx.android.sdk.pay.action.BasePayAction;
import com.onyx.android.sdk.pay.bean.OrderBean;
import com.onyx.android.sdk.pay.bean.PayBean;
import com.onyx.android.sdk.pay.bean.ProductInfoBean;
import com.onyx.android.sdk.pay.constants.Constants;
import com.onyx.android.sdk.pay.data.PayResult;
import com.onyx.android.sdk.pay.data.PayType;
import com.onyx.android.sdk.pay.interfaces.IPaymentIAP;
import com.onyx.android.sdk.pay.interfaces.IPaymentThirdParty;
import com.onyx.android.sdk.pay.interfaces.IWXApiProxy;
import io.reactivex.rxjava3.core.Observable;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000v\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u0002\b\u0016\u0018\u00002\u00020\u00012\u00020\u0002B\u0005¢\u0006\u0002\u0010\u0003J\u0010\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u0007H\u0016J*\u0010\b\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u000b0\n0\t2\u0006\u0010\u0006\u001a\u00020\u00072\f\u0010\f\u001a\b\u0012\u0004\u0012\u00020\u000b0\nH\u0016J\u0018\u0010\r\u001a\n\u0012\u0004\u0012\u00020\u000f\u0018\u00010\u000e2\u0006\u0010\u0010\u001a\u00020\u0011H\u0016J,\u0010\u0012\u001a\u0010\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00140\u0013\u0018\u00010\u000e2\u0006\u0010\u0015\u001a\u00020\u00162\f\u0010\u0017\u001a\b\u0012\u0004\u0012\u00020\u00110\u0013H\u0016J\n\u0010\u0018\u001a\u0004\u0018\u00010\u0019H\u0016J(\u0010\u001a\u001a\u00020\u00052\u0006\u0010\u001b\u001a\u00020\u00162\u0006\u0010\u001c\u001a\u00020\u001d2\u0006\u0010\u001e\u001a\u00020\u00112\u0006\u0010\u001f\u001a\u00020 H\u0016J*\u0010!\u001a\u00020\u00052\b\u0010\u001b\u001a\u0004\u0018\u00010\u00162\u0006\u0010\"\u001a\u00020\u00112\u0006\u0010#\u001a\u00020$2\u0006\u0010%\u001a\u00020$H\u0016J\b\u0010&\u001a\u00020'H\u0016J\u0010\u0010(\u001a\u00020\u00052\u0006\u0010\u001f\u001a\u00020 H\u0016¨\u0006)"}, m61528d2 = {"Lcom/onyx/android/sdk/pay/BasePayment;", "Lcom/onyx/android/sdk/pay/interfaces/IPaymentIAP;", "Lcom/onyx/android/sdk/pay/interfaces/IPaymentThirdParty;", "()V", "checkIAPOrder", "", ActivityChooserModel.f1429r, "Landroid/app/Activity;", "checkPaymentReady", "Lio/reactivex/rxjava3/core/Observable;", "Lcom/onyx/android/sdk/data/account/bean/DataResponse;", "Lcom/onyx/android/sdk/pay/bean/OrderBean;", "data", "getAliPayAction", "Lcom/onyx/android/sdk/pay/action/BasePayAction;", "Lcom/onyx/android/sdk/pay/data/PayResult;", "orderStr", "", "getProductInfoByProductIdAction", "", "Lcom/onyx/android/sdk/pay/bean/ProductInfoBean;", "context", "Landroid/content/Context;", "productIdList", "getWxApiProxy", "Lcom/onyx/android/sdk/pay/interfaces/IWXApiProxy;", "gotoPayActivity", "activityContext", "payType", "Lcom/onyx/android/sdk/pay/data/PayType;", "orderId", "payBean", "Lcom/onyx/android/sdk/pay/bean/PayBean;", "gotoThemePaymentActivity", Constants.KEY_GOOGLE_PRODUCT_ID, "type", "", "themeType", "isPaymentInstalled", "", "onWechatPay", "sdk-pay_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
/* loaded from: classes8.dex */
public class BasePayment implements IPaymentIAP, IPaymentThirdParty {
    @Override // com.onyx.android.sdk.pay.interfaces.IPaymentIAP
    public void checkIAPOrder(@NotNull Activity activity) {
        Intrinsics.checkNotNullParameter(activity, "activity");
    }

    @Override // com.onyx.android.sdk.pay.interfaces.IPaymentIAP
    @NotNull
    public Observable<DataResponse<OrderBean>> checkPaymentReady(@NotNull Activity activity, @NotNull DataResponse<OrderBean> data) {
        Intrinsics.checkNotNullParameter(activity, "activity");
        Intrinsics.checkNotNullParameter(data, "data");
        Observable<DataResponse<OrderBean>> just = Observable.just(data);
        Intrinsics.checkNotNullExpressionValue(just, "just(...)");
        return just;
    }

    @Override // com.onyx.android.sdk.pay.interfaces.IPaymentThirdParty
    @Nullable
    public BasePayAction<PayResult> getAliPayAction(@NotNull String orderStr) {
        Intrinsics.checkNotNullParameter(orderStr, "orderStr");
        return null;
    }

    @Override // com.onyx.android.sdk.pay.interfaces.IPaymentIAP
    @Nullable
    public BasePayAction<List<ProductInfoBean>> getProductInfoByProductIdAction(@NotNull Context context, @NotNull List<String> productIdList) {
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(productIdList, "productIdList");
        return null;
    }

    @Override // com.onyx.android.sdk.pay.interfaces.IPaymentThirdParty
    @Nullable
    public IWXApiProxy getWxApiProxy() {
        return null;
    }

    @Override // com.onyx.android.sdk.pay.interfaces.IPaymentIAP
    public void gotoPayActivity(@NotNull Context activityContext, @NotNull PayType payType, @NotNull String orderId, @NotNull PayBean payBean) {
        Intrinsics.checkNotNullParameter(activityContext, "activityContext");
        Intrinsics.checkNotNullParameter(payType, "payType");
        Intrinsics.checkNotNullParameter(orderId, "orderId");
        Intrinsics.checkNotNullParameter(payBean, "payBean");
    }

    @Override // com.onyx.android.sdk.pay.interfaces.IPaymentIAP
    public void gotoThemePaymentActivity(@Nullable Context activityContext, @NotNull String productId, int type, int themeType) {
        Intrinsics.checkNotNullParameter(productId, "productId");
    }

    @Override // com.onyx.android.sdk.pay.interfaces.IPaymentThirdParty
    public boolean isPaymentInstalled() {
        return false;
    }

    @Override // com.onyx.android.sdk.pay.interfaces.IPaymentThirdParty
    public void onWechatPay(@NotNull PayBean payBean) {
        Intrinsics.checkNotNullParameter(payBean, "payBean");
    }
}
