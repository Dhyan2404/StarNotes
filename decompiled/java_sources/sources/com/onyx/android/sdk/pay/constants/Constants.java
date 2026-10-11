package com.onyx.android.sdk.pay.constants;

import kotlin.Metadata;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\b\n\u0002\b\u0011\bÆ\u0002\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002R\u000e\u0010\u0003\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0006X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\b\u001a\u00020\u0006X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\t\u001a\u00020\u0006X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\n\u001a\u00020\u0006X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u000b\u001a\u00020\u0006X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\f\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\r\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u000e\u001a\u00020\u0006X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u000f\u001a\u00020\u0006X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u0010\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u0011\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u0012\u001a\u00020\u0006X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u0013\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u0014\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u0015\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u0016\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000¨\u0006\u0017"}, m61528d2 = {"Lcom/onyx/android/sdk/pay/constants/Constants;", "", "()V", "ALIPAY_PACKAGE", "", "ERROR_CODE_GOOGLE_DUPLICATE_PAYMENT", "", "KEY_GOOGLE_PRODUCT_ID", "ORDER_STATUS_CANCEL", "ORDER_STATUS_COMPLETE", "ORDER_STATUS_PAID", "ORDER_STATUS_UNPAID", "PAY_ATTACH_APP", "PAY_ATTACH_NATIVE", "PAY_CANCEL", "PAY_FAILED", "PAY_GOOGLE", "PAY_HUAWEI_IAP", "PAY_SUCCESS", "PAY_TYPE_ALIPAY", "PAY_TYPE_CRYPTO", "PAY_TYPE_UNIONPAY", "PAY_TYPE_WECHAT", "sdk-pay_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
/* loaded from: classes8.dex */
public final class Constants {

    @NotNull
    public static final String ALIPAY_PACKAGE = "com.eg.android.AlipayGphone";
    public static final int ERROR_CODE_GOOGLE_DUPLICATE_PAYMENT = 106006;

    @NotNull
    public static final Constants INSTANCE = new Constants();

    @NotNull
    public static final String KEY_GOOGLE_PRODUCT_ID = "productId";
    public static final int ORDER_STATUS_CANCEL = 3;
    public static final int ORDER_STATUS_COMPLETE = 2;
    public static final int ORDER_STATUS_PAID = 1;
    public static final int ORDER_STATUS_UNPAID = 0;

    @NotNull
    public static final String PAY_ATTACH_APP = "app";

    @NotNull
    public static final String PAY_ATTACH_NATIVE = "native";
    public static final int PAY_CANCEL = 1;
    public static final int PAY_FAILED = 2;

    @NotNull
    public static final String PAY_GOOGLE = "GOOGLE_IAP";

    @NotNull
    public static final String PAY_HUAWEI_IAP = "HUAWEI_IAP";
    public static final int PAY_SUCCESS = 0;

    @NotNull
    public static final String PAY_TYPE_ALIPAY = "ALIPAY";

    @NotNull
    public static final String PAY_TYPE_CRYPTO = "CRYPTO";

    @NotNull
    public static final String PAY_TYPE_UNIONPAY = "UNIONPAY";

    @NotNull
    public static final String PAY_TYPE_WECHAT = "WECHAT";
}
