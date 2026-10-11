package com.onyx.android.sdk.pay.bean;

import com.sun.org.apache.xalan.internal.xsltc.compiler.Constants;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0002\b\u000e\u0018\u00002\u00020\u0001B\u0017\u0012\u0006\u0010\t\u001a\u00020\u0002\u0012\u0006\u0010\r\u001a\u00020\u0002¢\u0006\u0004\b\u000e\u0010\u000fR\"\u0010\t\u001a\u00020\u00028\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u0003\u0010\u0004\u001a\u0004\b\u0005\u0010\u0006\"\u0004\b\u0007\u0010\bR\"\u0010\r\u001a\u00020\u00028\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\n\u0010\u0004\u001a\u0004\b\u000b\u0010\u0006\"\u0004\b\f\u0010\b¨\u0006\u0010"}, m61528d2 = {"Lcom/onyx/android/sdk/pay/bean/HuaweiOrderArgs;", "", "", "a", Constants.STRING_SIG, "getOrderNo", "()Ljava/lang/String;", "setOrderNo", "(Ljava/lang/String;)V", "orderNo", "b", "getOutTradeNo", "setOutTradeNo", "outTradeNo", com.sun.org.apache.bcel.internal.Constants.CONSTRUCTOR_NAME, "(Ljava/lang/String;Ljava/lang/String;)V", "sdk-pay_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes8.dex */
public final class HuaweiOrderArgs {

    /* renamed from: a, reason: from kotlin metadata */
    @NotNull
    public String orderNo;

    /* renamed from: b, reason: from kotlin metadata */
    @NotNull
    public String outTradeNo;

    public HuaweiOrderArgs(@NotNull String orderNo, @NotNull String outTradeNo) {
        Intrinsics.checkNotNullParameter(orderNo, "orderNo");
        Intrinsics.checkNotNullParameter(outTradeNo, "outTradeNo");
        this.orderNo = orderNo;
        this.outTradeNo = outTradeNo;
    }

    @NotNull
    public final String getOrderNo() {
        return this.orderNo;
    }

    @NotNull
    public final String getOutTradeNo() {
        return this.outTradeNo;
    }

    public final void setOrderNo(@NotNull String str) {
        Intrinsics.checkNotNullParameter(str, "<set-?>");
        this.orderNo = str;
    }

    public final void setOutTradeNo(@NotNull String str) {
        Intrinsics.checkNotNullParameter(str, "<set-?>");
        this.outTradeNo = str;
    }
}
