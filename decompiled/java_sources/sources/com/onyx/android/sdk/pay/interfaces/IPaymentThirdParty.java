package com.onyx.android.sdk.pay.interfaces;

import com.onyx.android.sdk.pay.action.BasePayAction;
import com.onyx.android.sdk.pay.bean.PayBean;
import com.onyx.android.sdk.pay.data.PayResult;
import kotlin.Metadata;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u00002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\bf\u0018\u00002\u00020\u0001J\u0018\u0010\u0002\u001a\n\u0012\u0004\u0012\u00020\u0004\u0018\u00010\u00032\u0006\u0010\u0005\u001a\u00020\u0006H&J\n\u0010\u0007\u001a\u0004\u0018\u00010\bH&J\b\u0010\t\u001a\u00020\nH&J\u0010\u0010\u000b\u001a\u00020\f2\u0006\u0010\r\u001a\u00020\u000eH&¨\u0006\u000f"}, m61528d2 = {"Lcom/onyx/android/sdk/pay/interfaces/IPaymentThirdParty;", "Lcom/onyx/android/sdk/pay/interfaces/IPayment;", "getAliPayAction", "Lcom/onyx/android/sdk/pay/action/BasePayAction;", "Lcom/onyx/android/sdk/pay/data/PayResult;", "orderStr", "", "getWxApiProxy", "Lcom/onyx/android/sdk/pay/interfaces/IWXApiProxy;", "isPaymentInstalled", "", "onWechatPay", "", "payBean", "Lcom/onyx/android/sdk/pay/bean/PayBean;", "sdk-pay_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
/* loaded from: classes8.dex */
public interface IPaymentThirdParty extends IPayment {
    @Nullable
    BasePayAction<PayResult> getAliPayAction(@NotNull String orderStr);

    @Nullable
    IWXApiProxy getWxApiProxy();

    boolean isPaymentInstalled();

    void onWechatPay(@NotNull PayBean payBean);
}
