package com.onyx.android.sdk.pay.interfaces;

import android.app.Activity;
import android.content.Context;
import androidx.appcompat.widget.ActivityChooserModel;
import com.onyx.android.sdk.data.account.bean.DataResponse;
import com.onyx.android.sdk.pay.action.BasePayAction;
import com.onyx.android.sdk.pay.bean.OrderBean;
import com.onyx.android.sdk.pay.bean.PayBean;
import com.onyx.android.sdk.pay.bean.ProductInfoBean;
import com.onyx.android.sdk.pay.constants.Constants;
import com.onyx.android.sdk.pay.data.PayType;
import io.reactivex.rxjava3.core.Observable;
import java.util.List;
import kotlin.Metadata;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000Z\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\b\n\u0002\b\u0002\bf\u0018\u00002\u00020\u0001J\u0010\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H&J*\u0010\u0006\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\t0\b0\u00072\u0006\u0010\u0004\u001a\u00020\u00052\f\u0010\n\u001a\b\u0012\u0004\u0012\u00020\t0\bH&J,\u0010\u000b\u001a\u0010\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u000e0\r\u0018\u00010\f2\u0006\u0010\u000f\u001a\u00020\u00102\f\u0010\u0011\u001a\b\u0012\u0004\u0012\u00020\u00120\rH&J(\u0010\u0013\u001a\u00020\u00032\u0006\u0010\u0014\u001a\u00020\u00102\u0006\u0010\u0015\u001a\u00020\u00162\u0006\u0010\u0017\u001a\u00020\u00122\u0006\u0010\u0018\u001a\u00020\u0019H&J,\u0010\u001a\u001a\u00020\u00032\b\u0010\u0014\u001a\u0004\u0018\u00010\u00102\u0006\u0010\u001b\u001a\u00020\u00122\b\b\u0002\u0010\u001c\u001a\u00020\u001d2\u0006\u0010\u001e\u001a\u00020\u001dH&¨\u0006\u001f"}, m61528d2 = {"Lcom/onyx/android/sdk/pay/interfaces/IPaymentIAP;", "Lcom/onyx/android/sdk/pay/interfaces/IPayment;", "checkIAPOrder", "", ActivityChooserModel.f1429r, "Landroid/app/Activity;", "checkPaymentReady", "Lio/reactivex/rxjava3/core/Observable;", "Lcom/onyx/android/sdk/data/account/bean/DataResponse;", "Lcom/onyx/android/sdk/pay/bean/OrderBean;", "data", "getProductInfoByProductIdAction", "Lcom/onyx/android/sdk/pay/action/BasePayAction;", "", "Lcom/onyx/android/sdk/pay/bean/ProductInfoBean;", "context", "Landroid/content/Context;", "productIdList", "", "gotoPayActivity", "activityContext", "payType", "Lcom/onyx/android/sdk/pay/data/PayType;", "orderId", "payBean", "Lcom/onyx/android/sdk/pay/bean/PayBean;", "gotoThemePaymentActivity", Constants.KEY_GOOGLE_PRODUCT_ID, "type", "", "themeType", "sdk-pay_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
/* loaded from: classes8.dex */
public interface IPaymentIAP extends IPayment {

    @Metadata(m61529k = 3, m61530mv = {1, 9, 0}, m61532xi = 48)
    /* loaded from: classes8.dex */
    public static final class DefaultImpls {
        public static /* synthetic */ void gotoThemePaymentActivity$default(IPaymentIAP iPaymentIAP, Context context, String str, int i, int i2, int i3, Object obj) {
            if (obj != null) {
                throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: gotoThemePaymentActivity");
            }
            if ((i3 & 4) != 0) {
                i = -1;
            }
            iPaymentIAP.gotoThemePaymentActivity(context, str, i, i2);
        }
    }

    void checkIAPOrder(@NotNull Activity activity);

    @NotNull
    Observable<DataResponse<OrderBean>> checkPaymentReady(@NotNull Activity activity, @NotNull DataResponse<OrderBean> data);

    @Nullable
    BasePayAction<List<ProductInfoBean>> getProductInfoByProductIdAction(@NotNull Context context, @NotNull List<String> productIdList);

    void gotoPayActivity(@NotNull Context activityContext, @NotNull PayType payType, @NotNull String orderId, @NotNull PayBean payBean);

    void gotoThemePaymentActivity(@Nullable Context activityContext, @NotNull String productId, int type, int themeType);
}
